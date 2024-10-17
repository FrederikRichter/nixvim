{pkgs, ...}:
{
extraPackages = with pkgs; [
    typst
    typstyle
];

# AUTOFMT
extraConfigLuaPost = ''
-- Define a function to execute your command with the filename
local function execute_on_save(filename)
    -- Replace 'your_command_here' with the actual command you want to run
    local command = "typstyle -i " .. filename
    -- Execute the command using os.execute
    os.execute(command)
    vim.cmd("edit!")
end

-- Create an autocommand group to avoid duplicate commands
vim.api.nvim_create_augroup("TypFileCommands", { clear = true })

-- Set up an autocommand that triggers on saving .typ files
vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*.typ",
    callback = function()
        -- Get the current filename
        local filename = vim.fn.expand("%:p")  -- Get the full path of the file
        execute_on_save(filename)  -- Call the function with the filename
    end,
    group = "TypFileCommands",
})'';
}
