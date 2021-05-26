FROM ubuntu:focal
WORKDIR /opt/scripts
COPY do_build.sh /opt/scripts
ENV DEBIAN_FRONTEND="noninteractive" TZ="America/Chicago"
RUN apt update && apt install -y git build-essential cmake libasound2-dev libudev-dev && mkdir /opt/source
ENTRYPOINT ["/opt/scripts/do_build.sh"]


