#!/bin/bash
# need chmod +x

GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

echo -e "${GREEN}==> Synchronizing Dotfiles...${NC}"

targets=(
    "$HOME/.config/nvim"
    "$HOME/.config/kitty"
    "$HOME/.tmux.conf"
    "$HOME/.tmux-cht-command"
    "$HOME/.tmux-cht-languages"
    "$HOME/.zshrc"
    "$HOME/.local/bin/tmux-sessionizer"
    "$HOME/.local/bin/tmux-cht.sh"
)

echo -e "${YELLOW}==> Removing existing local configs...${NC}"
for target in "${targets[@]}"; do
    if [ -e "$target" ] && [ ! -L "$target" ]; then
        echo "Removed: $target"
        rm -rf "$target"
    fi
done

cd ~/.dotfiles

if [ -d "scripts" ]; then
    echo -e "${YELLOW}==> Applying executable permissions to scripts...${NC}"
    find scripts -type f -exec chmod +x {} +
fi

echo -e "${GREEN}==> Deploying with Stow...${NC}"

configs=("nvim" "kitty" "tmux" "zsh" "scripts")

for config in "${configs[@]}"; do
    if [ -d "$config" ]; then
        stow -R "$config"
        echo "finish: $config"
    fi
done

echo -e "${GREEN}==> Done!${NC}"
