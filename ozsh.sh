#!/usr/bin/zsh


git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

sed -i 's/plugins=(git)/plugins=(z git zsh-syntax-highlighting zsh-autosuggestions)/g' /root/.zshrc
sed -i 's/ZSH_THEME="random"/ZSH_THEME="ys"/g' /root/.zshrc

source ~/.zshrc