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
    };
    extraPackages = with pkgs; [
        lldb
        coreutils
        vscode-extensions.vadimcn.vscode-lldb
    ];
}
