# Cent OS Docker container


This container derives from the offical [centos](https://hub.docker.com/_/centos)
image but updated daily to contain the latest packages.

sudoers file is added to the image to override the default - This file removes the requiretty option
to allow the docker container to function without tty when using sudo

[![](https://images.microbadger.com/badges/image/vcatechnology/centos.svg)](http://microbadger.com/images/vcatechnology/centos "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/vcatechnology/centos.svg)](http://microbadger.com/images/vcatechnology/centos "Get your own version badge on microbadger.com")
