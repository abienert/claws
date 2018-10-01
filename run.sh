#!/bin/bash

set -e

echo "Python Version"
python --version

echo "AWS Version"
./aws --version

echo "Running AWS CLI"
./aws l
