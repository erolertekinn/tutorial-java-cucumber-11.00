#!/bin/bash

FEATURES_FILE=features.zip

rm -f $FEATURES_FILE
curl -u admin:admin  "https://uebungxray.atlassian.net/rest/raven/1.0/export/test?keys=CAL-2;CALC-3&fz=true" -o $FEATURES_FILE
rm -f features/*.feature
unzip -o $FEATURES_FILE  -d features
