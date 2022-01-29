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

# vs code extensions
code --force --install-extension dbaeumer.vscode-eslint
code --force --install-extension esbenp.prettier-vscode

code --force --install-extension eamodio.gitlens
code --force --install-extension ms-azuretools.vscode-docker
code --force --install-extension ms-vscode-remote.remote-containers
code --force --install-extension mikestead.dotenv
code --force --install-extension golang.go
code --force --install-extension ms-python.python
code --force --install-extension ms-python.vscode-pylance
code --force --install-extension mtxr.sqltools
code --force --install-extension naumovs.color-highlight
code --force --install-extension ritwickdey.LiveServer
code --force --install-extension techer.open-in-browser
code --force --install-extension vscodevim.vim
code --force --install-extension shyykoserhiy.vscode-spotify

code --list-extensions | xargs echo "installed: "