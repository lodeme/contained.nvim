neofetch
alias v='nvim'
alias lg='lazygit'
zoxide init fish | source
function z; cd $(zoxide query $argv); end
function zi; cd $(zoxide query -i $argv); end
set -gx LANG en_US.UTF-8
set -gx LC_ALL en_US.UTF-8
