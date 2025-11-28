docker run -it --rm \
  -p 8080:8080 \
  -e PASSWORD=${PASSWORD} \
  -v "$(pwd)":"/home/coder/project" \
  -u "$(id -u):$(id -g)" \
  -e "DOCKER_USER=$USER" \
  --hostname vscode \
  java_docker
