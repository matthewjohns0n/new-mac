brew bundle dump --force

function moveToPersonal () {
    package=$@
    echo $package

    sedCommand='/'$package'/d'
    echo $sedCommand

    sed -i '' -e "$sedCommand" Brewfile
    echo "${package}" >> Brewfile-personal
}

rm -f Brewfile-personal
moveToPersonal 'cask "adobe-creative-cloud"'

