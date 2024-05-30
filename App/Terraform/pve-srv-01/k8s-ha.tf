# # k8s-soniiit-cp01
# resource "proxmox_vm_qemu" "k8s-soniiit-cp01" {
    
#     # VM General Settings
#     target_node = "pve-srv-01"
#     vmid = "0"
#     name = "k8s-soniiit-cp01"
#     tags = "ubuntu,application"
#     desc = "Control Plane Server 01 for Kubernetes Cluster"

#     # VM Advanced General Settings
#     onboot = true
#     boot = "order=virtio0;net0"
#     bootdisk = "virtio"
#     scsihw = "virtio-scsi-pci"

#     # VM OS Settings
#     full_clone = true
#     clone = "ubuntu-server-24-04"
#     bios = "seabios"

#     # VM System Settings
#     agent = 1
    
#     # VM CPU Settings
#     cores = 2
#     sockets = 1
#     cpu = "kvm64"
    
#     # VM Memory Settings
#     memory = 8192

#     # VM Network Settings
#     network {
#         bridge = "vmbr0"
#         model  = "virtio"
#     }

#     # VM Disk Settings Cloud-Init
#     disks {
#         ide {
#             ide0 {
#                 cloudinit {
#                     storage = "VM-Storage"
#                 }
#             }
#         }
#         virtio {
#             virtio0 {
#                 disk {
#                     size               = 32
#                     storage            = "VM-Storage"
#                 }
#             }
#         }
#     }

#     # VM Cloud-Init Settings
#     os_type = "cloud-init"

#     # (Optional) IP Address and Gateway
#     ipconfig0 = "ip=192.168.178.42/24,gw=192.168.178.1,ip6=dhcp"

#     # (Optional) DNS Servers
#     nameserver = "192.168.178.3"

#     # (Optional) Default User
#     ciuser = "soniiit"

#     # (Optional) Add your Public SSH KEY
#     sshkeys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCwS2E+9u7DXG01ViDPKTObWcqb3MZ1+bkHrfOl2e0FokVv8QI6v0LtJgPc5i8eEunQlK29GsLmf9s1cKLN8LdgT7VXknSg2tsNtL1/nDFrSwRnuu5HJXmxjrdpPFyBSq5h/hOwwImhT5vSRdwfNF9Y4N0kwEghzu1/7JJDF8eAW66DBrBeMgz28U4IohCiRm+YvGhsvRfqeD9ztd+Wb0xcb485yotE8LnDAzGsfSwQ4GrOaoiLYdzZAVNiqXKrZhs7YpyvTu6ngnA+sGH+w0Igms++eF9ElQkfgz4LHVUdjVaySC41YWqE2nQacVqefEPcCIKnaAwRlvtBzBSXujCCI4//py/538SWLYrcmGjtNBKkBA0KVbPP+R7qq387Hr+bjjoXtIARsuqqj6gCzmYxrGiors84vt+dYMWNzTj9tvOVkNFpsIu3NER2e1yXgjVXSpPZDKERTCcDoNIwLI91+6EpMnXYz8MtH80CIHFJNSwflc5wud2ebSEGmSfGgJ0djAN4KWIhg/J+RgcZ/o/dvew6GxRYbv9EDZ3UXSaSEeKvjGLXAPV5MhQuIB1iavzV6CO3ntTKvqYHFyxSkWTXTyllGtsAj3N2DLA8CSnswsBXmO0FleEhjwAUzCA3itDK+/oBipPFbna3x0c+qcb8GJSsYpNIvTqdFb92DgUiPQ== "
# }

# # k8s-soniiit-cp02
# resource "proxmox_vm_qemu" "k8s-soniiit-cp02" {
    
#     # VM General Settings
#     target_node = "pve-srv-01"
#     vmid = "0"
#     name = "k8s-soniiit-cp02"
#     tags = "ubuntu,application"
#     desc = "Control Plane Server 02 for Kubernetes Cluster"

