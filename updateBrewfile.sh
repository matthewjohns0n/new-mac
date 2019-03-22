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
moveToPersonal 'brew "htop"'
moveToPersonal 'cask "ableton-live"'
moveToPersonal 'cask "adobe-creative-cloud"'
moveToPersonal 'cask "alfred"'
moveToPersonal 'cask "android-platform-tools"'
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
moveToPersonal 'cask "trinitronx/truecrypt/truecrypt"'
moveToPersonal 'mas "iMovie", id: 408981434'
moveToPersonal 'mas "Wallcat", id: 1000397973'