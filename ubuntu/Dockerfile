# Use an Ubuntu base image
FROM ubuntu:devel

# Avoid prompts from apt
ENV DEBIAN_FRONTEND=noninteractive

# Update the system and install dependencies
RUN apt-get update \
  && apt-get upgrade -y && \
  apt-get install -y \
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
  xclip \
  nodejs \
  npm \
  libsqlite3-dev \
  openssh-client \
  llvm \
  clangd \
  cargo \
  cmake \
  bear \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# install lazygit
RUN LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*') && \
  curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz" && \
  tar xf lazygit.tar.gz lazygit && \
  install lazygit /usr/local/bin

# install jsregexp
RUN luarocks install jsregexp

# Clone the Neovim configuration
RUN mkdir -p /root/.config/nvim && \
  git clone https://github.com/lodeme/lazyconfig.nvim.git /root/.config/nvim

# Set the timezone
RUN ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime && \
  echo "Europe/Berlin" > /etc/timezone

# get machine information at startup and set up fish shell configurations
RUN mkdir -p /root/.config/fish && \
  echo "neofetch" >> /root/.config/fish/config.fish && \
  echo "alias v='nvim'" >> /root/.config/fish/config.fish && \
  echo "alias lg='lazyygit'" >> /root/.config/fish/config.fish && \
  echo "zoxide init fish | source" >> /root/.config/fish/config.fish && \
  echo "function z; cd $(zoxide query \$argv); end" >> /root/.config/fish/config.fish && \
  echo "function zi; cd $(zoxide query -i \$argv); end" >> /root/.config/fish/config.fish && \
  echo "set -gx LANG en_US.UTF-8" >> /root/.config/fish/config.fish && \
  echo "set -gx LC_ALL en_US.UTF-8" >> /root/.config/fish/config.fish

