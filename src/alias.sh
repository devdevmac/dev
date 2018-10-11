#!/usr/bin/env bash
alias dm="docker-machine"
alias dc="docker-compose"
alias dk="doccker"
alias d-help="echo 'Docker Machine命令列表如下：
  命令
  说明

  active
  查看当前激活状态的Docker主机
  config
  查看到激活Docker主机的连接信息
  create
  创建一个Docker主机
  env
  显示连接到某个主机需要的环境变量
  inspect
  以json格式输出指定Docker主机的详细信息
  ip
  获取指定的Docker主机地址
  kill
  直接杀死指定的Docker主机
  ls
  列出所有管理的主机
  regenerate-certs
  为某个主机重新生成TLS认证信息
  restart
  重启指定Docker主机
  rm
  删除某台Docker主机。对应虚拟机会被删除
  scp
  在Docker主机之间以及Docker主机和本地之间通过scp命令来远程复制文件
  ssh
  通过SSH连接到主机上，执行命令
  start
  启动一个指定的Docker主机。如果对象是虚拟机，该虚拟机将被启动
  status
  获取指定Docker主机的状态，包括Running、Paused、Saved、Stopped、Stopping、Starting、Error等
  stop
  停止一个Docker主机
  upgrade
  将指定主机的Docker版本更新为最新
  url
  获取指定Docker主机的监听URL
  help，h
  输出帮助信息
_________________________________________________
create 的话
创建一个Docker主机。
选项包括：


–dirve，-d “none”指定驱动类型；
–engine-install-url “https://get.docker.com” 配置Docker主机时候的安装URL;
–engine-opt option 以键值对格式指定所创建Docker引擎的参数；
–engine-insecure-registry option 以键值对格式指定所创建Docker引擎允许访问的不支持认证的注册仓库服务；
–engine-registry-mirror option 指定使用注册仓库镜像；
–engine-label option 为所创建的Docker引擎添加标签；
–engine-storage-driver 存储后端驱动类型；
–engine-env option 指定环境变量；
–swarm 指定使用Swarm；
–swarm-image “swarm:latest”使用Swarm时候采用的镜像；
–swarm-master 配置集群作为Swarm集群的master节点；
–swarm-discovery Swarm 集群的服务发现机制参数；
–swarm-strategy “spread” Swarm默认调度策略；
–swarm-opt option 任意传递给Swarm的参数；
–swarm-host “tcp://0.0.0.0:3376” 指定地址将监听Swarm master节点请求；
–swarm-addr 从指定地址发送广播加入Swarm集群服务。

---------------------
'"