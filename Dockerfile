FROM alpine

RUN apk update; apk add openssl
RUN for i in $(seq 1 4194304); do openssl rand -base64 256 >> /data.txt; done
