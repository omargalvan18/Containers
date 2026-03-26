docker run -it --rm \
  -p 8080:8080 \
  -v $(pwd):/home/coder/project \
  -v $(pwd)/settings.json:/home/coder/.local/share/code-server/User/settings.json \
  -u "$(id -u):$(id -g)" \
  -e "DOCKER_USER=$USER" \
  --env-file .env \
  --hostname vscode \
  vscode
