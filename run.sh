#!/bin/bash

set -e

echo "Python Path"
which python

echo "Python Version"
python --version

echo "AWS Version"
./aws --version
