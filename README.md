# websequence-diagrams-maven-plugin
Original work: https://github.com/efinery/maven-websequencediagrams-plugin

Clone this project and build:

```sh
cd ~/
git clone https://github.com/koujalgi-amith/websequence-diagrams-maven-plugin.git
cd websequence-diagrams-maven-plugin
mvn clean install
```

Sample usage in your maven project:

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
