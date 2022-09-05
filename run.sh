#!/usr/bin/env bash
#
# run.sh wrapper for running oim-runner
#
# 2022-09-05 Christian Stelter

CLOUDS_YAML=${CLOUDS_YAML:-clouds.yaml}
IMAGES=${IMAGES:-etc/images/}

echo "Using $CLOUDS_YAML and $IMAGES for oim-runner..."

docker run --rm -v $CLOUDS_YAML:/opt/openstack-image-manager/clouds.yml -v $IMAGES_DIR:/opt/openstack-image-manager/etc/images oim-runner:dev tox $@
