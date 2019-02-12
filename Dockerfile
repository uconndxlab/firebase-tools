# Firebase Tools - inspired by https://github.com/w9jds/firebase-action
# Releases: https://github.com/nodejs/Release#release-schedule
FROM node:11

LABEL version="1.0.0"
LABEL repository="https://github.com/uconndxlab/firebase-tools"
LABEL homepage="https://github.com/uconndxlab/firebase-tools"
LABEL maintainer="Brian Daley <brian@uconn.edu>"

LABEL com.github.actions.name="Firebase Tools for GitHub Actions"
LABEL com.github.actions.description="Wraps the firebase-tools CLI to enable common commands."
LABEL com.github.actions.icon="upload-cloud"
LABEL com.github.actions.color="orange"

# Node user...
# (see https://github.com/nodejs/node-gyp/issues/1236)
USER node
RUN mkdir /home/node/.npm-global
ENV PATH=/home/node/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

# install firebase-tools
RUN npm install -g firebase-tools

# reset user back to root
USER root

CMD [ "--help" ]
