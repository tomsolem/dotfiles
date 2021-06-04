alias myip="curl http://ipecho.net/plain; echo"
alias l="ls -al"
alias azure='docker run -it --rm -v ${PWD}:/local -v ${HOME}/.ssh:/root/.ssh -v ${HOME}/dev:/tmp/dev mcr.microsoft.com/azure-cli'
#alias snyk='docker run -it --rm -v ${PWD}:/local -v ${HOME}/.ssh:/root/.ssh -v ${PWD}:/project -e SNYK_TOKEN= snyk/snyk-cli:npm'
#alias kt='docker run -it --rm -v ${PWD}:/local -v ${HOME}/dev/github/bkk-digitek/kubernetes/ace-test:/src -e KUBECONFIG=/src/kubeconfig.yaml -p 8200:8200 dtzar/helm-kubectl:2.15.0'
alias ki='docker run -it --rm -v ${PWD}:/local -v ${HOME}/dev/github/bkk-digitek/kubernetes/ace-tools-001:/src -e KUBECONFIG=/src/kubeconfig.yaml -p 8200:8200 dtzar/helm-kubectl:2.15.0'
#alias kp='docker run -it --rm -v ${PWD}:/local -v ${HOME}/dev/github/bkk-digitek/kubernetes/ace-prod:/src -e KUBECONFIG=/src/kubeconfig.yaml -p 8200:8200 dtzar/helm-kubectl:2.14.1'
alias note='open -a Notable'

alias kd='docker run -it --rm -v ${HOME}/.ssh:/root/.ssh:ro -v ${PWD}:/local -v ${HOME}/dev/github/bkk-digitek/kubernetes/ace-dev-01:/src -e KUBECONFIG=/src/kubeconfig.yaml -e FLUX_FORWARD_NAMESPACE=fluxcd -p 8200:8200 -p 8080:8080 cchelm3'
alias kl='docker run -it --rm -v ${HOME}/.ssh:/root/.ssh:ro -v ${PWD}:/local -v ${HOME}/.kube:/src -e KUBECONFIG=/src/config -e FLUX_FORWARD_NAMESPACE=fluxcd -p 8200:8200 -p 8080:8080 cchelm3'
alias kc='docker run -it --rm -v ${HOME}/.ssh:/root/.ssh:ro -v ${PWD}:/local -v ${HOME}/dev/github/bkk-digitek/kubernetes/ace-common-01:/src -e KUBECONFIG=/src/kubeconfig.yaml -e FLUX_FORWARD_NAMESPACE=fluxcd -p 8200:8200 -p 8080:8080 -p 9090:9090 -p 80:80 cchelm3'
alias kt='docker run -it --rm -v ${HOME}/.ssh:/root/.ssh:ro -v ${PWD}:/local -v ${HOME}/dev/github/bkk-digitek/kubernetes/ace-test-01:/src -e KUBECONFIG=/src/kubeconfig.yaml -e FLUX_FORWARD_NAMESPACE=fluxcd -p 8200:8200 -p 8080:8080 cchelm3'
alias kp='docker run -it --rm -v ${HOME}/.ssh:/root/.ssh:ro -v ${PWD}:/local -v ${HOME}/dev/github/bkk-digitek/kubernetes/ace-prod-01:/src -e KUBECONFIG=/src/kubeconfig.yaml -e FLUX_FORWARD_NAMESPACE=fluxcd -p 8200:8200 -p 8080:8080 cchelm3'

alias gp='git pull'
alias gclean='git checkout main | git branch | grep -v "master\|main" | xargs git branch -D'

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

export PATH=$HOME/.dotfiles/bin:$PATH

ZSH_THEME="cloud"

HIST_STAMPS="dd.mm.yyyy"

plugins=(git)

source $ZSH/oh-my-zsh.sh

cd dev/github/bkk-digitek
