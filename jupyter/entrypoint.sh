#!/bin/sh

USER_NAME=jupyter
USER_HOME="/home/$USER_NAME"

if ! id -u "$USER_NAME" > /dev/null 2>&1; then
	if [ ! -d "$USER_HOME" ]; then
		useradd -m "$USER_NAME"
	else
		useradd -d "$USER_HOME" "$USER_NAME"
	fi
fi

if [ -d /content ]; then
    chown -R $USER_NAME:$USER_NAME /content
else
    mkdir -p /content
    chown -R $USER_NAME:$USER_NAME /content
fi

if [ -d "$USER_HOME/.jupyter" ]; then
    chown -R $USER_NAME:$USER_NAME "$USER_HOME/.jupyter"
else
    mkdir -p "$USER_HOME/.jupyter"
    chown -R $USER_NAME:$USER_NAME "$USER_HOME/.jupyter"t
fi

export TERM="xterm-256color"

exec gosu jupyter "$@"

