#!/usr/bin/env bash

if [ $# -gt 0 ]; then

    if [ "$1" == "artisan" ] || [ "$1" == "art" ]; then
        shift 1
        docker-compose exec \
            lumen \
            php artisan "$@"

    elif [ "$1" == "composer" ] || [ "$1" == "comp" ]; then
        shift 1
        docker-compose exec \
            lumen \
            composer "$@"
    
    else
        docker-compose "$@"
    fi

else
    docker-compose ps
fi