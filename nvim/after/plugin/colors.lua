local colors = {
    "catppuccin-latte",
    "catppuccin-frappe",
    "catppuccin-macchiato",
    "catppuccin-mocha",
    "nord",
    "nordic",
    "kanagawa-wave",
    "kanagawa-dragon",
    "kanagawa-lotus",
    "material",
    "tokyonight-storm",
    "tokyonight-night",
    "tokyonight-moon",
    "tokyonight-day",
    "nightfox",
    "dayfox",
    "dawnfox",
    "duskfox",
    "nordfox",
    "terafox",
    "carbonfox",
    "github_light",
    "github_light_default",
    "github_light_colorblind",
    "github_dimmed",
    "github_dark",
    "github_dark_default",
    "github_dark_colorblind",
}

local theme_location = "/home/asyraf07/.config/nvim/options/theme"

function ChangeTheme(color)
    if (color ~= nil) then
        local filewrite = io.open(theme_location, "w")
        if filewrite == nil then
            print("file not found")
            return;
        end
        filewrite:write(color)
        filewrite:close()
    end

    local fileread = io.open(theme_location, "r")
    if fileread == nil then
        print("file not found")
        return;
    end
    color = fileread:read("*l")
    fileread:close();


    vim.cmd.colorscheme(color)
end

function SelectTheme()
    local opts = {
        prompt = "Select Themes",
    }
    vim.ui.select(colors, opts, function(input)
        if (input == nil) then return end
        ChangeTheme(input)
    end)
end

function PrintTheme()
    local fileread = io.open(theme_location, "r")

    if fileread == nil then
        print("file not found")
        return;
    end
    print(fileread:read("*l"))
    fileread:close()
end

ChangeTheme()

vim.keymap.set("n", "<leader>t", ":lua SelectTheme()<CR>")
-- vim.keymap.set("n", "<leader>r", ":lua PrintTheme()<CR>")
