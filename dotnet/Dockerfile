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

ENV PATH="$PATH:/home/user/.dotnet/tools"

EXPOSE 8080
EXPOSE 5232

RUN apt-get install -y gosu

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