#     # VM Advanced General Settings
#     onboot = true
#     boot = "order=virtio0;net0"
#     bootdisk = "virtio"
#     scsihw = "virtio-scsi-pci"

#     # VM OS Settings
#     full_clone = true
#     clone = "ubuntu-server-24-04"
#     bios = "seabios"

#     # VM System Settings
#     agent = 1
    
#     # VM CPU Settings
#     cores = 2
#     sockets = 1
#     cpu = "kvm64"
    
#     # VM Memory Settings
#     memory = 8192

#     # VM Network Settings
#     network {
#         bridge = "vmbr0"
#         model  = "virtio"
#     }

#     # VM Disk Settings Cloud-Init
#     disks {
#         ide {
#             ide0 {
#                 cloudinit {
#                     storage = "VM-Storage"
#                 }
#             }
#         }
#         virtio {
#             virtio0 {
#                 disk {
#                     size               = 32
#                     storage            = "VM-Storage"
#                 }
#             }
#         }
#     }

#     # VM Cloud-Init Settings
#     os_type = "cloud-init"

#     # (Optional) IP Address and Gateway
#     ipconfig0 = "ip=192.168.178.43/24,gw=192.168.178.1,ip6=dhcp"

#     # (Optional) DNS Servers
#     nameserver = "192.168.178.3"

#     # (Optional) Default User
#     ciuser = "soniiit"

#     # (Optional) Add your Public SSH KEY
#     sshkeys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCwS2E+9u7DXG01ViDPKTObWcqb3MZ1+bkHrfOl2e0FokVv8QI6v0LtJgPc5i8eEunQlK29GsLmf9s1cKLN8LdgT7VXknSg2tsNtL1/nDFrSwRnuu5HJXmxjrdpPFyBSq5h/hOwwImhT5vSRdwfNF9Y4N0kwEghzu1/7JJDF8eAW66DBrBeMgz28U4IohCiRm+YvGhsvRfqeD9ztd+Wb0xcb485yotE8LnDAzGsfSwQ4GrOaoiLYdzZAVNiqXKrZhs7YpyvTu6ngnA+sGH+w0Igms++eF9ElQkfgz4LHVUdjVaySC41YWqE2nQacVqefEPcCIKnaAwRlvtBzBSXujCCI4//py/538SWLYrcmGjtNBKkBA0KVbPP+R7qq387Hr+bjjoXtIARsuqqj6gCzmYxrGiors84vt+dYMWNzTj9tvOVkNFpsIu3NER2e1yXgjVXSpPZDKERTCcDoNIwLI91+6EpMnXYz8MtH80CIHFJNSwflc5wud2ebSEGmSfGgJ0djAN4KWIhg/J+RgcZ/o/dvew6GxRYbv9EDZ3UXSaSEeKvjGLXAPV5MhQuIB1iavzV6CO3ntTKvqYHFyxSkWTXTyllGtsAj3N2DLA8CSnswsBXmO0FleEhjwAUzCA3itDK+/oBipPFbna3x0c+qcb8GJSsYpNIvTqdFb92DgUiPQ== "
# }

# # k8s-soniiit-lb01
# resource "proxmox_vm_qemu" "k8s-soniiit-lb01" {
    
#     # VM General Settings
#     target_node = "pve-srv-01"
#     vmid = "0"
#     name = "k8s-soniiit-lb01"
#     tags = "ubuntu,application"
#     desc = "Load Balancer Server 01 for Kubernetes Cluster"

#     # VM Advanced General Settings
#     onboot = true
#     boot = "order=virtio0;net0"
#     bootdisk = "virtio"
#     scsihw = "virtio-scsi-pci"

#     # VM OS Settings
#     full_clone = true
#     clone = "ubuntu-server-24-04"
#     bios = "seabios"

#     # VM System Settings
#     agent = 1
    
#     # VM CPU Settings
#     cores = 1
#     sockets = 1
#     cpu = "kvm64"
    
#     # VM Memory Settings
#     memory = 1024

#     # VM Network Settings
#     network {
#         bridge = "vmbr0"
#         model  = "virtio"
#     }

