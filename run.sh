#!/usr/bin/env bash
#
# run.sh wrapper for running oim-runner
#
# 2022-09-05 Christian Stelter

CLOUDS=${CLOUDS:-clouds.yaml}
IMAGES=${IMAGES:-etc/images/}

# replace with your container registry path
RUNNER_IMAGE=oim-runner:dev

echo "Using $CLOUDS_YAML and $IMAGES for oim-runner..."

docker run --rm -v $CLOUDS:/opt/openstack-image-manager/clouds.yml -v $IMAGES:/opt/openstack-image-manager/etc/images $RUNNER_IMAGE tox $@
