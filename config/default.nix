{pkgs, ...}:
{
  # Import all your configuration modules here
  imports = [ 
    ./nixvim.nix
    ./autocomplete.nix
    ./treesitter.nix
    # ./autosession.nix
    #./neoscroll.nix
    ./betterescape.nix
    ./chadtree.nix
    ./dashboard.nix
    ./fugitive.nix
    ./telescope.nix
    ./vimtex.nix
    ./oil.nix
  ];
}
