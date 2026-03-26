FROM ubuntu:22.04

RUN apt-get update && \
	ln -fs /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
	apt-get install -y tzdata && \
	dpkg-reconfigure -f noninteractive tzdata && \
	apt-get install -y \
	texlive-xetex \
	texlive-fonts-recommended \
	texlive-plain-generic \
	python3 \
	python3-pip \
	pandoc \
	gosu \
	bash \
	wget \
	sudo 

RUN pip3 install --upgrade pip

RUN pip3 install jupyter

RUN pip3 install pandas

RUN pip3 install matplotlib

COPY entrypoint.sh /entrypoint.sh

RUN useradd jupyter

RUN mkdir /home/jupyter

RUN chown -R jupyter:jupyter /home/jupyter

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser"]
