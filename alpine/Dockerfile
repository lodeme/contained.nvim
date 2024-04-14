# Use an Alpine base image
FROM alpine:latest

# Avoid caches to minimize the image size
RUN apk --no-cache add \
  neovim \
  zoxide \
  git \
  curl \
  wget \
  luarocks \
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
  llvm \
  clang \
  cmake \
  bear \
  lazygit \
  zellij \
  bat

# Install jsregexp
# RUN luarocks install jsregexp

# Clone the Neovim configuration
# RUN mkdir -p /root/.config/nvim && \
#   git clone https://github.com/lodeme/lazyconfig.nvim.git /root/.config/nvim
#
# # Set the timezone and locale
# RUN apk add --no-cache tzdata && \
#   ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime && \
#   echo "Europe/Berlin" > /etc/timezone && \
#   apk add --no-cache libc6-compat && \
#   echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
#   locale-gen

# Get machine information at startup and set up fish shell configurations
# ARG PATH_FISH_CFG=/root/.config/fish
# ARG PATH_DOTSCRIPTS=/root/.config/dotscripts
# COPY ../dotfiles/config.fish $PATH_FISH_CFG
# COPY ../dotfiles/custom_prompt.sh $PATH_DOTSCRIPTS
# RUN mkdir -p $PATH_FISH_CFG && \
#     mkdir -p $PATH_DOTSCRIPTS && \
#     sh ${PATH_DOTSCRIPTS}/custom_prompt.sh
#
