vim.g.mapleader = " "

-- vim.keymap.set("n", "<C-n>", vim.cmd.Ex)
vim.keymap.set("n", "<leader>h", vim.cmd.nohlsearch)

vim.keymap.set("n", "J", "mzJ`z")

-- paste without yanking
vim.keymap.set("x", "<leader>p", "\"_dP" )

-- yank to clipboard
vim.keymap.set("n", "<leader>y", "\"+y" )
vim.keymap.set("v", "<leader>y", "\"+y" )
vim.keymap.set("n", "<leader>Y", "\"+Y" )

-- quick fix list
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- replace words
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- modify permission +x
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- window
vim.keymap.set("n", "s", "<C-w>")

-- tab
vim.keymap.set("n", "<leader>e", vim.cmd.tabnew)
vim.keymap.set("n", "<Tab>", vim.cmd.tabnext)
vim.keymap.set("n", "<S-Tab>", vim.cmd.tabprevious)
vim.keymap.set("n", "<C-w>", vim.cmd.tabclose)
vim.keymap.set("n", "<M-1>", vim.cmd.tabfirst)
vim.keymap.set("n", "<M-9>", vim.cmd.tablast)

-- sourcing
vim.keymap.set("n", "<leader><leader>", ":so<CR>")


