# /bin/bash
# Install tools to run GUI apps in docker
brew install socat
brew cask install xquartz
# need to reboot before xquartz will work
# Check to see that TCP port 6000 is free
# lsof -i TCP:6000 
# Run socat to listen on port
# socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"
# in new terminal widow check to see if port is in use:
# lsof -i TCP:6000
# https://stackoverflow.com/questions/37826094/xt-error-cant-open-display-if-using-default-display

# docker run -it -e DISPLAY=docker.for.mac.host.internal:0.0 -v /tmp/.X11-unix:/tmp/.X11-unix --name spotify jess/spotify

# docker run --rm -it -v /etc/localtime:/etc/localtime:ro -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=docker.for.mac.host.internal:0.0 --device /dev/snd --device /dev/dri --device /dev/video0 --group-add audio --group-add video -v "${HOME}/.slack:/root/.config/Slack" --ipc="host" --name slack jess/slack

# docker run -it --rm -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME:/home/user -e DISPLAY=docker.for.mac.host.internal:0.0 --name vscode jess/vscode
