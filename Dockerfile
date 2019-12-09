FROM debian:stable-slim

RUN apt-get -y update && \
    apt-get -y install git curl && \
    apt-get clean

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
