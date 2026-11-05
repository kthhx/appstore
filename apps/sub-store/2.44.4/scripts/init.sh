#!/bin/bash

[ -f ./.env ] && source ./.env

# Default image name without pre-install environment
# renovate: datasource=docker depName=xream/sub-store
IMAGE=xream/sub-store:2.44.4

{
  # Retain the original environment variables
  grep -vE '^SUB_STORE_IMAGE=' ./.env 2>/dev/null

  if [ -n "$PRE_INSTALLED" ]; then
    # Change images with pre-install environment
    IMAGE=$IMAGE-$PRE_INSTALLED
  fi
  echo "SUB_STORE_IMAGE=${IMAGE}"
} > ./.env.tmp && mv ./.env.tmp ./.env
