#!/bin/bash
USER_ID=$(id -u)
GROUP_ID=$(id -g)
rm -rf $(pwd)/release
docker run \
	-u $USER_ID:$GROUP_ID \
	--rm \
        -e HOME=/tmp \
        --workdir /project \
	-it \
	-v $(pwd):/project \
	ghcr.io/inti-cmnb/kicad8_auto:1.6.5 kibot -c .kibot.yaml
