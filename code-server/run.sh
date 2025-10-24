docker run -it --rm \
  -p 8080:8080 \
  -v "$HOME/.local:/home/coder/.local" \
  -v "$HOME/.config:/home/coder/.config" \
  -v "$PWD/projects:/home/coder/project" \
  --memory="2g" \
  --cpus="4" \
  -u "$(id -u):$(id -g)" \
  -e "DOCKER_USER=$USER" \
  --hostname omar-pc \
  java_docker
