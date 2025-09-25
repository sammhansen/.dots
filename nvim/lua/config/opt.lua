-- Set to true if your terminal is using a nerd font
vim.g.have_nerd_font = true

vim.o.number = true
vim.o.relativenumber = true

-- Dont show the mode since its already in the status line
vim.o.showmode = false

-- -- Sync clipboard between OS and Neovim.
-- --  Schedule the setting after `UiEnter` because it can increase startup-time.
-- vim.schedule(function()
--   vim.o.clipboard = 'unnamedplus'
-- end)

-- Wrap long lines of code
vim.o.wrap = true
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching unless \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- -- Sets how neovim will display certain whitespace characters in the editor.
-- vim.o.list = true
-- vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.o.inccommand = "split"

-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
vim.o.confirm = true

-- Number of spaces the tab character represents
vim.opt.tabstop = 2

-- Conver tabs into spaces
vim.opt.expandtab = false

-- Number of spaces for auto-indentation
vim.opt.shiftwidth = 2

-- Required by bufferline
vim.o.termguicolors = true
