alias tf=terraform
alias dcr='docker-compose run'
alias dcra='docker-compose run -e DISABLE_SPRING=true api bundle exec'
alias b2m="git checkout master && git pull --rebase origin master"
alias gpo="git push origin"
alias gpfo="git push -f origin"
alias grm="git rebase master"
alias gcm="git commit -m"
alias gcam="git commit -am"
alias gcb="git checkout -b"
alias gco="git checkout"
alias switch-to-staging="aws --profile staging-eks eks update-kubeconfig --name snaptravel-staging-eks"
alias switch-to-production="aws --profile production-eks eks update-kubeconfig --name snaptravel-production-eks"
alias switch-to-gitlab="aws --profile gitlab-eks eks update-kubeconfig --name gitlab-runner-cluster"
