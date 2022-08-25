# base os image
FROM ubuntu:latest

# use bash not sh
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# standard update
RUN apt-get update -y

# base directory
ENV BASEDIR "/home"

# encode
ENV LC_CTYPE "en_US.UTF-8"
ENV LANG "en_US.UTF-8"

# dependencies
RUN apt-get install -y python3
RUN apt-get install -y gcc
RUN apt-get install -y vim
RUN apt-get install -y direnv
RUN apt-get install -y tmux
RUN apt-get install -y git

# dotfiles
RUN cd $BASEDIR && git clone https://github.com/conordonihoo/dotfiles.git && cd dotfiles && git pull
RUN cd $BASEDIR/dotfiles && source ./install.sh

# working directory
WORKDIR $BASEDIR
