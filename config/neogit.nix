{
    plugins.neogit = {
        enable = true;
    };
    keymaps = [
    {
        action = "<cmd>Neogit<CR>";
        key = "<leader>gg";
        options = {
            silent = true;
        };
    }
    {

        action = "<cmd>Neogit commit<CR>";
        key = "<leader>gc";
        options = {
            silent = true;
        };
    }
    ];
}
