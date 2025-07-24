FROM ubuntu:22.04

RUN apt-get update && \
	ln -fs /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
	apt-get install -y tzdata && \
	dpkg-reconfigure -f noninteractive tzdata && \
	apt-get install -y \
	gosu \
	bash \
	vim \
	gcc \
	make \
	wget \
	sudo 

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
