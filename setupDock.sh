# Set to default dock
# defaults delete com.apple.dock;

addDockItem() {
    app=$@

    # Adding a spacer
    if [ "$@" = 'spacer' ]; then
        # defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
        defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="small-spacer-tile";}'
        return;
    fi

    # App is in applications folder
    if [ -d "/Applications/$app" ]; then
        app="/Applications/$app"
    # App is in system applications folder
    elif [ -d "/System/Applications/$app" ]; then
        app="/System/Applications/$app"
    # This app doesnt exist, lets not add it
    else
        echo "Trying to add app to Dock, but not found: " $app >&2
        return;
    fi

    echo "Adding app to dock: " $app
    defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>$app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
}


# System Preferences > Dock > Magnification:
defaults write com.apple.dock magnification -bool true;

# System Preferences > Dock > Size (magnified):
defaults write com.apple.dock largesize -int 100;

# Don't show recents
defaults write com.apple.dock show-recents -bool false;

# System Preferences > Dock > Size:
defaults write com.apple.dock tilesize -int 50

# Remove all default apps
defaults write com.apple.dock persistent-apps -array

# System Preferences > Mission Control > Automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false


addDockItem "Launchpad.app"
addDockItem "System Preferences.app"
addDockItem spacer

addDockItem "Google Chrome.app"
addDockItem "Slack.app"
addDockItem "iTerm.app"
addDockItem "Sublime Text.app"
addDockItem "Visual Studio Code.app"
addDockItem "Github Desktop.app"
addDockItem "System Settings.app"
addDockItem spacer

addDockItem "Messenger.app"
addDockItem "Spotify.app"
addDockItem spacer

# Restart the dock
killall Dock;

# I do like all these settings, they just dont belong in the dock script
# # Disable the “Are you sure you want to open this application?” dialog
# sudo spctl --master-disable
# defaults write com.apple.LaunchServices LSQuarantine -bool false

# # show hidden files
# defaults write com.apple.Finder AppleShowAllFiles YES

# # show file extensions
# defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# # disable .DS_Store
# defaults write com.apple.desktopservices DSDontWriteNetworkStores true

# #  Finder
# defaults write com.apple.Finder ShowPathbar -bool true
# defaults write com.apple.Finder ShowStatusBar -bool true

# killall Finder


# sudo scutil --set ComputerName "newname"
# sudo scutil --set LocalHostName "newname"
# sudo scutil --set HostName "newname"
  # When performing a search, search the current folder by default
  # defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Show battery percent in the menu
# defaults write com.apple.menuextra.battery ShowPercent -string "YES"