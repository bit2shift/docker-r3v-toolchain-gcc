FROM ubuntu:16.04

RUN apt install -y software-properties-common
RUN add-apt-repository -y ppa:ubuntu-toolchain-r-test
RUN apt update
RUN apt install -y g++-8
RUN apt clean

COPY ./entrypoint /
ENTRYPOINT ["/entrypoint"]
