{pkgs, ...}:
{
keymaps = [
    # CPP
    {
        mode = "n";
        key = "<leader>m";
        action.__raw = ''
            function()
                local output = vim.fn.system("${pkgs.cmake}/bin/cmake -S . -B build && ${pkgs.cmake}/bin/cmake --build build")
                print(output)
            end
            '';
    }
    ];
}
