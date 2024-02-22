# ----- build image -----

FROM node:14.15.0-alpine AS build-env

WORKDIR /app

COPY . /app
RUN npm install
RUN npm build

RUN mkdir tmp
&& cp -r build
package.json
tsconfig.json
yarn.lock
tmp