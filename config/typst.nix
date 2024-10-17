{pkgs, ...}:
{
extraPackages = with pkgs; [
    typst
    typstyle
];
}
