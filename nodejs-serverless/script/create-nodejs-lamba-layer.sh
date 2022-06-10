#!/bin/bash
npm install
mkdir nodejs

mv node_modules nodejs
zip -r nodejs.zip  nodejs

rm -rf node_modules
rm -rf nodejs

cd code

sls deploy --stage dev-test --region us-west-1