#!/bin/bash
mvn clean install
cd target

zip -r java-lamda-layer.zip java

cd ..
sls deploy