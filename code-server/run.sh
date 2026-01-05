docker run -it --rm \
  -p 8080:8080 \
  -v "$(pwd)":"/home/coder/project" \
  -u "$(id -u):$(id -g)" \
  -e "DOCKER_USER=$USER" \
  --env-file .env \
  --hostname vscode \
  java_docker
