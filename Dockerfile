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

# Create install script
RUN touch                  /usr/local/bin/vca-install-package && \
  chmod +x                 /usr/local/bin/vca-install-package && \
  echo '#! /bin/sh'        >> /usr/local/bin/vca-install-package && \
  echo 'set -e'            >> /usr/local/bin/vca-install-package && \
  echo 'yum -y install $@' >> /usr/local/bin/vca-install-package && \
  echo 'yum clean all'     >> /usr/local/bin/vca-install-package
