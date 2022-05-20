#!/bin/bash

set -eu

REPO_URL=https://github.com/odan-sandbox/fargate-github-runner-sandbox
ACCESS_TOKEN=${ACCESS_TOKEN:-}

docker run --name github-runner \
  -e REPO_URL=$REPO_URL \
  -e RUNNER_NAME="test-runner" \
  -e ACCESS_TOKEN=$ACCESS_TOKEN \
  -v /var/run/docker.sock:/var/run/docker.sock \
  myoung34/github-runner:latest
