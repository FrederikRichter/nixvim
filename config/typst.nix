{pkgs, ...}:
{
extraPackages = with pkgs; [
    typst
];
plugins.typst-preview.enable = true;
 }
