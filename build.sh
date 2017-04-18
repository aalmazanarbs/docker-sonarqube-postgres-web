#!/bin/sh

echo 'Downloading Sonar plugins'

mkdir -p extensions-plugins
mkdir -p bundled-plugins

curl -sL https://sonarsource.bintray.com/Distribution/sonar-scm-git-plugin/sonar-scm-git-plugin-1.2.jar --output bundled-plugins/sonar-scm-git-plugin-1.2.jar
curl -sL https://github.com/racodond/sonar-css-plugin/releases/download/4.0/sonar-css-plugin-4.0.jar --output bundled-plugins/sonar-css-plugin-4.0.jar
curl -sL https://github.com/SonarSource/sonar-javascript/releases/download/2.21-RC1/sonar-javascript-plugin-2.21.0.4409.jar --output bundled-plugins/sonar-javascript-plugin-2.21.0.4409.jar
curl -sL https://github.com/Pablissimo/SonarTsPlugin/releases/download/v1.1.0/sonar-typescript-plugin-1.1.0.jar --output bundled-plugins/sonar-typescript-plugin-1.1.0.jar
curl -sL https://sonarsource.bintray.com/Distribution/sonar-web-plugin/sonar-web-plugin-2.5.0.476.jar --output bundled-plugins/sonar-web-plugin-2.5.0.476.jar
curl -sL https://sonarsource.bintray.com/Distribution/sonar-xml-plugin/sonar-xml-plugin-1.4.2.885.jar --output bundled-plugins/sonar-xml-plugin-1.4.2.885.jar

echo 'Running Docker'
docker-compose up -d