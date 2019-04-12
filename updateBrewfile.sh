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
moveToPersonal 'brew "cowsay"'
moveToPersonal 'brew "fortune"'
moveToPersonal 'brew "fzf"'
moveToPersonal 'brew "htop"'
moveToPersonal 'brew "lolcat"'
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
moveToPersonal 'cask "vlc"'
moveToPersonal 'cask "trinitronx/truecrypt/truecrypt"'
moveToPersonal 'mas "cat.wall.Wallcat", id: 1000397973'
moveToPersonal 'mas "com.apple.iMovieApp", id: 408981434'
moveToPersonal 'mas "com.eyalw.1Keyboard", id: 766939888'
moveToPersonal 'mas "com.zoho.notebook.mac", id: 1173152781'