#!/bin/bash
# Works Only on Ubuntu 20.04

# Ask for the number of LBs
echo "How many Loadbalancers are there?"
read num_lbs

# Loop over the number of LBs
for ((i=1; i<=num_lbs; i++)); do
  # Ask for the IP of the current LB
  echo "Enter the IP of LB $i: (First IP is this Machine)"
  read ip_lb
  # Store the IP in a variable with a dynamic name
  declare  "ip_lb_$i"="$ip_lb"
done

# Loop over the number of additional LBs
for ((m=2; m<=num_lbs; m++)); do
  ip_lbs="ip_lb_$m"
  lb_list+="${!ip_lbs}\n"
done

# Ask for the number of masters
echo "How many Masters are there?"
read num_masters

# Loop over the number of masters
for ((i=1; i<=num_masters; i++)); do
    # Ask for the IP of the current master
    echo "Enter the IP of master $i:"
    read ip_master
    # Store the IP in a variable with a dynamic name
    declare "ip_master_$i=$ip_master"
    # Append a server line for the current Master to the server lines string
    server_lines+="    server kmaster$i $ip_master:6443 check fall 3 rise 2\n"
done

# Ask for the Virtual IP
echo "Enter the Virtual IP:"
read ip_virtual

# Ask for the network interface
echo "Enter the network interface Name (ip a s (ex.: eht1)):"
read name_interface

# Installation of Keepalived and HAProxy
sudo apt-get update
sudo apt-get install -y keepalived haproxy

# Creating an check_apiserver script
echo "#!/bin/sh

errorExit() {
  echo "*** $@" 1%3E&2
  exit 1
}

curl --silent --max-time 2 --insecure https://localhost:6443/ -o /dev/null || errorExit "Error GET https://localhost:6443/"
if ip addr | grep -q $ip_virtual; then
  curl --silent --max-time 2 --insecure https://$ip_virtual:6443/ -o /dev/null || errorExit "Error GET https://$ip_virtual:6443/"
fi" >> /etc/keepalived/check_apiserver.sh

# Configuring Keepalived
# Check if there is only one load balancer
if [ -z "$ip_lb_2" ]; then
  echo "global_defs {
  enable_script_security
  }
  vrrp_script check_apiserver {
  script "/etc/keepalived/check_apiserver.sh"
  interval 3
  timeout 10
  fall 5
  rise 2
  weight -2
}

vrrp_instance VI_1 {
    state BACKUP
    interface $name_interface
    virtual_router_id 1
    priority 100
    advert_int 5
    authentication {
        auth_type PASS
        auth_pass mysecret
    }
    virtual_ipaddress {
        $ip_virtual
    }
    track_script {
        check_apiserver
    }
}" >> /etc/keepalived/keepalived.conf
else
  echo -e "global_defs {
  enable_script_security
  }
  vrrp_script check_apiserver {
  script "/etc/keepalived/check_apiserver.sh"
  interval 3
  timeout 10
  fall 5
  rise 2
  weight -2
}

vrrp_instance VI_1 {
    state BACKUP
    interface $name_interface
    virtual_router_id 1
    priority 100
    advert_int 5
    authentication {
        auth_type PASS
        auth_pass mysecret
}
    virtual_ipaddress {
        $ip_virtual
}
    track_script {
        check_apiserver
}
    unicast_src_ip $ip_lb_1
    unicast_peer {
        "$lb_list"
}
}" >> /etc/keepalived/keepalived.conf
fi

sudo useradd keepalived_script #FIXME Kann keinen Benutzer mit dem Namen keepalived_script erstellen
sudo chmod +x /etc/keepalived/check_apiserver.sh #FIXME Kann der Datei keine Berechtigung erteilen

# Restarting and enabling Keepalived
systemctl restart keepalived && systemctl enable keepalived

# Configuring HAProxy
cp /etc/haproxy/haproxy.cfg /etc/haproxy/haproxy.cfg.bak
echo -e "frontend kubernetes-frontend
  bind *:6443
  mode tcp
  option tcplog
  default_backend kubernetes-backend

backend kubernetes-backend
  option httpchk GET /healthz
  http-check expect status 200
  mode tcp
  option ssl-hello-chk
  balance roundrobin
  $server_lines" >> /etc/haproxy/haproxy.cfg

# Restarting and enabling HAProxy
systemctl restart haproxy && systemctl enable haproxy

# Add Firewall Rules
sudo ufw allow 6443/tcp
sudo ufw allow 6443/udp
sudo systemctl restart ufw

# Deactivate swap
swapoff -a; sed -i '/swap/d' /etc/fstab

# Install Kernel Modules
echo "overlay
br_netfilter" >> /etc/modules-load.d/containerd.conf

modprobe overlay
modprobe br_netfilter

echo "net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables  = 1
net.ipv4.ip_forward                 = 1" >> /etc/sysctl.d/kubernetes.conf

sysctl --system

# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
chmod +x get-docker.sh
sudo sh ./get-docker.sh

# Install Kubernetes
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.28/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.28/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt update
sudo apt install kubeadm kubelet kubectl kubernetes-cni -y

# Fixing Kubernetes
sudo rm /etc/containerd/config.toml
sudo systemctl restart containerd
