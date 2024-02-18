sudo apt install expect -y
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
echo [✓] $HOME/.zshrc updated
zsh -c "echo [✓] install complete"
