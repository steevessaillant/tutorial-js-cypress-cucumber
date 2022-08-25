#!/bin/bash

#BASE_URL=https://alithya-qa-demos.atlassian.net/
#token=$(curl -H "Content-Type: application/json" -X POST --data @"cloud_auth.json" "$BASE_URL/api/v1/authenticate"| tr -d '"')
#curl -H "Content-Type: application/json" -X POST -H "Authorization: Bearer $token"  --data @"merged-test-results.json" "$BASE_URL/api/v1/import/execution/cucumber"

#1_AQADX-5.json

token=$(curl -H "Content-Type: application/json" -X POST --data @"cloud_authBASE_URL="https://xray.cloud.getxray.app"
token=$(curl -H "Content-Type: application/json" -X POST --data @"cloud_auth.json" "$BASE_URL/api/v1/authenticate"| tr -d '"')
curl -H "Content-Type: application/json" -X POST -H "Authorization: Bearer $token"  --data @"cypress/cucumber-json/1_AQADX-5.cucumber.json" "$BASE_URL/api/v2/import/execution/cucumber"
.json" "https://xray.cloud.getxray.app/api/v1/authenticate"| tr -d '"')
curl -H "Content-Type: application/json" -X POST -H "Authorization: Bearer $token"  --data @"cypress/cucumber-json/1_AQADX-5.cucumber.json" "https://xray.cloud.getxray.app/api/v2/import/execution/cucumber"


#200 OK
