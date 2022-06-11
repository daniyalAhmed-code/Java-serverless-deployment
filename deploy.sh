#!/bin/bash
#Deploying layer for Java Project
cd services/java/mirror-request-service
mvn clean install
cd target
zip -r java-lamda-layer.zip java
mv java-lamda-layer.zip ../../../../resources/layers/java/common

cd ../../../../resources/layers/java/common

sls deploy --stage dev-test --region us-west-1
rm -r java-lamda-layer.zip

echo "JAVA LAYER DEPLOYED"


#Deploying layer for Nodeje Project
cd ../../nodejs/common
npm install
mkdir nodejs

mv node_modules nodejs
zip -r nodejs.zip  nodejs



sls deploy --stage dev-test --region us-west-1

rm -rf node_modules
rm -rf nodejs
rm -r nodejs.zip
rm -r package-lock.json

echo "NODEJS LAYER DEPLOYED"

#Deploying java project 

cd ../../../../services/java

npm install
sls deploy --stage dev-test --region us-west-1
rm  -r package-lock.json
cd mirror-request-service 

rm -rf target

echo "JAVA CODE DEPLOYED"


#Deploying NODEJS project 

cd ../../nodejs/
npm install
rm -r package-lock.json
sls deploy --stage dev-test --region us-west-1


echo "Nodejs CODE DEPLOYED"

