#!/bin/sh

check_installed() {
    pack=$1
    force=$2
    flags=

    if [ -e "$HOME/$pack" ] && [ $force -ne 1 ]; then
        echo "'$pack' is already in place. Override? (y/n)"

        while read over
        do
            if [ "$over" = "y" ] || [ "$over" = "yes" ]; then
                cp --rf --remove-destination $pack $HOME
            else
                echo "Skipping '$pack'"
            fi

            break
        done <&0
        
    else
        cp -rf $pack $HOME
    fi
}




if [ "$1" = "-f" ] || [ "$1" = "--force" ]; then
    force=1
else 
    force=0
fi

echo "Installing vimrc"
check_installed .vim $force
check_installed .vimrc $force
echo "Installing zshrc"
check_installed .zshrc $force

echo "Done"
exit 0


