return {
  "oncomouse/lushwal.nvim",
  config = function()
    vim.g.lushwal_configuration = {
      transparent_background = true,
    }

    vim.cmd("colorscheme lushwal")
  end,
  cmd = { "LushwalCompile" },
  dependencies = {
    { "rktjmp/lush.nvim" },
    { "rktjmp/shipwright.nvim" },
  },
  lazy = false,
  priority = 1000,
}
