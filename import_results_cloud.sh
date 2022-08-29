#!/bin/bash
#test push for github action
BASE_URL=https://xray.cloud.getxray.app
token=$(curl -H "Content-Type: application/json" -X POST --data @"cloud_auth.json" "$BASE_URL/api/v1/authenticate"| tr -d '"')
curl -H "Content-Type: application/json" -H "Authorization: Bearer $token" "$BASE_URL/api/v2/import/execution/cucumber" --data @"merged-test-results.json"
