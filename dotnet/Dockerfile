FROM ubuntu:22.04
RUN apt-get update && \
	apt-get install -y \
	wget \
	apt-transport-https \
	software-properties-common && \
	wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
	dpkg -i packages-microsoft-prod.deb && \
	apt-get update && \
	apt-get install -y dotnet-sdk-8.0

ENV PATH=$PATH:/usr/share/dotnet

RUN useradd net

RUN mkdir -p /home/net/.dotnet/tools

RUN chown -R net:net /home/net/

ENV PATH="$PATH:/home/net/.dotnet/tools"

EXPOSE 8080
EXPOSE 5232

USER net
