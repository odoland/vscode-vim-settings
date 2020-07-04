brew cask install iterm2
# ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# ZSH ui
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# ZSH plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
brew install fasd

cp ./.zshrc ~/.zshrc
cp ./.aliases.zsh ~/./aliases.zsh
cp ./.p10k.zsh ~/./p10k.zsh
