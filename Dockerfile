FROM ubuntu:16.04

RUN echo "deb http://ppa.launchpad.net/ubuntu-toolchain-r/test/ubuntu xenial main" >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 60C31780
RUN apt-get update
RUN apt-get install -y g++-8
RUN apt-get clean