#     # VM Disk Settings Cloud-Init
#     disks {
#         ide {
#             ide0 {
#                 cloudinit {
#                     storage = "VM-Storage"
#                 }
#             }
#         }
#         virtio {
#             virtio0 {
#                 disk {
#                     size               = 32
#                     storage            = "VM-Storage"
#                 }
#             }
#         }
#     }

#     # VM Cloud-Init Settings
#     os_type = "cloud-init"

#     # (Optional) IP Address and Gateway
#     ipconfig0 = "ip=192.168.178.40/24,gw=192.168.178.1,ip6=dhcp"

#     # (Optional) DNS Servers
#     nameserver = "192.168.178.3"

#     # (Optional) Default User
#     ciuser = "soniiit"

#     # (Optional) Add your Public SSH KEY
#     sshkeys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCwS2E+9u7DXG01ViDPKTObWcqb3MZ1+bkHrfOl2e0FokVv8QI6v0LtJgPc5i8eEunQlK29GsLmf9s1cKLN8LdgT7VXknSg2tsNtL1/nDFrSwRnuu5HJXmxjrdpPFyBSq5h/hOwwImhT5vSRdwfNF9Y4N0kwEghzu1/7JJDF8eAW66DBrBeMgz28U4IohCiRm+YvGhsvRfqeD9ztd+Wb0xcb485yotE8LnDAzGsfSwQ4GrOaoiLYdzZAVNiqXKrZhs7YpyvTu6ngnA+sGH+w0Igms++eF9ElQkfgz4LHVUdjVaySC41YWqE2nQacVqefEPcCIKnaAwRlvtBzBSXujCCI4//py/538SWLYrcmGjtNBKkBA0KVbPP+R7qq387Hr+bjjoXtIARsuqqj6gCzmYxrGiors84vt+dYMWNzTj9tvOVkNFpsIu3NER2e1yXgjVXSpPZDKERTCcDoNIwLI91+6EpMnXYz8MtH80CIHFJNSwflc5wud2ebSEGmSfGgJ0djAN4KWIhg/J+RgcZ/o/dvew6GxRYbv9EDZ3UXSaSEeKvjGLXAPV5MhQuIB1iavzV6CO3ntTKvqYHFyxSkWTXTyllGtsAj3N2DLA8CSnswsBXmO0FleEhjwAUzCA3itDK+/oBipPFbna3x0c+qcb8GJSsYpNIvTqdFb92DgUiPQ== "
# }

# # k8s-soniiit-lb02
# resource "proxmox_vm_qemu" "k8s-soniiit-lb02" {
    
#     # VM General Settings
#     target_node = "pve-srv-01"
#     vmid = "0"
#     name = "k8s-soniiit-lb02"
#     tags = "ubuntu,application"
#     desc = "Load Balancer Server 02 for Kubernetes Cluster"

#     # VM Advanced General Settings
#     onboot = true
#     boot = "order=virtio0;net0"
#     bootdisk = "virtio"
#     scsihw = "virtio-scsi-pci"

#     # VM OS Settings
#     full_clone = true
#     clone = "ubuntu-server-24-04"
#     bios = "seabios"

#     # VM System Settings
#     agent = 1
    
#     # VM CPU Settings
#     cores = 1
#     sockets = 1
#     cpu = "kvm64"
    
#     # VM Memory Settings
#     memory = 1024

#     # VM Network Settings
#     network {
#         bridge = "vmbr0"
#         model  = "virtio"
#     }

#     # VM Disk Settings Cloud-Init
#     disks {
#         ide {
#             ide0 {
#                 cloudinit {
#                     storage = "VM-Storage"
#                 }
#             }
#         }
#         virtio {
#             virtio0 {
#                 disk {
#                     size               = 32
#                     storage            = "VM-Storage"
#                 }
#             }
#         }
#     }

#     # VM Cloud-Init Settings
#     os_type = "cloud-init"

#     # (Optional) IP Address and Gateway
#     ipconfig0 = "ip=192.168.178.41/24,gw=192.168.178.1,ip6=dhcp"

