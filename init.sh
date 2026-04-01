#!/bin/bash

# Oh-My-Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "Installing Oh My Zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
  echo "Oh My Zsh is already installed. Skipping..."
fi

# Remove existing configs
echo "Cleaning up existing configurations..."
directories=(
  "$HOME/.config/nvim"
  "$HOME/.config/kitty"
  "$HOME/.zshrc"
  "$HOME/.zsh_profile"
  "$HOME/.tmux.conf"
)

for directory in "${directories[@]}"; do
  echo "Removing: $directory"
  rm -rf "$directory"
done

echo "Cleanup complete. Ready to run stow."
