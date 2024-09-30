-- BEGIN ANSIBLE MANAGED BLOCK
local nnoremap = require("custom.keymap").nnoremap
local inoremap = require("custom.keymap").inoremap
local xnoremap = require("custom.keymap").xnoremap
local vnoremap = require("custom.keymap").vnoremap

vim.g.mapleader = " "
nnoremap("<leader>e", "<cmd>Ex<CR>")
nnoremap("<leader>;", ":")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
nnoremap("<leader>1", "0")
nnoremap("<leader>0", "$")
nnoremap("<leader>5", "gM")
nnoremap("<leader>6", "gM")
-- Normal --
-- Better window navigation
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")
inoremap("jk", "<Esc>")
inoremap("kj", "<Esc>")
inoremap("kl", "<Esc>")
-- greatest remap ever @thePrimeagen
vim.keymap.set("x", "<leader>p", [["_dP]])
-- window resizing
-- 9-18-2023
vim.keymap.set("n", "=", [[<cmd>horizontal resize +5<cr>]]) -- make the window biger vertically
vim.keymap.set("n", "-", [[<cmd>horizontal resize -5<cr>]]) -- make the window smaller vertically
vim.keymap.set("n", "+", [[<cmd>vertical resize +2<cr>]])   -- make the window bigger horizontally by pressing shift and =
vim.keymap.set("n", "_", [[<cmd>vertical resize -2<cr>]])   -- make the window smaller horizontally by pressing shift and -
local api = vim.api
-- Highlight on yank
local yankGrp = api.nvim_create_augroup("YankHighlight", { clear = true })
api.nvim_create_autocmd("TextYankPost", {
  command = "silent! lua vim.highlight.on_yank()",
  group = yankGrp,
})
-- vim.api.nvim_create_autocmd('filetype', {
--   pattern = 'netrw',
--   desc = 'Better mappings for netrw',
--   callback = function()
--     local bind = function(lhs, rhs)
--       vim.keymap.set('n', lhs, rhs, { remap = true, buffer = true })
--     end
--     -- shift focus in netrw
--     bind('<C-h>', '<C-w>h')
--     bind('<C-j>', '<C-w>j')
--     bind('<C-k>', '<C-w>k')
--     bind('<C-l>', '<C-w>l')
--     -- edit new file
--     bind('n', '%')
--     -- rename file
--     bind('r', 'R')
--   end
-- })

-- testing ColorHighlight remap
vim.keymap.set('n', '<leader>c', [[<Cmd>ColorHighlight<CR>]], opts)
vim.keymap.set('n', '<leader>cl', [[<Cmd>ColorClear<CR>]], opts)

-- END ANSIBLE MANAGED BLOCK