#     # (Optional) DNS Servers
#     nameserver = "192.168.178.3"

#     # (Optional) Default User
#     ciuser = "soniiit"

#     # (Optional) Add your Public SSH KEY
#     sshkeys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCwS2E+9u7DXG01ViDPKTObWcqb3MZ1+bkHrfOl2e0FokVv8QI6v0LtJgPc5i8eEunQlK29GsLmf9s1cKLN8LdgT7VXknSg2tsNtL1/nDFrSwRnuu5HJXmxjrdpPFyBSq5h/hOwwImhT5vSRdwfNF9Y4N0kwEghzu1/7JJDF8eAW66DBrBeMgz28U4IohCiRm+YvGhsvRfqeD9ztd+Wb0xcb485yotE8LnDAzGsfSwQ4GrOaoiLYdzZAVNiqXKrZhs7YpyvTu6ngnA+sGH+w0Igms++eF9ElQkfgz4LHVUdjVaySC41YWqE2nQacVqefEPcCIKnaAwRlvtBzBSXujCCI4//py/538SWLYrcmGjtNBKkBA0KVbPP+R7qq387Hr+bjjoXtIARsuqqj6gCzmYxrGiors84vt+dYMWNzTj9tvOVkNFpsIu3NER2e1yXgjVXSpPZDKERTCcDoNIwLI91+6EpMnXYz8MtH80CIHFJNSwflc5wud2ebSEGmSfGgJ0djAN4KWIhg/J+RgcZ/o/dvew6GxRYbv9EDZ3UXSaSEeKvjGLXAPV5MhQuIB1iavzV6CO3ntTKvqYHFyxSkWTXTyllGtsAj3N2DLA8CSnswsBXmO0FleEhjwAUzCA3itDK+/oBipPFbna3x0c+qcb8GJSsYpNIvTqdFb92DgUiPQ== "
# }

# # k8s-soniiit-w01
# resource "proxmox_vm_qemu" "k8s-soniiit-w01" {
    
#     # VM General Settings
#     target_node = "pve-srv-01"
#     vmid = "0"
#     name = "k8s-soniiit-w01"
#     tags = "ubuntu,application"
#     desc = "Worker Server 01 for Kubernetes Cluster"

#     # VM Advanced General Settings
#     onboot = true
#     boot = "order=virtio0;net0"
#     bootdisk = "virtio"
#     scsihw = "virtio-scsi-pci"

#     # VM OS Settings
#     full_clone = true
#     clone = "ubuntu-server-24-04"
#     bios = "seabios"

#     # VM System Settings
#     agent = 1
    
#     # VM CPU Settings
#     cores = 4
#     sockets = 1
#     cpu = "kvm64"
    
#     # VM Memory Settings
#     memory = 16384

#     # VM Network Settings
#     network {
#         bridge = "vmbr0"
#         model  = "virtio"
#     }

#     # VM Disk Settings Cloud-Init
#     disks {
#         ide {
#             ide0 {
#                 cloudinit {
#                     storage = "VM-Storage"
#                 }
#             }
#         }
#         virtio {
#             virtio0 {
#                 disk {
#                     size               = 32
#                     storage            = "VM-Storage"
#                 }
#             }
#         }
#     }

#     # VM Cloud-Init Settings
#     os_type = "cloud-init"

#     # (Optional) IP Address and Gateway
#     ipconfig0 = "ip=192.168.178.44/24,gw=192.168.178.1,ip6=dhcp"

#     # (Optional) DNS Servers
#     nameserver = "192.168.178.3"

#     # (Optional) Default User
#     ciuser = "soniiit"

