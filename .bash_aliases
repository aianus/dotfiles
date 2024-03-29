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
alias switch-to-gitpod="aws --profile gitpod-eks eks update-kubeconfig --name gitpod-eks-cluster"
alias enable-repo-creation="curl -v --request PUT --header \"PRIVATE-TOKEN: $GITLAB_ACCESS_TOKEN\" --url 'https://gitlab.com/api/v4/groups/616049?project_creation_level=maintainer'"
alias disable-repo-creation="curl -v --request PUT --header \"PRIVATE-TOKEN: $GITLAB_ACCESS_TOKEN\" --url 'https://gitlab.com/api/v4/groups/616049?project_creation_level=noone'"
