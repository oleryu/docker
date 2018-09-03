镜像设计方案
|-----|  <- 容器
|-----|     基于 ubuntu/jre
|-----|     docker-entrypoint.sh  /usr/local/bin
|-----|
[-----] <==> ||||||| <- 宿主主机
          挂载宿主主机目录
  /|\
HDA_RELEASE_HOME 应用程序根目录

HDA_RELEASE_HOME 目录结构
+ ...                #应用程序目录
- olerbin
  > member_start.sh  #应用启动脚本
  > ...              #其他应用启动脚本
  > all_start.sh     #启动脚本
  > all_start        #all_start.sh link

 HDA_RELEASE_HOME     Dockerfile 构建镜像时设置
 olerbin              Dockerfile 构建镜像时设置，PATH
 docker-entrypoint.sh Dockerfile 构建时COPY到镜像的 /usr/local/bin 目录下。
                      容器实例化是执行CMD ["all_start"]