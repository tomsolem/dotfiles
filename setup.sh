# bin/bash
echo "starting script.."
#command -v git >/dev/null 2>&1 || { echo >&2 "git not found. Aborting."; exit 1; }
#echo "git found, checking next"

if command -v git > /dev/null; then
 echo "git installed"
else
 echo "git NOT installed"
fi

if command -v brew > /dev/null; then
 echo "brew installed"
 brew update
else
 echo "brew NOT installed"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

#if command -v docker > /dev/null; then
# echo "Docker installed"
#else
# echo "Docker not installed, installing using brew"
 #brew install docker docker-compose docker-machine xhyve docker-machine-driver-xhyve
 echo "Update docker permission to hyper-v"
# sudo chown root:wheel $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
# sudo chmod u+s $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
  brew cask install docker
  open /Applications/Docker.app
#fi
