#!/bin/bash

cd ~/
git clone https://github.com/koujalgi-amith/websequence-diagrams-maven-plugin.git
cd websequence-diagrams-maven-plugin
mvn clean install

file=~/.m2/repository/com/websequencediagrams/websequencediagrams-plugin/0.0.1/websequencediagrams-plugin-0.0.1.jar
if [ -f "$file" ]
then
	echo "Plugin installed."
else
	echo "Plugin couldn't be installed."
fi