#     # (Optional) Add your Public SSH KEY
#     sshkeys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCwS2E+9u7DXG01ViDPKTObWcqb3MZ1+bkHrfOl2e0FokVv8QI6v0LtJgPc5i8eEunQlK29GsLmf9s1cKLN8LdgT7VXknSg2tsNtL1/nDFrSwRnuu5HJXmxjrdpPFyBSq5h/hOwwImhT5vSRdwfNF9Y4N0kwEghzu1/7JJDF8eAW66DBrBeMgz28U4IohCiRm+YvGhsvRfqeD9ztd+Wb0xcb485yotE8LnDAzGsfSwQ4GrOaoiLYdzZAVNiqXKrZhs7YpyvTu6ngnA+sGH+w0Igms++eF9ElQkfgz4LHVUdjVaySC41YWqE2nQacVqefEPcCIKnaAwRlvtBzBSXujCCI4//py/538SWLYrcmGjtNBKkBA0KVbPP+R7qq387Hr+bjjoXtIARsuqqj6gCzmYxrGiors84vt+dYMWNzTj9tvOVkNFpsIu3NER2e1yXgjVXSpPZDKERTCcDoNIwLI91+6EpMnXYz8MtH80CIHFJNSwflc5wud2ebSEGmSfGgJ0djAN4KWIhg/J+RgcZ/o/dvew6GxRYbv9EDZ3UXSaSEeKvjGLXAPV5MhQuIB1iavzV6CO3ntTKvqYHFyxSkWTXTyllGtsAj3N2DLA8CSnswsBXmO0FleEhjwAUzCA3itDK+/oBipPFbna3x0c+qcb8GJSsYpNIvTqdFb92DgUiPQ== "
# }

# # k8s-soniiit-w02
# resource "proxmox_vm_qemu" "k8s-soniiit-w02" {
    
#     # VM General Settings
#     target_node = "pve-srv-01"
#     vmid = "0"
#     name = "k8s-soniiit-w02"
#     tags = "ubuntu,application"
#     desc = "Worker Server 02 for Kubernetes Cluster"

#     # VM Advanced General Settings
#     onboot = true
#     boot = "order=virtio0;net0"
#     bootdisk = "virtio"
#     scsihw = "virtio-scsi-pci"

#     # VM OS Settings
#     full_clone = true
#     clone = "ubuntu-server-24-04"
#     bios = "seabios"

#     # VM System Settings
#     agent = 1
    
#     # VM CPU Settings
#     cores = 4
#     sockets = 1
#     cpu = "kvm64"
    
#     # VM Memory Settings
#     memory = 16384

#     # VM Network Settings
#     network {
#         bridge = "vmbr0"
#         model  = "virtio"
#     }

#     # VM Disk Settings Cloud-Init
#     disks {
#         ide {
#             ide0 {
#                 cloudinit {
#                     storage = "VM-Storage"
#                 }
#             }
#         }
#         virtio {
#             virtio0 {
#                 disk {
#                     size               = 32
#                     storage            = "VM-Storage"
#                 }
#             }
#         }
#     }

#     # VM Cloud-Init Settings
#     os_type = "cloud-init"

#     # (Optional) IP Address and Gateway
#     ipconfig0 = "ip=192.168.178.45/24,gw=192.168.178.1,ip6=dhcp"

#     # (Optional) DNS Servers
#     nameserver = "192.168.178.3"

#     # (Optional) Default User
#     ciuser = "soniiit"

#     # (Optional) Add your Public SSH KEY
#     sshkeys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCwS2E+9u7DXG01ViDPKTObWcqb3MZ1+bkHrfOl2e0FokVv8QI6v0LtJgPc5i8eEunQlK29GsLmf9s1cKLN8LdgT7VXknSg2tsNtL1/nDFrSwRnuu5HJXmxjrdpPFyBSq5h/hOwwImhT5vSRdwfNF9Y4N0kwEghzu1/7JJDF8eAW66DBrBeMgz28U4IohCiRm+YvGhsvRfqeD9ztd+Wb0xcb485yotE8LnDAzGsfSwQ4GrOaoiLYdzZAVNiqXKrZhs7YpyvTu6ngnA+sGH+w0Igms++eF9ElQkfgz4LHVUdjVaySC41YWqE2nQacVqefEPcCIKnaAwRlvtBzBSXujCCI4//py/538SWLYrcmGjtNBKkBA0KVbPP+R7qq387Hr+bjjoXtIARsuqqj6gCzmYxrGiors84vt+dYMWNzTj9tvOVkNFpsIu3NER2e1yXgjVXSpPZDKERTCcDoNIwLI91+6EpMnXYz8MtH80CIHFJNSwflc5wud2ebSEGmSfGgJ0djAN4KWIhg/J+RgcZ/o/dvew6GxRYbv9EDZ3UXSaSEeKvjGLXAPV5MhQuIB1iavzV6CO3ntTKvqYHFyxSkWTXTyllGtsAj3N2DLA8CSnswsBXmO0FleEhjwAUzCA3itDK+/oBipPFbna3x0c+qcb8GJSsYpNIvTqdFb92DgUiPQ== "
# }

