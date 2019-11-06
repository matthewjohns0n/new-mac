
rm -f Brewfile-personal

brew bundle dump --force

function moveToPersonal () {
    package=$@
    sedCommand='\#'$package'#d'
    sed -i '' -e "$sedCommand" Brewfile
    echo "${package}" >> Brewfile-personal

    echo "Moved package to personal: ${package}"
}

declare -a personal_packages=(
    'tap "trinitronx/truecrypt"'
    'brew "cointop"'
    'brew "cowsay"'
    'brew "fortune"'
    'brew "fzf"'
    'brew "htop"'
    'brew "lolcat"'
    'brew "nikto"'
    'brew "nmap"'
    'cask "ableton-live"'
    'cask "adobe-creative-cloud"'
    'cask "alfred"'
    'cask "android-platform-tools"'
    'cask "android-sdk"'
    'cask "arduino"'
    'cask "bartender"'
    'cask "balenaetcher"'
    'cask "bitbar"'
    'cask "cakebrew"'
    'cask "flux"'
    'cask "goofy"'
    'cask "itsycal"'
    'cask "nordvpn"'
    'cask "plex-media-server"'
    'cask "spectacle"'
    'cask "spotify"'
    'cask "vlc"'
    'cask "trinitronx/truecrypt/truecrypt"'
    'cask "android-file-transfer"'
    'mas "1Keyboard", id: 766939888'
    'mas "Notebook", id: 1173152781'
    'mas "Wallcat", id: 1000397973'
    'mas "GarageBand", id: 682658836'
    'mas "iMovie", id: 408981434'
    'mas "MainStage 3", id: 634159523'
    'mas "Mapping Tonal Harmony Pro", id: 599212305'
    'mas "Politonus II Ear Training", id: 1455174275'
    'mas "Politonus III Ear Training", id: 1459516938'
    'mas "See Music Pro", id: 1362924701'
    'mas "Tessitura Pro", id: 1213925683'
)

for personal_package in "${personal_packages[@]}"; do
   moveToPersonal "$personal_package"
done
