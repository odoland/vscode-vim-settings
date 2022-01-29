# ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Allow permissions to write files to zsh config
chmod 755 /usr/local/share/zsh
chmod 755 /usr/local/share/zsh/site-functions

# ZSH ui
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# ZSH plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
brew install fasd
brew install the_silver_searcher

cp ./.zshrc ~/.zshrc
cp ./.aliases.zsh ~/.aliases.zsh
cp ./.p10k.zsh ~/.p10k.zsh

# Copy snippets over
VSCODE="$HOME/Library/Application Support/Code/User"
cp ./go.code-snippets "$VSCODE/snippets/go.code-snippets" 
cp ./react.code-snippets "$VSCODE/snippets/react.code-snippets" 
cp ./settings.json "$VSCODE/settings.json"
cp ./keybindings.json "$VSCODE/keybindings.json"