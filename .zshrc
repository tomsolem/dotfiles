alias myip="curl http://ipecho.net/plain; echo"
alias l="ls -al"
alias azure="docker run -it --rm -v ${HOME}/.ssh:/root/.ssh -v ${HOME}/dev:/tmp/dev mcr.microsoft.com/azure-cli"
alias kt="docker run -it --rm -v ${HOME}/dev/github/bkk-digitek/kubernetes/ace-test:/src -e KUBECONFIG=/src/kubeconfig.yaml dtzar/helm-kubectl:2.15.0"
alias kp="docker run -it --rm -v ${HOME}dev/github/bkk-digitek/kubernetes/ace-prod:/src -e KUBECONFIG=/src/kubeconfig.yaml dtzar/helm-kubectl:2.14.1"

# docker pull mcr.microsoft.com/azure-cli

export ZSH="/Users/tomso/.oh-my-zsh"

ZSH_THEME="awesomepanda"

# HIST_STAMPS="dd.mm.yyyy"

plugins=(git)

source $ZSH/oh-my-zsh.sh


