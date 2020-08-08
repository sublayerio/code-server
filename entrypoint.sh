#! /bin/bash

sudo service docker start

dumb-init fixuid -q /usr/bin/code-server --bind-addr 0.0.0.0:8080 .