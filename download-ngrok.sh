OS=$(echo $1 | tr '[:upper:]' '[:lower:]')

if [[ "$OS" == *"linux"* ]]; then
  echo "downloading linux version of ngrok"
  wget --output-document=ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
elif [[ "$OS" == *"mac"* ]]; then
  echo "downloading mac version of ngrok"
  wget --output-document=ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-darwin-amd64.zip
else
    exit
fi

exit 0