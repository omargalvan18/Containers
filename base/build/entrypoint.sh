#!/bin/sh

USER_ID=${UID:-100}
GROUP_ID=${GID:-100}
USER_NAME=${USERNAME:-user}
USER_HOME="/home/$USER_NAME"

if ! id -u "$USER_NAME" > /dev/null 2>&1; then
	if [ ! -d "$USER_HOME" ]; then
		useradd -m "$USER_NAME"
	else
		useradd -d "$USER_HOME" "$USER_NAME"
	fi
fi

export TERM="xterm-256color"

exec gosu "$USER_NAME" bash

