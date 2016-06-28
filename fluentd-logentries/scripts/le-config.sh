#!/bin/bash

# Configure Logentries tokens

if [ -z "$LE_APP_TOKEN" ]; then
  exit 0
fi

mkdir -p /etc/logentries
cat > "/etc/logentries/tokens.yaml" << EndOfMessage
file:
  app: $LE_APP_TOKEN
EndOfMessage
