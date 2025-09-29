#!/bin/bash
set -xev
podman build . -t literary-clock
podman run -v ./images:/images literary-clock