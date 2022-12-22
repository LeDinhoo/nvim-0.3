 require('nvim-cursorline').setup {
  cursorline = {
    enable = true,
    timeout = 100000000000000000000000000000000000000000000000,
    number = false,
  },
  cursorword = {
    enable = true,
    min_length = 3,
    hl = { underline = true },
  }
}

