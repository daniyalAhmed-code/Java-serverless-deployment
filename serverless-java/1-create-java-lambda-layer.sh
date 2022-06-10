#!/bin/bash
mvn clean install
cd Lambda-Layers
mvn clean install
cp -r target/java  java
zip -r java.zip java 
cd ..
mkdir layer
mv ./Lambda-Layers-Base/java.zip  layer