#!/usr/bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

sudo sed -i 's/plugins=(git)/plugins=(z git zsh-syntax-highlighting zsh-autosuggestions)/g' /root/.zshrc
sudo sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="ys"/g' /root/.zshrc

source ~/.zshrc
chsh -s /bin/zsh
