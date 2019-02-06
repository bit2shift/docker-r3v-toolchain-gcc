FROM ubuntu:16.04

RUN add-apt-repository ppa:ubuntu-toolchain-r-test
RUN apt update
RUN apt install -y g++-8
RUN apt clean

COPY ./entrypoint /
ENTRYPOINT ["/entrypoint"]
