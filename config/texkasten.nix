{pkgs, ...}:
{
extraConfigLuaPost = ''
texkasten = require('texkasten').setup({datadir = "texkasten"})
'';

# extraPlugins = [(pkgs.vimUtils.buildVimPlugin {
#     name = "my-plugin";
#     src = pkgs.fetchFromGitHub {
#         owner = "<owner>";
#         repo = "<repo>";
#         rev = "<commit hash>";
#         hash = "<nix NAR hash>";
#     };
# })];
}
