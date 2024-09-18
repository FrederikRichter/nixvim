{pkgs, ...}:
{
  # Import all your configuration modules here
  imports = [ 
    ./nixvim.nix
    ./autocomplete.nix
    # ./autosession.nix
    # ./nixvim.nix
    ./neoscroll.nix
    ./betterescape.nix
    ./chadtree.nix
    ./dashboard.nix
    ./fugitive.nix
    ./telescope.nix
    ./vimtex.nix
    ./oil.nix
  ];
}
