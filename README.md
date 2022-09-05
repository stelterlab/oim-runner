# oim-runner

Container for running OSISM openstack-image-manager (example/POC)

## Prepare

```
$ docker build -t oim-runner:dev .
```

to build the docker container in local docker env

## Usage

Set CLOUDS to your clouds.yaml file with the necessary admin creds of your OpenStack cloud and
IMAGES to the directory holding your image sources (Ubuntu, Debian, CirrOS etc).

Defaults to clouds.yaml and etc/images in your current working directory.

If you are using your own onsite container registry, push the container in the appropriate
repositiory and set RUNNER_IMAGE accordingly.

```
$ ./run.sh

or with the required arguments (mind the dash dash - it's calling tox)

$ ./run.sh -- --dry-run
```
