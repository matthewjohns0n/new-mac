
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

# Install Valet
composer global require laravel/valet

# Make an etc resolver folder
sudo mkdir -p /etc/resolver

# Echo nameserver into resolver files
echo "nameserver 127.0.0.1" | sudo tee /etc/resolver/test
echo "nameserver 127.0.0.1" | sudo tee /etc/resolver/localhost
echo "nameserver 127.0.0.1" | sudo tee /etc/resolver/sparrow

# Make code folder
sudo mkdir /code
sudo chown -R ${USER}:staff /code

mkdir /code/www
