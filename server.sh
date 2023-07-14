#!/bin/bash
# docker build -t sim . && \
# docker run --device=/dev/tty0:rw -it --rm --gpus all \
docker build -t x11gl . && \
docker run --privileged -it --rm --gpus all \
  -p 8081:8081 \
  -e RESOLUTION=1280x720 \
  -e VNCPASS=pass \
  --name x11gl x11gl
  # --name sim sim

  # -v $HOME/hoge:/hoge:ro \
