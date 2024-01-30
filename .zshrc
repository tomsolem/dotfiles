alias myip="curl https://api4.ipify.org; echo"
alias l="ls -al"
alias azure='docker run -it --rm -v ${PWD}:/local -v ${HOME}/.ssh:/root/.ssh -v ${HOME}/dev:/tmp/dev mcr.microsoft.com/azure-cli'
#alias snyk='docker run -it --rm -v ${PWD}:/local -v ${HOME}/.ssh:/root/.ssh -v ${PWD}:/project -e SNYK_TOKEN= snyk/snyk-cli:npm'
#alias kt='docker run -it --rm -v ${PWD}:/local -v ${HOME}/dev/github/bkk-digitek/kubernetes/ace-test:/src -e KUBECONFIG=/src/kubeconfig.yaml -p 8200:8200 dtzar/helm-kubectl:2.15.0'
alias ki='docker run -it --rm -v ${PWD}:/local -v ${HOME}/dev/github/bkk-digitek/kubernetes/ace-tools-001:/src -e KUBECONFIG=/src/kubeconfig.yaml -p 8200:8200 dtzar/helm-kubectl:2.15.0'
#alias kp='docker run -it --rm -v ${PWD}:/local -v ${HOME}/dev/github/bkk-digitek/kubernetes/ace-prod:/src -e KUBECONFIG=/src/kubeconfig.yaml -p 8200:8200 dtzar/helm-kubectl:2.14.1'
alias note='open -a Notable'

alias kd='docker run -it --rm -v ${HOME}/.ssh:/root/.ssh:ro -v ${PWD}:/local -v ${HOME}/dev/github/bkk-digitek/kubernetes/ace-dev-01:/src -e KUBECONFIG=/src/kubeconfig.yaml -e FLUX_FORWARD_NAMESPACE=fluxcd -p 8200:8200 -p 8080:8080 cc-common'
alias kl='docker run -it --rm -v ${HOME}/.ssh:/root/.ssh:ro -v ${PWD}:/local -v ${HOME}/.kube:/src -e KUBECONFIG=/src/config -e FLUX_FORWARD_NAMESPACE=fluxcd -p 8200:8200 -p 8080:8080 tpc'
alias kc='docker run -it --rm -v ${HOME}/.ssh:/root/.ssh:ro -v ${PWD}:/local -v ${HOME}/dev/github/bkk-digitek/kubernetes/ace-common-01:/src -e KUBECONFIG=/src/kubeconfig.yaml -e FLUX_FORWARD_NAMESPACE=fluxcd -p 8200:8200 -p 8080:8080 -p 9090:9090 -p 80:80 cc-common'
alias kt='docker run -it --rm -v ${HOME}/.ssh:/root/.ssh:ro -v ${PWD}:/local -v ${HOME}/dev/github/bkk-digitek/kubernetes/ace-test-01:/src -e KUBECONFIG=/src/kubeconfig.yaml -e FLUX_FORWARD_NAMESPACE=fluxcd -p 8200:8200 -p 8080:8080 cc-common' # cchelm3
alias kp='docker run -it --rm -v ${HOME}/.ssh:/root/.ssh:ro -v ${PWD}:/local -v ${HOME}/dev/github/bkk-digitek/kubernetes/ace-prod-01:/src -e KUBECONFIG=/src/kubeconfig.yaml -e FLUX_FORWARD_NAMESPACE=fluxcd -p 8200:8200 -p 8080:8080 kp-1-19-9'
alias kms='docker run -it --rm -v ${HOME}/.ssh:/root/.ssh:ro -v ${PWD}:/local -v ${HOME}/dev/github/bkk-digitek/kubernetes/msworkshop:/src -e KUBECONFIG=/src/kubeconfig.yaml -e FLUX_FORWARD_NAMESPACE=fluxcd -p 8200:8200 -p 8080:8080 tpc'
alias tpd='docker run -it --rm -v ${HOME}/.ssh:/root/.ssh:ro -v ${PWD}:/local -v ${HOME}/dev/github/bkk-digitek/kubernetes/tp-dev-01:/src -e KUBECONFIG=/src/kubeconfig.yaml -e FLUX_FORWARD_NAMESPACE=fluxcd -p 8200:8200 -p 8080:8080 tpc'
alias tpt='docker run -it --rm -v ${HOME}/.ssh:/root/.ssh:ro -v ${PWD}:/local -v ${HOME}/dev/github/bkk-digitek/kubernetes/tp-test-01:/src -e KUBECONFIG=/src/kubeconfig.yaml -e FLUX_FORWARD_NAMESPACE=fluxcd -p 8200:8200 -p 8080:8080 tpc'
alias tpp='docker run -it --rm -v ${HOME}/.ssh:/root/.ssh:ro -v ${PWD}:/local -v ${HOME}/dev/github/bkk-digitek/kubernetes/tp-prod-01:/src -e KUBECONFIG=/src/kubeconfig.yaml -e FLUX_FORWARD_NAMESPACE=flux-system -p 8200:8200 -p 8080:8080 tpc'

alias gp='git pull'
alias git-clean='git checkout main && git fetch -p | git branch | grep -v "master\|main" | xargs git branch -D'
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --disable-accelerated-video --disable-gpu &'

# docker pull mcr.microsoft.com/azure-cli # to update image

export ZSH="/Users/tomso/.oh-my-zsh"

# Golang setup
export GOPATH=$HOME/Go
export GOROOT=/usr/local/opt/go/libexec
export GOPRIVATE=github.com/bkk-digitek
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH="/Users/tomso/.deno/bin:$PATH"
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="/Users/tomso/dev/tools/azcopy_darwin_amd64_10.14.1:$PATH"
export PATH="/Users/tomso/.dotnet/tools:$PATH"
export PATH="/usr/local/bin/dotnet:$PATH"
export NETRC=$(cat ~/.netrc)

export FUNCTIONS_CORE_TOOLS_TELEMETRY_OPTOUT=true

# For compilers to find libpq you may need to set:
#  export LDFLAGS="-L/usr/local/opt/libpq/lib"
#  export CPPFLAGS="-I/usr/local/opt/libpq/include"

# For pkg-config to find libpq you may need to set:
#  export PKG_CONFIG_PATH="/usr/local/opt/libpq/lib/pkgconfig"
export GPG_TTY=$(tty)

if [ -f “${HOME}/.gpg-agent-info” ]; then
. “${HOME}/.gpg-agent-info”
export GPG_AGENT_INFO
export SSH_AUTH_SOCK
fi

export PATH=$HOME/.dotfiles/bin:$PATH

ZSH_THEME="cloud"

HIST_STAMPS="dd.mm.yyyy"

plugins=(git docker kubectl colorize)

source $ZSH/oh-my-zsh.sh

cd dev/github/bkk-digitek

. /usr/local/opt/asdf/libexec/asdf.sh
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tomso/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/tomso/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/tomso/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/tomso/google-cloud-sdk/completion.zsh.inc'; fi
