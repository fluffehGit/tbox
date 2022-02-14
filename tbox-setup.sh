#!/bin/bash

set -e;

trap 'lastCommand=$currentCommand; currentCommand=$BASH_COMMAND' DEBUG;
trap 'echo "\"${lastCommand}\" command failed with exit code $?"' EXIT;

if [[ ! -d /root/Media ]]; then
    mkdir /root/Media;
fi

if [[ ! -d /root/.config ]]; then
    mkdir /root/.config;
fi

if [[ ! -d /root/.config/deluge ]]; then
    mkdir /root/.config/deluge;
fi

if [[ ! -f /root/.config/deluge/auth ]]; then
    curl "https://raw.githubusercontent.com/fluffehGit/tbox/master/sample-configs/auth" --output /root/.config/deluge/auth;
fi

if [[ ! -f /root/.config/deluge/core.conf ]]; then
    curl "https://raw.githubusercontent.com/fluffehGit/tbox/master/sample-configs/core.conf" --output /root/.config/deluge/auth;
fi

docker container run -d --name tbox -p 58846:58846 -v /root/.config/deluge:/root/.config/deluge -v /root/Media:/root/Media --restart unless-stopped fluffeh/tbox
