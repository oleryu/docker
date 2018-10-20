=================
Installation guide
=================
.. code:: shell

    #yum install -y yum-utils device-mapper-persistent-data lvm2
    #yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
    #yum makecache fast
    #yum install docker-ce
    #docker --version



1. 装必须的软件包: 安装yum-utils，它提供一个yum-config-manager单元，同时安装的device-mapper-persistent-data和lvm2用于储存设备映射（devicemapper）必须的两个软件包。
2. 配置一个稳定（stable）的仓库，仓库配置会保存到/etc/yum.repos.d/docker-ce.repo文件中。
3. 更新Yum安装的相关Docke软件包

Note: No package docker-ce available.
    #yum install epel-release

=================
启动服务
=================
    # systemctl start docker

    # systemctl stop docker
其他兼容命令
    # service docker start
    Redirecting to /bin/systemctl start docker.service
设置随系统启动
    #systemctl enable docker.service

=================
卸载 Docker
=================

    #yum list installed | grep docker
    ...

    未完待续...

配置 Docker 国内镜像
--------

    在国内，可以通过registry.docker-cn.com访问官方镜像库，目前该镜像库只包含流行的公有镜像，而私有镜像仍需要从美国镜像库中拉取。

    配置Docker中国区官方镜像

    #vi daemon.json
    {
    "registry-mirrors": ["https://registry.docker-cn.com"]
    }

    国内镜像daocloud.io
    {"registry-mirrors": ["http://1b8541c6.m.daocloud.io"]}

参考：
https://docs.docker.com/install/linux/docker-ce/centos/


docker.oleryu.xyz
docker.oleryu.cn
