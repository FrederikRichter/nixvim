{pkgs, ...}:
{
  # Import all your configuration modules here
  imports = [ 
    ./nixvim.nix
    ./cmp.nix
    ./treesitter.nix
    # ./autosession.nix
    #./neoscroll.nix
    ./luasnip.nix
    ./betterescape.nix
    ./chadtree.nix
    #./dashboard.nix
    ./fugitive.nix
    ./telescope.nix
    ./vimtex.nix
    ./oil.nix
    ./texkasten.nix
  ];
}
