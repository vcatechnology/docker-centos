FROM centos
MAINTAINER VCA Technology <developers@vcatechnology.com>

# Update all packages
RUN yum -y update && \
  yum clean all

# Generate locales
RUN cat /etc/locale.gen | expand | sed 's/^# .*$//g' | sed 's/^#$//g' | egrep -v '^$' | sed 's/^#//g' > /tmp/locale.gen \
  && mv -f /tmp/locale.gen /etc/locale.gen \
  && locale-gen
ENV LANG=en_GB.utf8
