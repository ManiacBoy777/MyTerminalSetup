# Define a function that runs a command with sudo if possible and needed
sudo_if_possible() {
  # Check if sudo is available
  if command -v sudo >/dev/null 2>&1; then
    # Check if the user is not root
    if [ "$EUID" -ne 0 ]; then
      # Run the command with sudo
      sudo "$@"
    else
      # Run the command without sudo
      "$@"
    fi
  else
    # Run the command without sudo
    "$@"
  fi
}

sudo_if_possible apt update
sudo_if_possible apt install expect -y
expect "$(curl -fsSl https://raw.githubusercontent.com/ManiacBoy777/MyTerminalSetup/main/oh-my-zsh.exp)"
echo [✓] oh-my-zsh installed
echo installing plugins...
git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab
echo [✓] fzf-tab installed
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo [✓] zsh-autosuggestions installed
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo [✓] zsh-syntax-highlighting installed
curl https://raw.githubusercontent.com/ManiacBoy777/MyTerminalSetup/main/.zshrc > ~/.zshrc
zsh -c "echo Complete!"
