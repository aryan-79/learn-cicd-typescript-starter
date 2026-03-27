FROM node:24-slim

WORKDIR /usr/src/app

COPY . .

RUN npm ci

RUN npm run build

CMD ["node", "dist/main.js"]
