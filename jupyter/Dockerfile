FROM ubuntu:22.04

RUN apt-get update && \
	ln -fs /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
	apt-get install -y tzdata && \
	dpkg-reconfigure -f noninteractive tzdata && \
	apt-get install -y \
	python3 \
	python3-pip \
	gosu \
	bash \
	vim \
	gcc \
	make \
	wget \
	sudo 

RUN pip3 install --upgrade pip

RUN pip3 install jupyter

RUN pip3 install pandas

RUN pip3 install matplotlib

RUN pip3 install torch

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
