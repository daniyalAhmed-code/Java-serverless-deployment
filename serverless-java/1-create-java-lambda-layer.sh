#!/bin/bash
mvn clean install
cd Lambda-Layers
cp -r target/java  java
zip -r java.zip java 
mkdir layer
mv java.zip  layer