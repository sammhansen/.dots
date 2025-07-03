local colors = require("conf.ui.colors")

local prompt_bg = colors.base
local prompt_accent = colors.pink
local results_bg = colors.base
local results_accent = colors.mauve
local preview_bg = colors.base
local preview_accent = colors.peach
local text = colors.crust
local prompt_text = colors.green

local normal_hl = vim.api.nvim_get_hl_by_name("Normal", true)

-- prompt section

vim.api.nvim_set_hl(0, "TelescopePromptBorder", {
  fg = prompt_bg,
  bg = prompt_bg,
})

vim.api.nvim_set_hl(0, "TelescopePromptNormal", {
  fg = prompt_text,
  bg = prompt_bg,
})

vim.api.nvim_set_hl(0, "TelescopePromptTitle", {
  fg = text,
  bg = prompt_accent,
})

vim.api.nvim_set_hl(0, "TelescopePromptCounter", {
  fg = prompt_accent,
  bg = prompt_bg,
})

vim.api.nvim_set_hl(0, "TelescopePromptPrefix", {
  fg = prompt_accent,
  bg = prompt_bg,
})

-- result section

vim.api.nvim_set_hl(0, "TelescopeResultsBorder", {
  fg = results_bg,
  bg = results_bg,
})

vim.api.nvim_set_hl(0, "TelescopeResultsNormal", {
  fg = normal_hl.foreground,
  bg = results_bg,
})

vim.api.nvim_set_hl(0, "TelescopeResultsTitle", {
  fg = text,
  bg = results_accent,
})

vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", {
  fg = results_accent,
  bg = results_bg, -- manually chosen fallback background
})

-- preview section

vim.api.nvim_set_hl(0, "TelescopePreviewBorder", {
  fg = preview_bg,
  bg = preview_bg,
})

vim.api.nvim_set_hl(0, "TelescopePreviewNormal", {
  fg = normal_hl.foreground,
  bg = preview_bg,
})

vim.api.nvim_set_hl(0, "TelescopePreviewTitle", {
  fg = text,
  bg = preview_accent,
})
