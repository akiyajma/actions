#!/usr/bin/env bash

set -e

# fail if INPUT_COMMAND is not set
if [ -z "${INPUT_COMMAND}" ]; then
  echo "Required variable \`command\` is missing"
  exit 1
fi

if [ -n "${INPUT_WORKING_DIRECTORY}" ]; then
  cd "${INPUT_WORKING_DIRECTORY}"
fi

${INPUT_COMMAND}