# # k8s-soniiit-nfs01
# resource "proxmox_vm_qemu" "k8s-soniiit-nfs01" {
    
#     # VM General Settings
#     target_node = "pve-srv-01"
#     vmid = "0"
#     name = "k8s-soniiit-nfs01"
#     tags = "ubuntu,application"
#     desc = "NFS Server 01 for Kubernetes Cluster"

#     # VM Advanced General Settings
#     onboot = true
#     boot = "order=virtio0;net0"
#     bootdisk = "virtio"
#     scsihw = "virtio-scsi-pci"

#     # VM OS Settings
#     full_clone = true
#     clone = "ubuntu-server-24-04"
#     bios = "seabios"

#     # VM System Settings
#     agent = 1
    
#     # VM CPU Settings
#     cores = 1
#     sockets = 1
#     cpu = "kvm64"
    
#     # VM Memory Settings
#     memory = 2048

#     # VM Network Settings
#     network {
#         bridge = "vmbr0"
#         model  = "virtio"
#     }

#     # VM Disk Settings Cloud-Init
#     disks {
#         ide {
#             ide0 {
#                 cloudinit {
#                     storage = "VM-Storage"
#                 }
#             }
#         }
#         virtio {
#             virtio0 {
#                 disk {
#                     size               = 32
#                     storage            = "VM-Storage"
#                 }
#             }
#             virtio1 {
#                 disk {
#                     size               = 128
#                     storage            = "VM-Storage"
#                 }
#             }
#         }
#     }

#     # VM Cloud-Init Settings
#     os_type = "cloud-init"

#     # (Optional) IP Address and Gateway
#     ipconfig0 = "ip=192.168.178.46/24,gw=192.168.178.1,ip6=dhcp"

#     # (Optional) DNS Servers
#     nameserver = "192.168.178.3"

#     # (Optional) Default User
#     ciuser = "soniiit"

#     # (Optional) Add your Public SSH KEY
#     sshkeys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCwS2E+9u7DXG01ViDPKTObWcqb3MZ1+bkHrfOl2e0FokVv8QI6v0LtJgPc5i8eEunQlK29GsLmf9s1cKLN8LdgT7VXknSg2tsNtL1/nDFrSwRnuu5HJXmxjrdpPFyBSq5h/hOwwImhT5vSRdwfNF9Y4N0kwEghzu1/7JJDF8eAW66DBrBeMgz28U4IohCiRm+YvGhsvRfqeD9ztd+Wb0xcb485yotE8LnDAzGsfSwQ4GrOaoiLYdzZAVNiqXKrZhs7YpyvTu6ngnA+sGH+w0Igms++eF9ElQkfgz4LHVUdjVaySC41YWqE2nQacVqefEPcCIKnaAwRlvtBzBSXujCCI4//py/538SWLYrcmGjtNBKkBA0KVbPP+R7qq387Hr+bjjoXtIARsuqqj6gCzmYxrGiors84vt+dYMWNzTj9tvOVkNFpsIu3NER2e1yXgjVXSpPZDKERTCcDoNIwLI91+6EpMnXYz8MtH80CIHFJNSwflc5wud2ebSEGmSfGgJ0djAN4KWIhg/J+RgcZ/o/dvew6GxRYbv9EDZ3UXSaSEeKvjGLXAPV5MhQuIB1iavzV6CO3ntTKvqYHFyxSkWTXTyllGtsAj3N2DLA8CSnswsBXmO0FleEhjwAUzCA3itDK+/oBipPFbna3x0c+qcb8GJSsYpNIvTqdFb92DgUiPQ== "
# }

