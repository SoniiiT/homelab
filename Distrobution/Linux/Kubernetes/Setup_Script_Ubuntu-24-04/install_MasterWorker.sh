#!/bin/bash
# Works Only on Ubuntu 24.04

sudo apt update && sudo apt upgrade -y

# Install Docker
sudo apt install -y docker.io

# Install Kubernetes
echo "deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.30/deb/ /" | sudo tee /etc/apt/sources.list.d/kubernetes.list
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.30/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
sudo apt update
sudo apt install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl

# Deactivate swap
sudo swapoff -a
sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab

# # Install Kernel Modules
# echo "overlay
# br_netfilter" >> /etc/modules-load.d/containerd.conf

# modprobe overlay
# modprobe br_netfilter

# echo "net.bridge.bridge-nf-call-ip6tables = 1
# net.bridge.bridge-nf-call-iptables  = 1
# net.ipv4.ip_forward                 = 1" >> /etc/sysctl.d/kubernetes.conf

# sysctl --system

# # Fixing Kubernetes
# sudo rm /etc/containerd/config.toml
# sudo systemctl restart containerd
