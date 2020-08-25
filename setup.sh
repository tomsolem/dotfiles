# bin/bash
echo 'starting script..'
#command -v git >/dev/null 2>&1 || { echo >&2 "git not found. Aborting."; exit 1; }
#echo 'git found, checking next'

if command -v git > /dev/null; then
 echo 'git installed, version'
 git --version
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
 echo 'Docker installed, version'
 docker --version
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

if command -v terraform > /dev/null; then
  echo "terraform installed"
else
  brew install terraform
fi

if command -v code > /dev/null; then
 echo "Visual studio code installed."
 #code --install-extension hashicorp.terraform --force
 #brew install tflint
 curl -fsSL https://github.com/hashicorp/vscode-terraform/releases/download/v2.0.0-rc.2/terraform-2.0.0-rc.2.vsix -O
 code --install-extension terraform-2.0.0-rc.2.vsix --force
 rm terraform-2.0.0-rc.2.vsix
else
 echo "Visual studio code NOT installed, running brew cask install..."
 brew cask install visual-studio-code 
fi

if command -v go > /dev/null; then
 echo "golang installed."
 go version
else
 echo "golang NOT installed, create dirs and running brew install go"
 mkdir -p $HOME/go
 mkdir -p $HOME/go/src/github.com/user

 brew install go
# go get golang.org/x/tools/cmd/godoc
fi

if [ ! -d '/Applications/postman.app' -a ! -d "$HOME/Applications/postman.app" ]
then
 echo 'postman not installed, using brew cask to install'
 brew cask install postman
else 
 echo 'postman installed' 
fi

if command -v gpg > /dev/null; then
echo "gpg installed"
gpg --version
else
echo "gpg not installed, installing with brew cask"
brew cask install gpg-suite
fi

if [ ! -d '/Applications/Notable.app' -a ! -d "$HOME/Applications/Notable.app" ]
then
echo "notable installed"

else
echo "installing notable"
brew cask install notable
fi

if [ ! -d '/Applications/Chrome.app' -a ! -d "$HOME/Applications/Chrome.app" ]
then
echo "chrome installed"

else
echo "installing chrome"
brew cask install google-chrome
fi
# 