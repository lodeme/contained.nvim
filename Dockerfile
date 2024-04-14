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
  luarocks5.1 \
  build-base \
  btop \
  ripgrep \
  fd \
  unzip \
  cmake \
  fish \
  fzf \
  tree \
  shadow \
  neofetch \
  nodejs \
  npm \
  sqlite-dev \
  openssh \
  gcompat \
  clang-extra-tools \
  llvm14 \
  clang17 \
  bear \
  lazygit \
  zellij \
  bat \
  ncdu \
  python3 \
  py3-pip \
  pipx \
  tzdata && \
  pipx install norminette && \
  ln -s /usr/share/zoneinfo/Europe/Berlin /etc/localtime && \
  npm install -g tldr && \
  luarocks-5.1 install jsregexp && \
  rm -rf /root/.config/fish/ && \
  rm -rf /root/.config/nvim/ && \
  chsh -s /bin/fish

# Get machine information at startup and set up fish shell configurations
COPY dotfiles/fish /root/.config/fish
COPY dotfiles/nvim /root/.config/nvim
