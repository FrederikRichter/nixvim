{pkgs, ...}:
{
extraPackages = with pkgs; [
    typst
    typstyle
    zathura
];

# plugins.lsp.servers.tinymist = {
#     enable = true;
#     filetypes = ["typst"];
#     settings = {
#         rootPath = "-";
#         exportPdf = "onSave";
#         outputPath = "$root/data/pdf/$name";
#         typstExtraArgs = "--open zathura";
#         formatterMode = "typstfmt";
#         trace.server = "messages";
#     };
# };

# AUTOFMT
 extraConfigLuaPost = ''
function watch_typst()
    local filename = vim.fn.expand("%:p")  -- Get the full path of the file
    local compile = "typst watch " .. filename .. " --root='/home/frederik/typwiki/' /tmp/output.pdf --open zathura"

    -- Spawn a new process to run the command asynchronously
    local handle
    handle = vim.loop.spawn("sh", {
        args = { "-c", compile },
        stdio = { nil, nil, nil }  -- Use default stdin, stdout, stderr
    }, function(code)
        handle:close()  -- Close the handle when done
        if code ~= 0 then
            print("Error running typst watch: " .. code)
        end
    end)

    print("Started watching: " .. filename)
end

local function fmt()
    local filename = vim.fn.expand("%:p")  -- Get the full path of the file
    local autofmt = "typstyle -i " .. filename
    local result = vim.fn.system(autofmt)  -- Attempt to execute the command
    vim.cmd("edit!")  -- Reload the file
    print(result)
end

-- Create an autocommand group to avoid duplicate commands
vim.api.nvim_create_augroup("TypFileCommands", { clear = true })

-- Autocommand for setting keymap on specific file type
vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
    pattern = "*/data/*.typ",
    callback = function()
        -- Set the keymap correctly without calling the function immediately
        vim.api.nvim_set_keymap('n', '<leader>ll', ':lua watch_typst()<CR>', { noremap = true, silent = true })
    end,
    group = "TypFileCommands",
})

-- Autocommand for formatting on file write
vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*.typ",
    callback = function()
        fmt()  -- Call fmt function directly
    end,
    group = "TypFileCommands",
})
'';
 }
