# Use an Alpine base image
FROM alpine:latest

# Avoid caches to minimize the image size
RUN apk --no-cache add \
  neovim \
  zoxide \
  git \
  curl \
  wget \
  lua-dev \
  build-base \
  btop \
  ripgrep \
  fd \
  unzip \
  cmake \
  fish \
  fzf \
  tree \
  neofetch \
  nodejs \
  npm \
  sqlite-dev \
  openssh \
  llvm14 \
  clang17 \
  bear \
  tldr \
  lazygit \
  zellij \
  bat \
  ncdu \
  tzdata && \
  ln -s /usr/share/zoneinfo/Europe/Berlin /etc/localtime && \
  npm install -g tldr && \
  luarocks-5.1 install jsregexp && \
  rm -rf /root/.config/fish/ && \
  rm -rf /root/.config/nvim/ && \
  chsh /bin/fish

# Get machine information at startup and set up fish shell configurations
COPY ../dotfiles/fish /root/.config/
COPY ../dotfiles/nvim/ /root/.config/
RUN source /root/.config/fish/config.fish
