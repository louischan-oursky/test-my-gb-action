FROM node:lts

WORKDIR /work
COPY package.json package-lock.json ./
RUN npm ci

COPY . .
RUN npm run build
