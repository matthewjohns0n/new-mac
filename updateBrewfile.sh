brew bundle dump --force

function moveToPersonal () {
    package=$@
    sedCommand='\#'$package'#d'
    sed -i '' -e "$sedCommand" Brewfile
    echo "${package}" >> Brewfile-personal

    echo "Moved package to personal: ${package}"
}

rm -f Brewfile-personal
moveToPersonal 'tap "trinitronx/truecrypt"'
moveToPersonal 'brew "cointop"'
moveToPersonal 'brew "cowsay"'
moveToPersonal 'brew "fortune"'
moveToPersonal 'brew "fzf"'
moveToPersonal 'brew "htop"'
moveToPersonal 'brew "lolcat"'
moveToPersonal 'brew "nikto"'
moveToPersonal 'brew "nmap"'
moveToPersonal 'cask "ableton-live"'
moveToPersonal 'cask "adobe-creative-cloud"'
moveToPersonal 'cask "alfred"'
moveToPersonal 'cask "android-platform-tools"'
moveToPersonal 'cask "android-sdk"'
moveToPersonal 'cask "arduino"'
moveToPersonal 'cask "bartender"'
moveToPersonal 'cask "bitbar"'
moveToPersonal 'cask "cakebrew"'
moveToPersonal 'cask "flux"'
moveToPersonal 'cask "goofy"'
moveToPersonal 'cask "itsycal"'
moveToPersonal 'cask "nordvpn"'
moveToPersonal 'cask "plex-media-server"'
moveToPersonal 'cask "spectacle"'
moveToPersonal 'cask "spotify"'
moveToPersonal 'cask "vlc"'
moveToPersonal 'cask "trinitronx/truecrypt/truecrypt"'
moveToPersonal 'cask "android-file-transfer"'
moveToPersonal 'mas "1Keyboard", id: 766939888'
moveToPersonal 'mas "Notebook", id: 1173152781'
moveToPersonal 'mas "Wallcat", id: 1000397973'
moveToPersonal 'mas "GarageBand", id: 682658836'
moveToPersonal 'mas "iMovie", id: 408981434'
moveToPersonal 'mas "MainStage 3", id: 634159523'
