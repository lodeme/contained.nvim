# Use an Ubuntu base image
FROM ubuntu:devel

# Avoid prompts from apt
ENV DEBIAN_FRONTEND=noninteractive

# Update the system and install dependencies
RUN apt-get update \
  && apt-get upgrade -y && \
  apt-get install --no-install-recommends -y \
  neovim \
  git \
  curl \
  wget \
  luarocks \
  btop \
  ripgrep \
  fd-find \
  unzip \
  build-essential \
  cmake \
  fish \
  zoxide \
  fzf \
  tree \
  neofetch \
  nodejs \
  npm \
  libsqlite3-dev \
  openssh-client \
  llvm \
  clangd \
  cargo \
  cmake \
  bear \
  bat \
  tldr \
  tmux \
  python3-dev \
  pipx \
  tzdata && \
  pipx install norminette && \
  ln -s /usr/share/zoneinfo/Europe/Berlin /etc/localtime && \
  npm install -g tldr && \
  luarocks-5.1 install jsregexp && \
  rm -rf /root/.config/fish/ && \
  rm -rf /root/.config/nvim/ && \
  chsh -s /bin/fish && \
  snap install zellij --classic && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

# install lazygit
RUN LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*') && \
  curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz" && \
  tar xf lazygit.tar.gz lazygit && \
  install lazygit /usr/local/bin

