FROM node:19

WORKDIR /work

ADD package.json /work/package.json
ADD package-lock.json /work/package-lock.json
RUN npm install

ADD bin/ /work/bin

ADD scripts/ /work/scripts

CMD bin/hubot -a slack
