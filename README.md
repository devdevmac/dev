# dev
开发机

user: docker
pass: tcuser

and sudo -s  = roor


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