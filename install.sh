sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sed -i '/plugins=(/a \  git \' ~/.zshrc
sed -i '/plugins=(/a \  fzf-tab \' ~/.zshrc
sed -i '/plugins=(/a \  zsh-autosuggestions \' ~/.zshrc
sed -i '/plugins=(/a \  zsh-syntax-highlighting \' ~/.zshrc
