{pkgs, ...}:
{
extraPackages = with pkgs; [
    typst
];
plugins.typst-preview.enable = true;

keymaps = [
      {
    action = "<cmd>TypstPreviewToggle<CR>";
    key = "<leader>t";
    options = {
      silent = true;
    };
  }
];

 }
