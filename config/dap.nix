{pkgs, config, lib, ...}:
{
    plugins.dap-virtual-text.enable = true;
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
        key = "<leader>e";
        action.__raw = ''
            function()
            require("dapui").eval()
            end
            '';
        options = {
            desc = "Eval Expression";
            silent = true;
        };
    }
    {
        mode = "n";
        key = "<leader>c";
        action.__raw = ''
            function()
            require("dap").continue()
            end
            '';
        options = {
            desc = "Continue Debugger";
            silent = true;
        };
    }
        {
        mode = "n";
        key = "<leader>m";
        action.__raw = ''
            function()
                local output = vim.fn.system({"cmake . && make"})
                print(output)
            end
            '';
        options = {
            desc = "Toggle Breakpoint";
            silent = true;
        };
    }
    {
        mode = "n";
        key = "<leader>bp";
        action.__raw = ''
            function()
            require("dap").toggle_breakpoint()
            end
            '';
        options = {
            desc = "Toggle Breakpoint";
            silent = true;
        };
    }
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
