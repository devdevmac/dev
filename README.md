# dev
开发机

user: docker
pass: tcuser

and sudo -s  = roor



持久分区选择
Boot2Docker将首先尝试挂载标记的分区boot2docker-data，如果不存在，它将选择ext4列出的第一个分区blkid。

本地自定义（使用持久分区）
关闭或重新启动boot2docker VM后，/var/lib/docker和/var/lib/boot2docker目录之外的更改将丢失。但是，如果您有持久性分区（由自动创建boot2docker init），则可以通过创建脚本来进行在引导初始化结束时运行的自定义/var/lib/boot2docker/bootlocal.sh。

从Boot2Docker版本1.6.0开始，您还可以指定在启动Docker守护程序之前运行的步骤/var/lib/boot2docker/bootsync.sh。

您还可以通过设置它们来设置将在引导初始化期间（自动挂载之后）使用的变量 /var/lib/boot2docker/profile

例如，要下载pipework，安装其先决条件（可以使用下载tce-load -w package.tcz），然后启动容器：

＃！/ bin / sh的


如果 [ ！ -e / var / lib / boot2docker / pipework] ;  然后
        curl -o / var / lib / boot2docker / pipework https://raw.github.com/jpetazzo/pipework/master/pipework
        chmod 777 / var / lib / boot2docker / pipework
科幻

＃需要ftp://ftp.nl.netbsd.org/vol/2/metalab/distributions/tinycorelinux/4.x/x86/tcz/bridge-utils.tcz 
＃和iproute2（和它的朋友） 
苏-泊坞窗-c “ tce-load -i /var/lib/boot2docker/*.tcz ”

＃启动我的管理容器如果   它还没有docker
运行-d -v /var/run/docker.sock:/var/run/docker.sock $（哪个docker ）： $（哪个 docker） -name dom0 svens-dom0
或者，如果您需要告知Docker守护程序使用特定的DNS服务器，请将以下内容添加到/var/lib/boot2docker/profile：

EXTRA_ARGS = “ $ EXTRA_ARGS --dns 192.168.1.2 ”






docker-machine ssh default -t sudo vi /var/lib/boot2docker/profile
# Add something like:
#     EXTRA_ARGS="--default-ulimit core=-1"
docker-machine restart default



docker-machine scp certfile default:ca.crt
docker-machine ssh default
sudo mv ~/ca.crt /etc/docker/certs.d/hostname/ca.crt
exit
docker-machine restart



$ docker-machine ssh default "echo $'EXTRA_ARGS=\"--insecure-registry <YOUR INSECURE HOST>\"' | sudo tee -a /var/lib/boot2docker/profile && sudo /etc/init.d/docker restart"



That means you have to forward port 2376, which can be done like so:

Open VirtualBox
Open Settings > Network for your 'default' VM
Select the adapter that is 'Attached To': 'NAT' and click 'Port Forwarding'.
Add a new rule:
Protocol: TCP
Host IP: 127.0.0.1
Host Port: 5555
Guest Port: 2376
Set DOCKER_HOST to 'tcp://127.0.0.1:5555'
SSH into VM
$ docker-machine ssh default