FROM node:8-alpine

MAINTAINER Zach Essel

COPY . /app
WORKDIR /app

RUN apk upgrade --update \
 && apk add --no-cache build-base \
 && apk add bash \
 && apk add make


CMD npm install --global redoc-cli \
 && make docs \
 && make docs-serve

# Build:
# docker build -t flight-info:latest .

# Run:
# docker run -p 127.0.0.1:8181:8000/tcp --rm \
#        --name flight-info -t flight-info:latest

# Stop:
# docker stop flight-info

# Debug:
# docker run -it flight-info:latest sh
# or
# docker run -it flight-info:latest bash