FROM node:10

LABEL maintainer "Gauvin Thibaut <gauvin.thibaut83@gmail.com>"

ARG DOCKER_USER_ID=1001

WORKDIR /home/docker/

RUN \
    npm install -g lumber-cli \
    && usermod -u ${DOCKER_USER_ID} node \
    && chown node:node -R /home/docker

USER node

COPY --chown=node:node .docker/.bashrc .docker/.pgpass /home/node/
COPY --chown=node:node . .

RUN npm install \
    && ls -alh

CMD ["node", "./bin/www"]
