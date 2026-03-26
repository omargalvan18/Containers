docker run -it --rm \
  -e UID=$UID \
  -e GID=$GID \
  -p 5232:5232 \
  -v "$(pwd)":"/home/project" \
  -w /home/project \
  --hostname dotnet \
  dotnet
