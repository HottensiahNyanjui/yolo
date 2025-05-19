FROM node:18-alpine AS build

ENV NODE_OPTIONS=--openssl-legacy-provider

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install

COPY . .

FROM node:18-alpine

ENV NODE_OPTIONS=--openssl-legacy-provider

WORKDIR /app

COPY --from=build /app /app

RUN npm cache clean --force

EXPOSE 3000

CMD ["npm", "start"]

