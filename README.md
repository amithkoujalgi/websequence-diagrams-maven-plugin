# websequence-diagrams-maven-plugin

Original work: https://github.com/efinery/maven-websequencediagrams-plugin

This is a utility to generate sequence diagrams with simple text.

You can specify the flow in textual form, and you'd get an image representation of the flow.

You'd go something like this:

```sh
title Authentication Sequence
Alice->Bob: Authentication Request
note right of Bob: Bob thinks about it
Bob->Alice: Authentication Response
```

And it generates the following image:

![alt tag](https://raw.githubusercontent.com/koujalgi-amith/websequence-diagrams-maven-plugin/master/test.png)

This utility runs the text on the https://www.websequencediagrams.com/ server and gathers the image file. (So, this utility needs internet connection to run, of course)


# Clone this project and build:

```sh
cd ~/
git clone https://github.com/koujalgi-amith/websequence-diagrams-maven-plugin.git
cd websequence-diagrams-maven-plugin
mvn clean install
```

Here's a single-line install command:
```sh
sudo wget https://raw.githubusercontent.com/koujalgi-amith/websequence-diagrams-maven-plugin/master/build.sh -v -O build.sh; sudo chmod 777 build.sh; ./build.sh; rm -rf build.sh; rm -rf websequence-diagrams-maven-plugin
```

# Sample usage in your maven project:

```xml
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
	<modelVersion>4.0.0</modelVersion>
	<groupId>com.test</groupId>
	<artifactId>test-mvn-websequence-diagrams</artifactId>
	<version>0.0.1-SNAPSHOT</version>
	
	<build>
		<plugins>
			<plugin>
				<groupId>com.websequencediagrams</groupId>
				<artifactId>websequencediagrams-plugin</artifactId>
				<version>0.0.1</version>
				<executions>
					<execution>
						<phase>generate-resources</phase>
						<configuration>
							<style>modern-blue</style>
							<sourceDirectory>${basedir}/sequence-diagrams/sources</sourceDirectory>
							<outputDirectory>${basedir}/sequence-diagrams/generated</outputDirectory>
							<keepSources>true</keepSources>
						</configuration>
						<goals>
							<goal>generate-diagrams</goal>
						</goals>
					</execution>
				</executions>
			</plugin>
		</plugins>
	</build>

</project>
```

For more kinds of sequence diagrams and help, check https://www.websequencediagrams.com/examples.html
