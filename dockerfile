# base os image
FROM ubuntu:latest

# standard update
RUN apt-get update -y

# encode
ENV LC_CTYPE "en_US.UTF-8"
ENV LANG "en_US.UTF-8"

# dependencies
RUN apt-get install -y python3
RUN apt-get install -y gcc
# TODO: add homebrew, vim, tmux, git, and the dockerfile repo

# working directory
WORKDIR /home
