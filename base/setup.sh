#!/bin/sh

docker run -it --rm \
	-e UID=$UID \
	-e GID=$GID \
	-e USERNAME=$USERNAME \
	-v /home:/home \
	-v /etc/localtime:/etc/localtime:ro \
	-v /etc/timezone:/etc/timezone:ro \
	-p 80:80 \
	-p 8080:8080 \
	--hostname base \
	--workdir $(pwd) \
	base
