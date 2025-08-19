return {
  'lmantw/themify.nvim',
  lazy = false,
  priority = 999,
  config = function()
    require('themify').setup {
      'folke/tokyonight.nvim',
      'sho-87/kanagawa-paper.nvim',
      {
        'navarasu/onedark.nvim',
        before = function()
          require('onedark').setup {
            style = 'darker',
            term_colors = false,
          }
        end,
      },
      'loctvl842/monokai-pro.nvim',
      'comfysage/evergarden',
      'default',
    }
  end,
}
