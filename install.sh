#!/bin/bash

# Define arrays of packages
FORMULAE=(
    awscli
    bat
    ca-certificates
    chezmoi
    eza
    fzf
    gettext
    gh
    git
    grep
    gum
    gmp
    gnupg
    gnutls
    libassuan
    libevent
    libgcrypt
    libgit2
    libgpg-error
    libidn2
    libksba
    libnghttp2
    libssh2
    libtasn1
    libunistring
    libusb
    mise
    ncurses
    nettle
    npth
    openssl@3
    p11-kit
    pcre
    pinentry
    readline
    unbound
    wget
    zsh
    zsh-autosuggestions
  zsh-syntax-highlighting
)

CASKS=(
    arc
    adguard
    alt-tab
    appcleaner
    cursor
    claude
    discord
    excalidrawz
    font-d2coding-nerd-font
    google-chrome
    hammerspoon
    httpie
    jetbrains-toolbox
    notion
    obsidian
    postman
    raycast
    rectangle
    shottr
    slack
    warp
    zoom
)

echo "Starting Homebrew installation..."

# Install Formulae
echo "Installing Formulae..."
for formula in "${FORMULAE[@]}"; do
    echo "Installing $formula..."
    brew install "$formula"
done

# Install Casks
echo "Installing Casks..."
for cask in "${CASKS[@]}"; do
    echo "Installing $cask..."
    brew install --cask "$cask"
done

echo "Installation completed!"
