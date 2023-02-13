FROM node:current-alpine
RUN apk add  --update --no-cache openssh git
WORKDIR .
ADD .releaserc .
RUN npm i -g -D semantic-release@20 @semantic-release/commit-analyzer @semantic-release/release-notes-generator @semantic-release/github @semantic-release/git @semantic-release/changelog
RUN [ ! -f "package.json" ] && npm init -y
