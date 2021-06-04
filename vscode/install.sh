# !/bin/bash
brew cask install visual-studio-code

sudo xattr -dr com.apple.quarantine /Applications/Visual\ Studio\ Code.app

# install vscode extensions
code --install-extension 4ops.terraform
code --install-extension alexkrechik.cucumberautocomplete
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension denoland.vscode-deno
code --install-extension DotJoshJohnson.xml
code --install-extension eamodio.gitlens
code --install-extension golang.go
code --install-extension hashicorp.terraform
code --install-extension hediet.vscode-drawio
code --install-extension henoc.svgeditor
code --install-extension mikestead.dotenv
code --install-extension ms-azure-devops.azure-pipelines
code --install-extension ms-azuretools.vscode-azureterraform
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-vscode.azure-account
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension yzhang.markdown-all-in-one
code --install-extension zxh404.vscode-proto3


# copy vscode settings
#cp ./vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
