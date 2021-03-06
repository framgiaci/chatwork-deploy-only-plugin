FROM ubuntu:16.04

RUN apt-get -y update && apt-get -y install curl

COPY commands.sh /scripts/commands.sh

RUN ["chmod", "+x", "/scripts/commands.sh"]

ENTRYPOINT ["/scripts/commands.sh"]

WORKDIR /
