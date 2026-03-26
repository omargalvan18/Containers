FROM codercom/code-server:4.111.0-focal

USER root
RUN apt-get update && \
    ln -fs /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
    apt-get install -y tzdata && \
    dpkg-reconfigure -f noninteractive tzdata && \
    apt-get install -y openjdk-17-jdk && \
    apt-get clean

ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

USER coder
RUN code-server --install-extension vscjava.vscode-java-pack

EXPOSE 8080

CMD ["code-server", "--bind-addr", "0.0.0.0:8080"]
