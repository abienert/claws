#!/bin/bash

abort()
{
  echo "An error occurred. Exiting..." >&2
  exit 1
}

trap 'abort' 0

set -e

echo "STAGE: " $STAGE
echo

echo "##########################################"
echo "Serverless Version"
echo "##########################################"
./node_modules/.bin/sls --version || true

echo
echo "##########################################"
echo "Configuring execution flags"
echo "##########################################"
chmod +x aws

echo
echo "##########################################"
echo "Serverless Deployment to" $STAGE
echo "##########################################"
./node_modules/.bin/sls deploy --stage $STAGE --verbose

trap : 0
