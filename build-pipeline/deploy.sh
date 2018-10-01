#!/usr/bin/env bash

set -eu -o pipefail

export AWS_REGION=ap-southeast-2

aws cloudformation deploy --template-file stack.yml \
                          --stack-name claws-codebuild-project \
                          --capabilities CAPABILITY_IAM \
                          --parameter-overrides Stage=prod \
                                                SourceRepository='https://github.com/abienert/claws.git' \
                          --no-fail-on-empty-changeset \
                          --region $AWS_REGION
