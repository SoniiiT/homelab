#!/bin/bash

# Install GlusterFS Repository
sudo add-apt-repository ppa:gluster/glusterfs-7
sudo apt update

# Install GlusterFS
sudo apt install glusterfs-server -y

# Start and Enable GlusterFS
sudo systemctl start glusterd.service && sudo systemctl enable glusterd.service

# How to use GlusterFS
echo "To create a Peer Group use the command: gluster peer probe <hostname>"
echo "To create a Volume use the command: gluster volume create <volume_name> replica <replica_count> <hostname>:/<path> <hostname2>:/<path> <hostname3>:/<path> force"