local command = {}

command["python"] = "python"
command["javascript"] = "node"

function Run()
    local filetype = vim.bo.filetype
    if command["filetype"] == nil then
        print(filetype .. " runtime hasn't been set")
        return;
    end

    local path = vim.api.nvim_buf_get_name(0)
        vim.api.nvim_command(":!" .. command[filetype] .. " " .. path)
end

vim.keymap.set("n", "<leader>r", ":lua Run()<CR>")

