alias myip="curl http://ipecho.net/plain; echo"
alias l="ls -al"
alias azure='docker run -it --rm -v ${PWD}:/local -v ${HOME}/.ssh:/root/.ssh -v ${HOME}/dev:/tmp/dev mcr.microsoft.com/azure-cli'
alias kt='docker run -it --rm -v ${PWD}:/local -v ${HOME}/dev/github/bkk-digitek/kubernetes/ace-test:/src -e KUBECONFIG=/src/kubeconfig.yaml -p 8200:8200 dtzar/helm-kubectl:2.15.0'
alias ki='docker run -it --rm -v ${PWD}:/local -v ${HOME}/dev/github/bkk-digitek/kubernetes/ace-tools-001:/src -e KUBECONFIG=/src/kubeconfig.yaml -p 8200:8200 dtzar/helm-kubectl:2.15.0'
alias kp='docker run -it --rm -v ${PWD}:/local -v ${HOME}/dev/github/bkk-digitek/kubernetes/ace-prod:/src -e KUBECONFIG=/src/kubeconfig.yaml -p 8200:8200 dtzar/helm-kubectl:2.14.1'
alias note='open -a Notable'

# docker pull mcr.microsoft.com/azure-cli # to update image

export ZSH="/Users/tomso/.oh-my-zsh"

# Golang setup
export GOPATH=$HOME/Go
export GOROOT=/usr/local/opt/go/libexec
export GOPRIVATE=github.com/bkk-digitek
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export NETRC=$(cat ~/.netrc)

export GPG_TTY=$(tty)

if [ -f “${HOME}/.gpg-agent-info” ]; then
. “${HOME}/.gpg-agent-info”
export GPG_AGENT_INFO
export SSH_AUTH_SOCK
fi

ZSH_THEME="cloud"

HIST_STAMPS="dd.mm.yyyy"

plugins=(git)

source $ZSH/oh-my-zsh.sh

cd dev/github/bkk-digitek
