# !/bin/bash
brew cask install visual-studio-code

sudo xattr -dr com.apple.quarantine /Applications/Visual\ Studio\ Code.app

# install vscode extensions
code --install-extension zxh404.vscode-proto3
code --install-extension AlanWalk.markdown-toc
#code --install-extension christian-kohler.npm-intellisense
#code --install-extension christian-kohler.path-intellisense
code --install-extension CoenraadS.bracket-pair-colorizer
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension yzhang.markdown-all-in-one
code --install-extension davidanson.vscode-markdownlint

#code --install-extension dzannotti.vscode-babel-coloring
#code --install-extension esbenp.prettier-vscode
#code --install-extension felixfbecker.php-intellisense
#code --install-extension fterrag.vscode-php-cs-fixer
#code --install-extension gencer.html-slim-scss-css-class-completion
#code --install-extension jcbuisson.vue
#code --install-extension leizongmin.node-module-intellisense
#code --install-extension mf.vscode-styled-components
#code --install-extension ms-python.python
#code --install-extension ms-vscode.vscode-typescript-tslint-plugin
#code --install-extension msjsdiag.debugger-for-chrome
code --install-extension redhat.vscode-yaml
#code --install-extension RoscoP.ActiveFileInStatusBar
#code --install-extension shardulm94.trailing-spaces
code --install-extension vscode-icons-team.vscode-icons
code --install-extension henoc.svgeditor
#code --install-extension redhat.vscode-xml --> BAD needs java
code --install-extension dotjoshjohnson.xml


# copy vscode settings
#cp ./vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
