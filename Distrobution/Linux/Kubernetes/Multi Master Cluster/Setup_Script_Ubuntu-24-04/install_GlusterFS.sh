#!/bin/bash

# Install GlusterFS
sudo apt install glusterfs-server -y

# Start and Enable GlusterFS
sudo systemctl start glusterd.service && sudo systemctl enable glusterd.service

# How to use GlusterFS
echo "To create a Peer Group use the command: sudo gluster peer probe <hostname>"
echo "To view the Peer Group Status use the command: sudo gluster peer status"
echo "To create a Volume use the command: sudo gluster volume create <volume_name> replica <replica_count> <hostname>:/<path> <hostname2>:/<path> <hostname3>:/<path> force"
echo "To start the Volume use the command: sudo gluster volume start <volume_name>"
echo "To view the Volume Status use the command: sudo gluster volume status"