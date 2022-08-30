#!/bin/bash

rm -f cypress/cucumber-json/*
npm install cypress@7.5.0 -D
npm run test
npm run attach_screenshots
node_modules/cucumber-json-merge/bin/cucumber-json-merge  -d cypress/cucumber-json/
npm run attach_screenshots
