1. 总体策略
基于ubuntu，COPY 到zkui程序和java到镜像，配置启动容器实例时执行startup.sh脚本
ubuntu/zkui   latest              6f0db949a6d8        17 hours ago        284MB

startup.sh 配置环境变量，启动程序

总体策略：
构建的镜像尽可能的小：执行 COPY 目录操作；尽量规避COPY 打包/压缩文件，然后再解压。
启动容器实例时尽可能执行的快：将所需资源准备好，构建镜像时装载到镜像上，尽量避免到云上拉取资源。
2. 构建资源目录结构
-zkui
  -jdk1.8.0_91
    -jre
  -startup.sh
  -zkui
    -config.cfg
    -zkui-2.0-SNAPSHOT-jar-with-dependencies.jar
    -zkui.h2.db
    -zkui-out.log

基于 ubuntu 镜像
部署（拷贝）zkui到 /opt目录下
zkui 下包括JAVA运行环境(jre)/zkui JAVA程序/启动脚本
注：如果jdk完整版（354M，其中jre 187M），构建的镜像也较大。

