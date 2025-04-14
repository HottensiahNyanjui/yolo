FROM node:18-alpine

ENV NODE_OPTIONS=--openssl-legacy-provider


WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
