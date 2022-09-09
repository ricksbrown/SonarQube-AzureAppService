#!/bin/bash

echo 'Install JQ'
wget -O jq https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64
chmod u+x ./jq

# echo "Copy $DEPLOYMENT_SOURCE/wwwroot folder to $DEPLOYMENT_TARGET" 
# cp -r $DEPLOYMENT_SOURCE/wwwroot/** $DEPLOYMENT_TARGET

$sonar_version='9.6.1.59531'
wget "https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-${sonar_version}.zip"
unzip "sonarqube-${sonar_version}.zip"
export SONARQUBE_HOME="`pwd`/sonarqube-${sonar_version}"
$SONARQUBE_HOME/bin/linux-x86-64/sonar.sh console
