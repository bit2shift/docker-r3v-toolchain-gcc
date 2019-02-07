FROM ubuntu:16.04
RUN echo "deb http://ppa.launchpad.net/ubuntu-toolchain-r/test/ubuntu xenial main" >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 60C317803A41BA51845E371A1E9377A2BA9EF27F
RUN apt-get update
RUN apt-get install -y g++-8
RUN apt-get autoremove -y
RUN apt-get clean
