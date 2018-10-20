=================
Installation guide
=================
.. code:: shell

    #yum install -y yum-utils device-mapper-persistent-data lvm2
    #yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
    #yum makecache fast
    #yum install docker-ce
    # docker --version

*   装必须的软件包
安装yum-utils，它提供一个yum-config-manager单元，同时安装的device-mapper-persistent-data和lvm2用于储存设备映射（devicemapper）必须的两个软件包。