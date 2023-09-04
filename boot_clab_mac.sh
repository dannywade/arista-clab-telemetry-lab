#!/bin/sh

CLAB_WORKDIR=$(pwd)

# Script to run containerlab in Docker
docker run --rm -it --privileged \
    --network host \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /run/netns:/run/netns \
    --pid="host" \
    -w $CLAB_WORKDIR \
    -v $CLAB_WORKDIR:$CLAB_WORKDIR \
    ghcr.io/srl-labs/clab bash

