# Use a base image with a minimal Linux distribution, for example, Debian
FROM debian:bullseye-slim

# Install dependencies and Neovim
RUN apt-get update && apt-get install -y \
  neovim \
  git \
  curl \
  && rm -rf /var/lib/apt/lists/* \
  && git clone https://github.com/lodeme/lazyconfig.nvim.git ~/.config/nvim

