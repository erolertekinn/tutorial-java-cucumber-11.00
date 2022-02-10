#!/bin/bash

rm -f features.zip
zip -r features.zip src/test/resources/calculator/ -i \*.feature
curl -H "Content-Type: multipart/form-data" -u admin:admin -F "file=@features.zip" "https://uebungxray.atlassian.net/rest/raven/1.0/import/feature?projectKey=CAL"
