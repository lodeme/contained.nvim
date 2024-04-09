# Use an Arch Linux base image
FROM archlinux:base

# Update the system and install dependencies
RUN pacman -Syu --noconfirm && \
  pacman -S --noconfirm \
  neovim \
  git \
  curl \
  wget \
  luarocks \
  btop \
  ripgrep \
  lazygit \
  fd \
  unzip \
  base-devel \
  cmake \
  fish \
  zoxide \
  fzf \
  tree \
  neofetch \
  && pacman -Scc --noconfirm

# install jsregexp
RUN luarocks install jsregexp

# Clone the Neovim configuration
RUN mkdir -p /root/.config/nvim && \
  git clone https://github.com/lodeme/lazyconfig.nvim.git /root/.config/nvim

# Set the timezone
RUN ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime && \
  echo "Europe/Berlin" > /etc/timezone

# get machine information at startup
RUN mkdir -p /root/.config/fish && \
  echo "neofetch" >> /root/.config/fish/config.fish && \
  echo "alias v nvim" >> /root/.config/fish/config.fish && \
  echo "zoxide init fish | source" >> /root/.config/fish/config.fish && \
  echo "function z; zoxide query \$argv; end" >> ~/.config/fish/config.fish && \
  echo "function zi; zoxide query -i \$argv; end" >> ~/.config/fish/config.fish
