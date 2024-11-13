#!/usr/bin/env bash

set -e

sudo ./install-fish.sh

# Install starship
curl -sS https://starship.rs/install.sh | sh -s -- --yes

# copy dotfiles to ~/.config
cp -rf ./config/* ~/.config/

# Set fish as default shell
FISH="$(which fish)"
CURRENT_USER="$(whoami)"

sudo chsh --shell "$FISH" "$CURRENT_USER"


