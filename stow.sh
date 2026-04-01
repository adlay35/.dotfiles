#!/bin/bash

echo "==> Synchronizing Dotfiles..."

cd ~/.dotfiles || { echo "Error: .dotfiles directory not found"; exit 1; }

if [ -d "scripts" ]; then
    echo "==> Ensuring scripts are executable..."
    find scripts -type f -exec chmod +x {} +
fi

echo "==> Deploying with Stow..."

configs=("nvim" "kitty" "tmux" "zsh" "scripts")

for config in "${configs[@]}"; do
    if [ -d "$config" ]; then
        stow -R -v -t "$HOME" "$config"
        echo "Finished: $config"
    fi
done

echo "==> All systems go!"
