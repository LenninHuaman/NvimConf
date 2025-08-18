local capabilities = require 'custom.lsp-configs.capabilities'

-- Ruta al ngserver global (vía NVM)
local global_ngserver = '/home/drn-00x/.nvm/versions/node/v20.18.0/bin/ngserver'
local global_lib_path = '/home/drn-00x/.nvm/versions/node/v20.18.0/lib/node_modules'

-- Intenta usar la instalación local si existe
local local_ngserver = vim.fn.expand './node_modules/@angular/language-server/bin/ngserver'
local project_lib_path = vim.fn.expand './node_modules'

-- Usa el local si existe, de lo contrario el global
local ngserver_path = vim.fn.filereadable(local_ngserver) == 1 and local_ngserver or global_ngserver
local lib_path = vim.fn.filereadable(local_ngserver) == 1 and project_lib_path or global_lib_path

local cmd = {
  ngserver_path,
  '--stdio',
  '--tsProbeLocations',
  lib_path,
  '--ngProbeLocations',
  lib_path,
  '--includeCompletionsWithSnippetText',
}

return {
  angularls = {
    cmd = cmd,
    on_new_config = function(new_config, _)
      new_config.cmd = cmd
    end,
    root_dir = function(fname)
      return require('lspconfig.util').root_pattern('angular.json', 'angular.yaml', 'angular.yml', '.git')(fname)
    end,
  },
}
