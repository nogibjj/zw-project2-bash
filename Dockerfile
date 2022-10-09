FROM alpine:latest
RUN apk update && apk add bash

WORKDIR /app
COPY read_n.sh /app
COPY brandirectory-ranking-global-2022.csv /app
COPY neat.sh /app
COPY sort.sh /app