vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>rb", "<cmd>!cargo build<CR>")
vim.keymap.set("n", "<leader>rr", "<cmd>!cargo run<CR>")
vim.keymap.set("n", "<leader>rt", "<cmd>!cargo test<CR>")
vim.keymap.set("n", "<leader>rc", "<cmd>!cargo check<CR>")
vim.keymap.set("n", "<leader>rf", "<cmd>!cargo fmt<CR>")
vim.keymap.set("n", "<leader>rC", "<cmd>!cargo clippy<CR>")

vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.keymap.set("n", "]e", vim.diagnostic.goto_next)
vim.keymap.set("n", "[e", vim.diagnostic.goto_prev)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)
