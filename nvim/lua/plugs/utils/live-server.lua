return {
  "ngtuonghy/live-server-nvim",
  event = "VeryLazy",
  build = ":LiveServerInstall",
  config = function()
    require("live-server-nvim").setup({
      vim.keymap.set("n", "<leader>lt", function() require("live-server-nvim").toggle() end),

      custom = {
        "--port=8080",
        "--no-css-inject",
      },
      serverPath = vim.fn.stdpath("data") .. "/live-server/", --default
      open = "folder",                                        -- folder|cwd     --default
    })
  end,
}
