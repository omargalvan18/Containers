# Stage 1: Install dotnet
FROM ubuntu:22.04 AS dotnet
RUN apt-get update && \
	apt-get install -y \
	wget \
	apt-transport-https \
	software-properties-common && \
	wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
	dpkg -i packages-microsoft-prod.deb && \
	apt-get update && \
	apt-get install -y dotnet-sdk-8.0

# Stage 2: Install java and code-server
FROM codercom/code-server:latest

USER root
RUN apt-get update && \
    apt-get install -y openjdk-17-jdk && \
    apt-get clean

COPY --from=dotnet /usr/share/dotnet /usr/share/dotnet

ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH
ENV PATH=$PATH:/usr/share/dotnet

USER coder
RUN code-server --install-extension vscjava.vscode-java-pack

EXPOSE 8080
EXPOSE 5232

CMD ["code-server", "--bind-addr", "0.0.0.0:8080"]
