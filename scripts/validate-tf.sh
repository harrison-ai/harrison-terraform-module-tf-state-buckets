#!/bin/bash

set -eu

CI=${CI:-false}

if [[ ${CI} == 'true' ]]
then
  echo "validating in CI"
  terraform -chdir=${GITHUB_WORKSPACE} init -backend=false
  terraform -chdir=${GITHUB_WORKSPACE} validate -json
else
  echo "validating"
  docker compose run --rm --workdir /app terraform init -backend=false
  docker compose run --rm --workdir /app terraform validate -json
fi
