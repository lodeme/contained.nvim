# Get system information at startup
neofetch

# Set aliases for shortcuts
alias v='nvim'
alias lg='lazygit'
alias gfs='git fetch && git status'
alias gs='git status'
alias bat='batcat'
alias fd='fdfind'
alias fzd='cd $(fd --type directory | fzf)'

# Setup zoxide aliases
zoxide init fish | source
function z; cd $(zoxide query $argv); end
function zi; cd $(zoxide query -i $argv); end

# Set locale
set -gx LANG en_US.UTF-8
set -gx LC_ALL en_US.UTF-8
