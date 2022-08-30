#!/bin/bash

BASE_URL=https://xray.cloud.getxray.app
# here KEYS will contain Test Execution Keys that contains the test ,if you specify the test keys instead a new execution will created and WE DO NOT WANT THIS
# in order to reuse a test execution we must asscociate the test issue to the specifed executions 
if( ${{ env.BROWSER }} == "chrome")
    then
        KEYS="AQADX-46"  # use testExecKeys not directly test keys
elif(${{ env.BROWSER }} == "firefox")
    then    
        KEYS="AQADX-45"  # use testExecKeys not directly test keys
else
    KEYS="AQADX-30"  # use testExecKeys not directly test keys
fi
token=$(curl -H "Content-Type: application/json" -X POST --data @"cloud_auth.json" $BASE_URL/api/v1/authenticate| tr -d '"')
curl -H "Content-Type: application/json" -X GET -H "Authorization: Bearer $token" "$BASE_URL/api/v1/export/cucumber?keys=$KEYS" -o features.zip

rm -rf cypress/integration/authentication/*.feature
unzip -o features.zip -d cypress/integration/authentication
