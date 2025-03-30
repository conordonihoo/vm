#!/bin/bash
docker run -it -d -p 2222:22 -v "C:/Users/conor/synced:/home/conor/synced" --name vmbase conordonihoo/vmbase:latest
