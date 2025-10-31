{pkgs, ...}:
{
  # Import all your configuration modules here
  imports = [ 
    ./nixvim.nix
    ./compiler.nix
    ./cmp.nix
    ./dap.nix
    ./neogit.nix
    # ./autosession.nix
    ./luasnip.nix
    ./betterescape.nix
    ./chadtree.nix
    ./fugitive.nix
    ./telescope.nix
    ./vimtex.nix
    ./oil.nix
    #./treesitter.nix
    ./typst.nix
    ./lsp.nix
  ];
}
