#!/bin/bash

echo 'Install JQ'
wget -O jq https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64

echo "Copy $DEPLOYMENT_SOURCE/wwwroot folder to $DEPLOYMENT_TARGET" 
copy -r $DEPLOYMENT_SOURCE/wwwroot $DEPLOYMENT_TARGET
