return {
  'zbirenbaum/copilot.lua',
  enabled = true,
  cmd = 'Copilot',
  event = 'InsertEnter',
  opts = {
    suggestion = {
      enabled = false,
      auto_trigger = false,
      hide_during_completion = true,
      debounce = 75,
      keymap = {
        accept = '<S-Tab>',
        accept_word = false,
        accept_line = false,
        next = '<M-]>',
        prev = '<M-[>',
        dismiss = '<C-]>',
      },
    },
  },
}
