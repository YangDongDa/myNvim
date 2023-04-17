vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- 配置tabline快捷键，主要以 t开头代表 t
-- 关闭当前标签页
vim.api.nvim_set_keymap("n", "tc", ":tabclose<cr>", {noremap = true, silent = true})
-- 关闭所有标签页，仅保留当前标签页
vim.api.nvim_set_keymap("n", "to", ":tabonly<cr>", {noremap = true, silent = true})
-- gt 切换到下一个，gT切换到上一个

vim.api.nvim_set_keymap("n", "<C-f>", "10jzz", {noremap = true, silent = true})--翻到下页
vim.api.nvim_set_keymap("n", "<C-b>", "10kzz", {noremap = true, silent = true})--翻到上页-- 其他有用的绑定
-- 使用 <C-u> 将光标所在单词转化为全大写
vim.api.nvim_set_keymap("i", "<C-u>", "<esc>viwUwa", {noremap = true, silent = true})
-- 使用 <C-l> 将光标所在单词转化为全小写
vim.api.nvim_set_keymap("i", "<C-l>", "<esc>viwuwa", {noremap = true, silent = true})
-- dw删除当前光标所在单词
vim.api.nvim_set_keymap("n", "dw", "diw", {noremap = true, silent = true})


-- 多窗口的打开与关闭
vim.api.nvim_set_keymap("n", "sv", ":vsp<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "sh", ":sp<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "sc", ":close<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "so", ":only<CR>", {noremap = true, silent = true})
-- 多窗口跳转
vim.api.nvim_set_keymap("n", "<leader>h", "<C-w>h", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>l", "<C-w>l", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>j", "<C-w>j", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>k", "<C-w>k", {noremap = true, silent = true})
-- bufferline
vim.api.nvim_set_keymap("n", "<leader>z", ":BufferLineCycleNext<CR>",{noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>x", ":BufferLinePick<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>xx", ":BufferLinePickClose<CR>", {noremap = true, silent = true})
-- NvimTree
vim.api.nvim_set_keymap("n", "<leader>3", ":NvimTreeToggle<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>4", ":NvimTreeClose<CR>", {noremap = true, silent = true})
--快速调出init.lua
vim.api.nvim_set_keymap("n","<leader>ee",":vs $MYVIMRC<CR>",{silent = true,noremap = true})
--终端命令
vim.api.nvim_set_keymap("n", "<C-s>", ":ToggleTerm<CR>", {noremap = true, silent = true}) --创建终端
vim.api.nvim_set_keymap("t", "<ESC>", "<C-\\><C-n>", {noremap = true, silent = true}) --推出终端模式
--调试命令
vim.keymap.set({"i", "n", "v"}, "<F5>", "<cmd>lua require'dap'.continue()<CR>", {silent = true, noremap = true, buffer = bufnr})
vim.keymap.set({"i", "n", "v"}, "<F10>", "<cmd>lua require'dap'.step_over()<CR>", {silent = true, noremap = true, buffer = bufnr})
vim.keymap.set({"i", "n", "v"}, "<F11>", "<cmd>lua require'dap'.step_into()<CR>", {silent = true, noremap = true, buffer = bufnr})
vim.keymap.set({"i", "n", "v"}, "<F12>", "<cmd>lua require'dap'.step_over()<CR>", {silent = true, noremap = true, buffer = bufnr})
vim.keymap.set({"i", "n", "v"}, "<F9>", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", {silent = true, noremap = true, buffer = bufnr})
-- vim.api.nvim_set_keymap("t", "<A-s>", "<C-\\><C-n>:bdelete! %<CR>", {noremap = true, silent = true}) --退出并删除终端
--
local lsp_keybinds = {}
lsp_keybinds.set_keymap = function (bufnr)
    -- 跳转到声明
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.declaration()<CR>", {silent = true, noremap = true})
    -- 跳转到定义
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.definition()<CR>", {silent = true, noremap = true})
    -- 显示注释文档
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", {silent = true, noremap = true})
    -- 跳转到实现
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", {silent = true, noremap = true})
    -- 跳转到引用位置
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", {silent = true, noremap = true})
    -- 以浮窗形式显示错误
    vim.api.nvim_buf_set_keymap(bufnr, "n", "go", "<cmd>lua vim.diagnostic.open_float()<CR>", {silent = true, noremap = true})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", {silent = true, noremap = true})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gn", "<cmd>lua vim.diagnostic.goto_next()<CR>", {silent = true, noremap = true})
end
return lsp_keybinds
