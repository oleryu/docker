1.容器列表（虚拟主机）                         <br>
  --container_name                             <br>
  jm_server     app-srvs    应用服务           <br>
  jm_zk-cluster zk-cluster  zookeeper 集群服务 <br>
  jm_mqserver   mq-server   mq 服务            <br>
2.网络                                         <br>
  jmnet                                        <br>
3.（虚拟）主机名                               <br>
  jmsrvs                                       <br>
  jm-zk                                        <br>
  jm-mqs                                       <br>
4.服务依赖                                     <br>
depends_on 依赖的服务，优先启动                <br>  
  本示例：jm_zk-cluster，jm_mqserver 优先启动。<br> 
  
  
其他：
services  所有服务根节点

未完，待续
https://www.cnblogs.com/youclk/p/8453526.html
  