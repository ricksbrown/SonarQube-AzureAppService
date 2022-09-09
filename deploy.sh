#!/bin/bash
echo "User `whoami`"
sonar_version='9.6.1.59531'
sonar_home="`pwd`/sonarqube-${sonar_version}"

if [ ! -f jq ]
then
	echo 'Install JQ'
	wget -O jq https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64
	chmod u+x ./jq
fi

if [ ! -d $sonar_home ]
then
	echo "Install ${sonar_home}"
	wget --no-hsts "https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-${sonar_version}.zip"
	unzip "sonarqube-${sonar_version}.zip"
fi

# echo "Copy $DEPLOYMENT_SOURCE/wwwroot folder to $DEPLOYMENT_TARGET" 
# cp -r $DEPLOYMENT_SOURCE/wwwroot/** $DEPLOYMENT_TARGET



export SONARQUBE_HOME=$sonar_home
export JAVA_HOME=/opt/java/openjdk
export SONAR_JAVA_PATH="${JAVA_HOME}/bin/java"

echo "Running ${SONARQUBE_HOME}/bin/linux-x86-64/sonar.sh"
$SONARQUBE_HOME/bin/linux-x86-64/sonar.sh console
