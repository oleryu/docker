#容器主机名
CONTAINER_HOSTNAME=
#容器网络
CONTAINER_NET=
#容器IP
CONTAINER_IP=
#宿主HOST
HOST_DOMAIN=
#容器名称
CONTAINER_NAME=

docker run -it -d \
    -h ${CONTAINER_HOSTNAME} \
    --net ${CONTAINER_NET} \
    --ip ${CONTAINER_IP} \
    --add-host ${HOST_DOMAIN} \
    --add-host bbzk:172.15.0.102 \
    --name ${CONTAINER_NAME} \
    -p 7881:8881 \
    -p 7885:8885 \
    -p 7082:8082 \
#    -v /etc/timezone:/etc/timezone \
    -v /etc/localtime:/etc/localtime \
    -v /opt/image-volume/hda_release:/opt/hda_release \
    -v  /opt/trading-ci:/opt/trading-ci \
    -e HDA_RELEASE_HOME=/opt/hda_release \
    -w ${CONTAINER_WORKDIR} ${IMAGE_NAME}
#   all_start
-----------------------------------------------------------------
如果指定 all_start CMD 或其他 CMD，将替换默认的 CMD,
