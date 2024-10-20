{pkgs, ...}:
{
extraPackages = with pkgs; [
    typst
    typstyle
    # lua51Packages.lyaml
    # luajitPackages.lyaml
];

# AUTOFMT
extraConfigLuaPost = ''
-- Define a function to execute your command with the filename
local function execute_on_save(filename)
    local autofmt = "typstyle -i " .. filename
    result = vim.fn.system(autofmt)  -- Attempt to execute the command
    vim.cmd("edit!")
    print(result)


    local compile = "typst compile " .. filename .. " --root='../'"
    result = vim.fn.system(compile)  -- Attempt to execute the command
    print(result)
end

-- Create an autocommand group to avoid duplicate commands
vim.api.nvim_create_augroup("TypFileCommands", { clear = true })

-- Set up an autocommand that triggers on saving .typ files
vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*/data/*.typ",
    callback = function()
        -- Get the current filename
        local filename = vim.fn.expand("%:p")  -- Get the full path of the file
        execute_on_save(filename)  -- Call the function with the filename
    end,
    group = "TypFileCommands",
})'';
}
