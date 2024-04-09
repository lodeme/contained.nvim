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
  lazygit \
  fd-find \
  unzip \
  build-essential \
  cmake \
  fish \
  zoxide \
  fzf \
  tree \
  neofetch \
  tree-sitter \
  xclip \
  nodejs \
  npm \
  openssh-client \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# In Ubuntu, fd is called fd-find, you may need to symlink it:
# RUN ln -s $(which fdfind) /usr/local/bin/fd

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
  echo "zoxide init fish | source" >> /root/.config/fish/config.fish && \
  echo "function z; zoxide query \$argv; end" >> /root/.config/fish/config.fish && \
  echo "function zi; zoxide query -i \$argv; end" >> /root/.config/fish/config.fish