# # k8s-soniiit-nfs02
# resource "proxmox_vm_qemu" "k8s-soniiit-nfs02" {
    
#     # VM General Settings
#     target_node = "pve-srv-01"
#     vmid = "0"
#     name = "k8s-soniiit-nfs02"
#     tags = "ubuntu,application"
#     desc = "NFS Server 02 for Kubernetes Cluster"

#     # VM Advanced General Settings
#     onboot = true
#     boot = "order=virtio0;net0"
#     bootdisk = "virtio"
#     scsihw = "virtio-scsi-pci"

#     # VM OS Settings
#     full_clone = true
#     clone = "ubuntu-server-24-04"
#     bios = "seabios"

#     # VM System Settings
#     agent = 1
    
#     # VM CPU Settings
#     cores = 1
#     sockets = 1
#     cpu = "kvm64"
    
#     # VM Memory Settings
#     memory = 2048

#     # VM Network Settings
#     network {
#         bridge = "vmbr0"
#         model  = "virtio"
#     }

#     # VM Disk Settings Cloud-Init
#     disks {
#         ide {
#             ide0 {
#                 cloudinit {
#                     storage = "VM-Storage"
#                 }
#             }
#         }
#         virtio {
#             virtio0 {
#                 disk {
#                     size               = 32
#                     storage            = "VM-Storage"
#                 }
#             }
#             virtio1 {
#                 disk {
#                     size               = 128
#                     storage            = "VM-Storage"
#                 }
#             }
#         }
#     }

#     # VM Cloud-Init Settings
#     os_type = "cloud-init"

#     # (Optional) IP Address and Gateway
#     ipconfig0 = "ip=192.168.178.47/24,gw=192.168.178.1,ip6=dhcp"

#     # (Optional) DNS Servers
#     nameserver = "192.168.178.3"

#     # (Optional) Default User
#     ciuser = "soniiit"

#     # (Optional) Add your Public SSH KEY
#     sshkeys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCwS2E+9u7DXG01ViDPKTObWcqb3MZ1+bkHrfOl2e0FokVv8QI6v0LtJgPc5i8eEunQlK29GsLmf9s1cKLN8LdgT7VXknSg2tsNtL1/nDFrSwRnuu5HJXmxjrdpPFyBSq5h/hOwwImhT5vSRdwfNF9Y4N0kwEghzu1/7JJDF8eAW66DBrBeMgz28U4IohCiRm+YvGhsvRfqeD9ztd+Wb0xcb485yotE8LnDAzGsfSwQ4GrOaoiLYdzZAVNiqXKrZhs7YpyvTu6ngnA+sGH+w0Igms++eF9ElQkfgz4LHVUdjVaySC41YWqE2nQacVqefEPcCIKnaAwRlvtBzBSXujCCI4//py/538SWLYrcmGjtNBKkBA0KVbPP+R7qq387Hr+bjjoXtIARsuqqj6gCzmYxrGiors84vt+dYMWNzTj9tvOVkNFpsIu3NER2e1yXgjVXSpPZDKERTCcDoNIwLI91+6EpMnXYz8MtH80CIHFJNSwflc5wud2ebSEGmSfGgJ0djAN4KWIhg/J+RgcZ/o/dvew6GxRYbv9EDZ3UXSaSEeKvjGLXAPV5MhQuIB1iavzV6CO3ntTKvqYHFyxSkWTXTyllGtsAj3N2DLA8CSnswsBXmO0FleEhjwAUzCA3itDK+/oBipPFbna3x0c+qcb8GJSsYpNIvTqdFb92DgUiPQ== "
# }