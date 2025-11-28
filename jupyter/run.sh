#!/bin/sh

docker run -it --rm \
	-e UID=$UID \
	-e GID=$GID \
	-e USERNAME=$USERNAME \
	-v /etc/localtime:/etc/localtime:ro \
	-v /etc/timezone:/etc/timezone:ro \
	-v $(pwd)/projects:/content \
	-v .jupyter:/root/.jupyter/lab/user-settings/@jupyterlab/apputils-extension/ \
	-p 80:80 \
	-p 8888:8888 \
	--hostname jupyter-pc \
	--workdir /content \
	jupyter
