###################################################################
# OLERY 2018-09-21
# All the better ^_^
# @dev.olery.xyz
###################################################################
FROM ubuntu

MAINTAINER OLERY

ENV ETH_RELEASE_HOME=/opt/eth_release
ENV WORK_DIR=${ETH_RELEASE_HOME}
ENV PATH=${ETH_RELEASE_HOME}/olerbin:${ETH_RELEASE_HOME}/sbin:$PATH
ENV LANG C.UTF-8

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT [ "docker-entrypoint.sh" ]

CMD ["all_start"]