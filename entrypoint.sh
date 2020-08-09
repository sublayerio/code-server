#! /bin/bash

sudo service docker start

if [ ! -f /tmp/foo.txt ]; then
    echo "Oh My Zsh not found. Installing now..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

dumb-init fixuid -q /usr/bin/code-server --bind-addr 0.0.0.0:8080 --auth none .