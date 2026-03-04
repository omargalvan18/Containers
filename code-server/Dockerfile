# Stage 1: builder
FROM codercom/code-server:latest AS builder

USER root
RUN apt-get update && \
    apt-get install -y openjdk-17-jdk && \
    apt-get clean

ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

# Stage 2: final image
FROM codercom/code-server:latest

COPY --from=builder /usr/lib/jvm/java-17-openjdk-amd64 /usr/lib/jvm/java-17-openjdk-amd64

ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

USER coder
RUN code-server --install-extension vscjava.vscode-java-pack

EXPOSE 8080

CMD ["code-server", "--bind-addr", "0.0.0.0:8080"]
