#!/bin/sh
export HOME=/config/home
mkdir -p $HOME
while `true`; do
  cd /mqttexplorer && yarn start --no-sandbox --user-data-dir=/config/mqttexplorer
done
