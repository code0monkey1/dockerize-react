FROM node:16

WORKDIR /app

COPY . .

RUN npm ci

RUN npm run build

RUN npm install -g serve

CMD [ "serve","build" ]