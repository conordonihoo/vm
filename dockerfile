# base os image
FROM ubuntu:latest

# standard update
RUN apt-get update -y

# home directory
ENV HOME="/home"

# encode
ENV LC_CTYPE "en_US.UTF-8"
ENV LANG "en_US.UTF-8"
ENV TERM="xterm-256color"

# dependencies
RUN apt-get install -y python3
RUN apt-get install -y gcc
RUN apt-get install -y vim
RUN apt-get install -y direnv
RUN apt-get install -y tmux
RUN apt-get install -y git
RUN apt-get install -y curl

# dotfiles
RUN git clone https://github.com/conordonihoo/dotfiles.git && cd dotfiles && git pull
RUN cd dotfiles && ./install.sh

# working directory
WORKDIR $HOME
