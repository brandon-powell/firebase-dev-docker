FROM node:6

RUN npm install -g firebase-tools
RUN npm install -g @google-cloud/functions-emulator

# Retreive firebase non-interactive token from firebase login:ci
ENV FIREBASE_TOKEN **TOKEN_HERE**

ADD config.json /root/.config/configstore/@google-cloud/functions-emulator/config.json
ADD fb-config.json /root/.config/configstore/firebase-tools.json