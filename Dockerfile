FROM centos
MAINTAINER VCA Technology <developers@vcatechnology.com>

# Update all packages
RUN yum -y update && \
  yum clean all
