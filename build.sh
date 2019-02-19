#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
    echo "Usage: build.sh <tag>"
    exit 1
fi

set -ex

docker build -t registry.infra.rbc.ru/publicru/pub-server:$1 --no-cache . && \
    docker push registry.infra.rbc.ru/publicru/pub-server:$1

echo "All done."
