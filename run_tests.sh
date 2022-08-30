#!/bin/bash
npm run attach_screenshots
node_modules/cucumber-json-merge/bin/cucumber-json-merge  -d cypress/cucumber-json/
npm run attach_screenshots
