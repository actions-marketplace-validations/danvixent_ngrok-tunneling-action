#!/bin/sh

changed=$(git status -s | grep server/)

file="ngrok.zip"

OS=$1

if [[ "$OS" == *"ubuntu"* ]]; then
  wget -o $file https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
elif [[ "$OS" == *"macos"* ]]; then
  wget -o $file https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-darwin-amd64.zip
else
    exit
fi