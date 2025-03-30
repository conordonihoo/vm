#!/bin/bash
cp ~/.ssh/id_rsa.pub .
docker build --no-cache --build-arg SSH_PUBKEY=id_rsa.pub -t conordonihoo/vmbase:latest .
