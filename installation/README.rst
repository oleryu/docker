=================
Installation guide
=================

Installation
============
#yum install -y yum-utils device-mapper-persistent-data lvm2
#yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
#yum makecache fast
#yum install docker-ce
# docker --version