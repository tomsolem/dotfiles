# /bin/bash

lsof -i TCP:6000

socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"

lsof -i TCP:6000

docker run -it --rm -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME:/home/user -e DISPLAY=docker.for.mac.host.internal:0.0 --name vscode jess/vscode
