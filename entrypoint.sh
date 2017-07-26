#!/bin/sh

set -e

case "$1" in
    run|serve)
        npm start
        ;;
    create|new)
        create-react-app "$2"
        cp /usr/share/Makefile "$2"
        ;;
    *)
        $*
        ;;
esac
