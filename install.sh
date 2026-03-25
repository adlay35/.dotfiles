#!/bin/bash
# ~/.dotfiles/install.sh

GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

echo -e "${GREEN}==> Synchronizing Dotfiles...${NC}"

cd ~/.dotfiles || { echo "Error: .dotfiles directory not found"; exit 1; }

if [ -d "scripts" ]; then
    echo -e "${YELLOW}==> Ensuring scripts are executable...${NC}"
    find scripts -type f -exec chmod +x {} +
fi

echo -e "${GREEN}==> Deploying with Stow...${NC}"

configs=("nvim" "kitty" "tmux" "zsh" "scripts")

for config in "${configs[@]}"; do
    if [ -d "$config" ]; then
        stow -R -v -t "$HOME" "$config"
        echo -e "${GREEN}Finished: $config${NC}"
    fi
done

echo -e "${GREEN}==> All systems go!${NC}"
