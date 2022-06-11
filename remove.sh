#!/bin/bash
cd resources/layers/java/common
sls remove --stage dev-test --region us-west-1

cd ../../nodejs/common
sls remove --stage dev-test --region us-west-1

cd ../../../../services/java
sls remove --stage dev-test --region us-west-1
rm -rf node_modules

cd ../nodejs
sls remove --stage dev-test --region us-west-1
rm -rf node_modules
