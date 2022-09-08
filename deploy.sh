#!/bin/bash

echo "DEPLOYMENT_SOURCE: $DEPLOYMENT_SOURCE"
echo "DEPLOYMENT_TARGET: $DEPLOYMENT_TARGET"

echo 'Install JQ'
wget -O jq https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64
chmod u+x ./jq
mv jq /usr/bin

echo 'Copy wwwroot folder'
copy -r /home/site/repository/wwwroot /home/site/wwwroot/wwwroot
