FROM alpine:latest

LABEL version="0.1"
LABEL homepage="https://github.com/ihor-horovyi/github-action-rebase"
LABEL repository="https://github.com/ihor-horovyi/github-action-rebase"
LABEL maintainer="Ihor Horovyi"

LABEL "com.github.actions.name"="GitHub Automatic Rebase Action"
LABEL "com.github.actions.description"="Automatically rebases pull-request"
LABEL "com.github.actions.color"="green"

RUN apk --no-cache add jq bash curl git git-lfs

ADD main.sh /main.sh
ENTRYPOINT ["/main.sh"]
