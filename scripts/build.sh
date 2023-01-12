#!/bin/bash

SCRIPT_PATH="$( cd "$(dirname "$0")" && pwd -P)"

sam build \
    -t "$SCRIPT_PATH/../sam/template.yaml" \
    --use-container
