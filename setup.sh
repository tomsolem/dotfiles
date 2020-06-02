# bin/bash
echo 'starting script..'
#command -v git >/dev/null 2>&1 || { echo >&2 "git not found. Aborting."; exit 1; }
#echo 'git found, checking next'

if command -v git > /dev/null; then
 echo 'git installed'
else
 echo 'git NOT installed'
fi

if command -v brew > /dev/null; then
 echo 'brew installed, running update'
 brew update
else
 echo 'brew NOT installed'
 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

if command -v docker > /dev/null; then
 echo 'Docker installed'
else
 echo 'Docker not installed, installing using brew'
  brew cask install docker
  open /Applications/Docker.app
fi

# Check to see if iTerm is installed
if [ ! -d '/Applications/iTerm.app' -a ! -d "$HOME/Applications/iTerm.app" ]
then
 echo 'iTerm is not installed, installing using brew cask'
 brew cask install iterm2
 sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else 
 echo 'iTerm2 installed' 
fi
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
