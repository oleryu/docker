###################################################################
# OLERY 2018-08-08
# All the better ^_^
###################################################################
FROM ubuntu/jre

MAINTAINER OLERY

ENV HDA_RELEASE_HOME=/opt/hda_release
ENV WORK_DIR=${HDA_RELEASE_HOME}
ENV PATH=${HDA_RELEASE_HOME}/olerbin:${HDA_RELEASE_HOME}/sbin:$PATH

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT [ "docker-entrypoint.sh" ]

CMD ["all_start"]