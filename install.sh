# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Create all the necessary symlinks
rm -rf $HOME/.gitconfig
ln -s $HOME/.dotfiles/.gitconfig $HOME/.gitconfig

rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Update Homebrew recipes
brew update

# Install all dependencies with bundle
brew bundle --file ./Brewfile

# Adjust dock settings
defaults write com.apple.dock "static-only" -bool "true" && killall Dock
defaults write com.apple.dock "tilesize" -int "36" && killall Dock
defaults write com.apple.dock "show-recents" -bool "false" && killall Dock
