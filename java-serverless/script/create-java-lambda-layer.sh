#!/bin/bash
cd code

mvn clean install
cd target

zip -r java-lamda-layer.zip java
cd ..
cd ..
sls deploy --stage dev-test --region us-west-1