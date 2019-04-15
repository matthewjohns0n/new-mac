
# install brew:
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update brew
brew update

# Install brew bundle
brew tap Homebrew/bundle

# Install files from brewfile bundle
brew bundle install

# use zsh as default
sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install global composer packages
./composer-installs.sh

# Install Valet
valet install

# Make an etc resolver folder
sudo mkdir -p /etc/resolver

# Echo nameserver into resolver files
echo "nameserver 127.0.0.1" | sudo tee /etc/resolver/test
echo "nameserver 127.0.0.1" | sudo tee /etc/resolver/localhost
echo "nameserver 127.0.0.1" | sudo tee /etc/resolver/sparrow

# Make code folder
sudo mkdir /code
sudo chown -R ${USER}:staff /code

mkdir -p /code/sites

cd /code/sites
valet park

# Disable spaces autoreordering because it's the most annoying thing in the world
defaults write com.apple.dock mru-spaces -bool FALSE

# Don’t show recent applications in Dock
defaults write com.apple.dock show-recents -bool false
