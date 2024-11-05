#!/bin/bash

# Update package lists
sudo apt-get update

# Install essential packages
sudo apt-get install \
    build-essential git emacs zsh tmux \
    coreutils curl jq netcat openssl openssh-client awscli gnupg ripgrep sed gawk wget tree \
    python3-venv python3-pip \
    clojure default-jdk guile-3.0 \
    mailutils texinfo \
    imagemagick libgif-dev libjpeg-dev libpng-dev libtiff-dev libxpm-dev libmagickwand-dev libgnutls28-dev libgtk-3-dev librsvg2-dev libharfbuzz-dev libwebp-dev \
    davfs2 fuse kmod

# Install Poetry
pip3 install poetry

# Add Poetry to PATH in .zshrc
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install fzf
sudo apt-get install fzf

# Switch to Zsh
# chsh -s $(which zsh)

# cd ~/opt/emacs-29.4/
# ./configure --with-x-toolkit=gtk3 --with-gnutls --with-imagemagick
# make bootstrap 
 