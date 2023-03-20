-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true


function on_attach(bufnr)
    local api = require("nvim-tree.api")

    api.config.mappings.default_on_attach(bufnr)

    vim.keymap.set('n', 't', api.node.open.tab)
    vim.keymap.set('n', '<CR>', api.node.open.edit)
end

require("nvim-tree").setup({
    -- on_attach = on_attach,
    on_attach = on_attach,
    auto_reload_on_write = true,
    open_on_tab = true,
    sort_by = "case_sensitive",
    renderer = {
        group_empty = true,
    },
    update_focused_file = {
        enable = true,
    },
    filters = {
        dotfiles = false,
    },
    actions = {
        open_file = {
            quit_on_open = true,
            resize_window = true,
        },
    }
})

vim.keymap.set("n", "<C-n>", vim.cmd.NvimTreeToggle)
