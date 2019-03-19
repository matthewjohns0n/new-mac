
# install brew:
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update brew
brew update

# Install brew bundle
brew tap Homebrew/bundle

# Install files from brewfile bundle
brew bundle install

# Open Creative cloud installer app for lightroom
open -a /usr/local/Caskroom/adobe-creative-cloud/latest/Creative\ Cloud\ Installer.app
