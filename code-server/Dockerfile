FROM codercom/code-server:latest

# Instala Java SDK (OpenJDK 17 por ejemplo)
USER root
RUN apt-get update && \
    apt-get install -y openjdk-17-jdk && \
    apt-get clean

# Establece variables de entorno
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

# Instala extensión de Java para VS Code
USER coder
RUN code-server --install-extension vscjava.vscode-java-pack

# Exponemos el puerto de VS Code Server
EXPOSE 8080

CMD ["code-server", "--bind-addr", "0.0.0.0:8080"]
