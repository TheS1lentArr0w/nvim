-- Setting leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Go to netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Moving lines while highlighted
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Takes line below and appends it to current line with a space
vim.keymap.set("n", "J", "mzJ`z")

-- Keeps cursor in middle of screen while doing half page down/up
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Keeps cursor in middle while searching through file
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Allows you to paste over current selection and keep previously yanked
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Allows yanking to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
-- Allows deleting to clipboard
vim.keymap.set({"n", "v"}, "<leader>d", "\"_d")

-- Gets rid of Shift+q
vim.keymap.set("n", "Q", "<nop>")

-- Highlights current word and allows to replace throughout entire file
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Turns current file executable to avoid going out and chmodding it manually
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
