FROM debian:stable-slim

LABEL "com.github.actions.name"="Meeting notes"
LABEL "com.github.actions.description"="Creates meeting notes and pushes them to meeting branch"
LABEL "com.github.actions.icon"="file"
LABEL "com.github.actions.color"="black"

RUN apt-get -y update && \
    apt-get -y install git curl && \
    apt-get clean

COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
