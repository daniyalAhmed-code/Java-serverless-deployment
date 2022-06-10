#!/bin/bash
cd Lambda-Layers-Base
mvn clean install
cp -r target/java  java
zip -r java.zip java 