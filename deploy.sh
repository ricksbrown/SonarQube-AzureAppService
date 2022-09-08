#!/bin/bash

echo 'Install JQ'
wget -O jq https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64
chmod +x ./jq
mv jq /usr/bin

echo 'Copy wwwroot folder'
copy -r wwwroot ../wwwroot
