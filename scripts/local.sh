#!/bin/bash

SCRIPT_PATH="$( cd "$(dirname "$0")" && pwd -P)"

# Customize this script for your running your project locally

#
# Single Lambda Function Invoke
# If your project is a cron-style lambda function, invoking that single function
# directly with the correct event input is likely sufficient.
#
# You may need to update your logical function name if you changed it.
#
sam local invoke \
LambdaFunction \
--template "$SCRIPT_PATH/../sam/template.yaml" \
--event "$SCRIPT_PATH/../events/sample-event.json" \
--region "us-west-2" \
--parameter-overrides \
    HoneycombKey="xxx" \
--debug
