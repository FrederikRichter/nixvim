{pkgs, ...}:
{
  # Import all your configuration modules here
  imports = [ 
    ./nixvim.nix
    ./cmp.nix
    ./dap.nix
    # ./autosession.nix
    #./luasnip.nix
    ./betterescape.nix
    ./chadtree.nix
    ./dashboard.nix
    ./fugitive.nix
    ./telescope.nix
    ./vimtex.nix
    ./oil.nix
    #./treesitter.nix
    ./typst.nix
    ./lsp.nix
  ];
}
