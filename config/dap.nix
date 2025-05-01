{pkgs, config, lib, ...}:
{
    plugins.dap = {
        enable = true;
        settings = {
            adapters = {
                executables = {
                    lldb = {
                        command = lib.getExe' pkgs.lldb "lldb-dap";
                    };
                };
            };
            servers = {
                codelldb = {
                    port = 13000;
                    executable = {
                        command = "${pkgs.vscode-extensions.vadimcn.vscode-lldb}/share/vscode/extensions/vadimcn.vscode-lldb/adapter/codelldb";
                        args = [
                            "--port"
                                "13000"
                        ];
                    };
                };
            };
        };
    };

    plugins.dap-ui = {
        enable = true;
    };

    plugins.dap-lldb = {
        enable = true;
        settings = {
            codelldb_path = "${pkgs.vscode-extensions.vadimcn.vscode-lldb}/share/vscode/extensions/vadimcn.vscode-lldb/adapter/codelldb";
        };
    };

    extraPackages = with pkgs; [
        lldb
            coreutils
            vscode-extensions.vadimcn.vscode-lldb
    ];
    keymaps = [
    {
        mode = "n";
        key = "<leader>db";
        action.__raw = ''
            function()
            require("dapui").toggle( { reset = true; } )
            end
            '';
        options = {
            desc = "Toggle Debugger UI";
            silent = true;
        };
    }];
}
