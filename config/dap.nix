{pkgs, config, lib, ...}:
{
    plugins.dap = {
        enable = true;
    };
    plugins.dap-ui = {
        enable = true;
    };
    plugins.dap-lldb = {
        enable = true;
        settings = {
                codelldb_path = "${pkgs.vscode-extensions.vadimcn.vscode-lldb}/bin/codelldb";

            };
    };
    extraPackages = with pkgs; [
        lldb
        coreutils
        vscode-extensions.vadimcn.vscode-lldb
    ];
}
