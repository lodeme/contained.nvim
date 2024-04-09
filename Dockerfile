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
RUN echo "neofetch" >> ~/.config/fish/config.fish

