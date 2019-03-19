brew bundle dump --force

function moveToPersonal () {
    package=$@
    sedCommand='/'$package'/d'
    sed -i '' -e "$sedCommand" Brewfile
    echo "${package}" >> Brewfile-personal

    echo "Moved package to personal: ${package}"
}

rm -f Brewfile-personal
moveToPersonal 'cask "adobe-creative-cloud"'
moveToPersonal 'cask "alfred"'
moveToPersonal 'cask "spectacle"'
moveToPersonal 'cask "spotify"'
moveToPersonal 'brew "htop"'
