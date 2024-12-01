resource "proxmox_vm_qemu" "k3s_soniiit_server01" {

    # VM General Settings
    target_node = "pve-srv-01"
    vmid = "300"
    name = "k3s-soniiit-server01"
    tags = "ubuntu,kubernetes"
    desc = "Server 01 for K3s Kubernetes Cluster"
    automatic_reboot = false

    # The destination resource pool for the new VM
    pool = "Kubernetes"

    # VM Advanced General Settings
    onboot = true
    boot = "order=virtio0;net0"
    bootdisk = "virtio"
    scsihw = "virtio-scsi-pci"

    # VM OS Settings
    full_clone = true
    clone = "ubuntu-server-24-04-01"
    bios = "seabios"

    # VM System Settings
    agent = 1

    # VM CPU Settings
    cores = 1
    sockets = 1
    cpu = "host"

    # VM Memory Settings
    memory = 6144

    # VM Network Settings
    network {
        bridge = "vmbr0"
        model  = "virtio"
    }

    # VM Disk Settings Cloud-Init
    disks {
        ide {
            ide0 {
                cloudinit {
                    storage = "M2-Storage"
                }
            }
        }
        virtio {
            virtio0 {
                disk {
                    size               = 32
                    storage            = "M2-Storage"
                }
            }
            virtio1 {
                disk {
                    size               = 1024
                    storage            = "HDD-Storage"
                }
            }
        }
    }

    # VM Cloud-Init Settings
    os_type = "cloud-init"

    # (Optional) IP Address and Gateway
    ipconfig0 = "ip=192.168.178.11/24,gw=192.168.178.1,ip6=dhcp"

    # (Optional) DNS Servers
    nameserver = "192.168.178.3"

    # (Optional) Default User
    ciuser = "soniiit"

    # (Optional) Add your Public SSH KEY
    sshkeys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCwS2E+9u7DXG01ViDPKTObWcqb3MZ1+bkHrfOl2e0FokVv8QI6v0LtJgPc5i8eEunQlK29GsLmf9s1cKLN8LdgT7VXknSg2tsNtL1/nDFrSwRnuu5HJXmxjrdpPFyBSq5h/hOwwImhT5vSRdwfNF9Y4N0kwEghzu1/7JJDF8eAW66DBrBeMgz28U4IohCiRm+YvGhsvRfqeD9ztd+Wb0xcb485yotE8LnDAzGsfSwQ4GrOaoiLYdzZAVNiqXKrZhs7YpyvTu6ngnA+sGH+w0Igms++eF9ElQkfgz4LHVUdjVaySC41YWqE2nQacVqefEPcCIKnaAwRlvtBzBSXujCCI4//py/538SWLYrcmGjtNBKkBA0KVbPP+R7qq387Hr+bjjoXtIARsuqqj6gCzmYxrGiors84vt+dYMWNzTj9tvOVkNFpsIu3NER2e1yXgjVXSpPZDKERTCcDoNIwLI91+6EpMnXYz8MtH80CIHFJNSwflc5wud2ebSEGmSfGgJ0djAN4KWIhg/J+RgcZ/o/dvew6GxRYbv9EDZ3UXSaSEeKvjGLXAPV5MhQuIB1iavzV6CO3ntTKvqYHFyxSkWTXTyllGtsAj3N2DLA8CSnswsBXmO0FleEhjwAUzCA3itDK+/oBipPFbna3x0c+qcb8GJSsYpNIvTqdFb92DgUiPQ== "
}

resource "proxmox_vm_qemu" "k3s_soniiit_server02" {

    # VM General Settings
    target_node = "pve-srv-01"
    vmid = "301"
    name = "k3s-soniiit-server02"
    tags = "ubuntu,kubernetes"
    desc = "Server 02 for K3s Kubernetes Cluster"
    automatic_reboot = false

    # The destination resource pool for the new VM
    pool = "Kubernetes"

    # VM Advanced General Settings
    onboot = true
    boot = "order=virtio0;net0"
    bootdisk = "virtio"
    scsihw = "virtio-scsi-pci"

    # VM OS Settings
    full_clone = true
    clone = "ubuntu-server-24-04-01"
    bios = "seabios"

    # VM System Settings
    agent = 1

    # VM CPU Settings
    cores = 1
    sockets = 1
    cpu = "host"

    # VM Memory Settings
    memory = 6144

    # VM Network Settings
    network {
        bridge = "vmbr0"
        model  = "virtio"
    }

    # VM Disk Settings Cloud-Init
    disks {
        ide {
            ide0 {
                cloudinit {
                    storage = "M2-Storage"
                }
            }
        }
        virtio {
            virtio0 {
                disk {
                    size               = 32
                    storage            = "M2-Storage"
                }
            }
            virtio1 {
                disk {
                    size               = 1024
                    storage            = "HDD-Storage"
                }
            }
        }
    }

    # VM Cloud-Init Settings
    os_type = "cloud-init"

    # (Optional) IP Address and Gateway
    ipconfig0 = "ip=192.168.178.12/24,gw=192.168.178.1,ip6=dhcp"

    # (Optional) DNS Servers
    nameserver = "192.168.178.3"

    # (Optional) Default User
    ciuser = "soniiit"

    # (Optional) Add your Public SSH KEY
    sshkeys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCwS2E+9u7DXG01ViDPKTObWcqb3MZ1+bkHrfOl2e0FokVv8QI6v0LtJgPc5i8eEunQlK29GsLmf9s1cKLN8LdgT7VXknSg2tsNtL1/nDFrSwRnuu5HJXmxjrdpPFyBSq5h/hOwwImhT5vSRdwfNF9Y4N0kwEghzu1/7JJDF8eAW66DBrBeMgz28U4IohCiRm+YvGhsvRfqeD9ztd+Wb0xcb485yotE8LnDAzGsfSwQ4GrOaoiLYdzZAVNiqXKrZhs7YpyvTu6ngnA+sGH+w0Igms++eF9ElQkfgz4LHVUdjVaySC41YWqE2nQacVqefEPcCIKnaAwRlvtBzBSXujCCI4//py/538SWLYrcmGjtNBKkBA0KVbPP+R7qq387Hr+bjjoXtIARsuqqj6gCzmYxrGiors84vt+dYMWNzTj9tvOVkNFpsIu3NER2e1yXgjVXSpPZDKERTCcDoNIwLI91+6EpMnXYz8MtH80CIHFJNSwflc5wud2ebSEGmSfGgJ0djAN4KWIhg/J+RgcZ/o/dvew6GxRYbv9EDZ3UXSaSEeKvjGLXAPV5MhQuIB1iavzV6CO3ntTKvqYHFyxSkWTXTyllGtsAj3N2DLA8CSnswsBXmO0FleEhjwAUzCA3itDK+/oBipPFbna3x0c+qcb8GJSsYpNIvTqdFb92DgUiPQ== "
}

resource "proxmox_vm_qemu" "k3s_soniiit_server03" {

    # VM General Settings
    target_node = "pve-srv-01"
    vmid = "302"
    name = "k3s-soniiit-server03"
    tags = "ubuntu,kubernetes"
    desc = "Server 03 for K3s Kubernetes Cluster"
    automatic_reboot = false

    # The destination resource pool for the new VM
    pool = "Kubernetes"

    # VM Advanced General Settings
    onboot = true
    boot = "order=virtio0;net0"
    bootdisk = "virtio"
    scsihw = "virtio-scsi-pci"

    # VM OS Settings
    full_clone = true
    clone = "ubuntu-server-24-04-01"
    bios = "seabios"

    # VM System Settings
    agent = 1

    # VM CPU Settings
    cores = 1
    sockets = 1
    cpu = "host"

    # VM Memory Settings
    memory = 6144

    # VM Network Settings
    network {
        bridge = "vmbr0"
        model  = "virtio"
    }

    # VM Disk Settings Cloud-Init
    disks {
        ide {
            ide0 {
                cloudinit {
                    storage = "M2-Storage"
                }
            }
        }
        virtio {
            virtio0 {
                disk {
                    size               = 32
                    storage            = "M2-Storage"
                }
            }
            virtio1 {
                disk {
                    size               = 1024
                    storage            = "HDD-Storage"
                }
            }
        }
    }

    # VM Cloud-Init Settings
    os_type = "cloud-init"

    # (Optional) IP Address and Gateway
    ipconfig0 = "ip=192.168.178.13/24,gw=192.168.178.1,ip6=dhcp"

    # (Optional) DNS Servers
    nameserver = "192.168.178.3"

    # (Optional) Default User
    ciuser = "soniiit"

    # (Optional) Add your Public SSH KEY
    sshkeys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCwS2E+9u7DXG01ViDPKTObWcqb3MZ1+bkHrfOl2e0FokVv8QI6v0LtJgPc5i8eEunQlK29GsLmf9s1cKLN8LdgT7VXknSg2tsNtL1/nDFrSwRnuu5HJXmxjrdpPFyBSq5h/hOwwImhT5vSRdwfNF9Y4N0kwEghzu1/7JJDF8eAW66DBrBeMgz28U4IohCiRm+YvGhsvRfqeD9ztd+Wb0xcb485yotE8LnDAzGsfSwQ4GrOaoiLYdzZAVNiqXKrZhs7YpyvTu6ngnA+sGH+w0Igms++eF9ElQkfgz4LHVUdjVaySC41YWqE2nQacVqefEPcCIKnaAwRlvtBzBSXujCCI4//py/538SWLYrcmGjtNBKkBA0KVbPP+R7qq387Hr+bjjoXtIARsuqqj6gCzmYxrGiors84vt+dYMWNzTj9tvOVkNFpsIu3NER2e1yXgjVXSpPZDKERTCcDoNIwLI91+6EpMnXYz8MtH80CIHFJNSwflc5wud2ebSEGmSfGgJ0djAN4KWIhg/J+RgcZ/o/dvew6GxRYbv9EDZ3UXSaSEeKvjGLXAPV5MhQuIB1iavzV6CO3ntTKvqYHFyxSkWTXTyllGtsAj3N2DLA8CSnswsBXmO0FleEhjwAUzCA3itDK+/oBipPFbna3x0c+qcb8GJSsYpNIvTqdFb92DgUiPQ== "
}

resource "proxmox_vm_qemu" "k3s_soniiit_agent01" {

    # VM General Settings
    target_node = "pve-srv-01"
    vmid = "303"
    name = "k3s-soniiit-agent01"
    tags = "ubuntu,kubernetes"
    desc = "Agent 01 for K3s Kubernetes Cluster"
    automatic_reboot = false

    # The destination resource pool for the new VM
    pool = "Kubernetes"

    # VM Advanced General Settings
    onboot = true
    boot = "order=virtio0;net0"
    bootdisk = "virtio"
    scsihw = "virtio-scsi-pci"

    # VM OS Settings
    full_clone = true
    clone = "ubuntu-server-24-04-01"
    bios = "seabios"

    # VM System Settings
    agent = 1

    # VM CPU Settings
    cores = 1
    sockets = 1
    cpu = "host"

    # VM Memory Settings
    memory = 16384

    # VM Network Settings
    network {
        bridge = "vmbr0"
        model  = "virtio"
    }

    # VM Disk Settings Cloud-Init
    disks {
        ide {
            ide0 {
                cloudinit {
                    storage = "M2-Storage"
                }
            }
        }
        virtio {
            virtio0 {
                disk {
                    size               = 32
                    storage            = "M2-Storage"
                }
            }
            virtio1 {
                disk {
                    size               = 1024
                    storage            = "HDD-Storage"
                }
            }
        }
    }

    # VM Cloud-Init Settings
    os_type = "cloud-init"

    # (Optional) IP Address and Gateway
    ipconfig0 = "ip=192.168.178.20/24,gw=192.168.178.1,ip6=dhcp"

    # (Optional) DNS Servers
    nameserver = "192.168.178.3"

    # (Optional) Default User
    ciuser = "soniiit"

    # (Optional) Add your Public SSH KEY
    sshkeys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCwS2E+9u7DXG01ViDPKTObWcqb3MZ1+bkHrfOl2e0FokVv8QI6v0LtJgPc5i8eEunQlK29GsLmf9s1cKLN8LdgT7VXknSg2tsNtL1/nDFrSwRnuu5HJXmxjrdpPFyBSq5h/hOwwImhT5vSRdwfNF9Y4N0kwEghzu1/7JJDF8eAW66DBrBeMgz28U4IohCiRm+YvGhsvRfqeD9ztd+Wb0xcb485yotE8LnDAzGsfSwQ4GrOaoiLYdzZAVNiqXKrZhs7YpyvTu6ngnA+sGH+w0Igms++eF9ElQkfgz4LHVUdjVaySC41YWqE2nQacVqefEPcCIKnaAwRlvtBzBSXujCCI4//py/538SWLYrcmGjtNBKkBA0KVbPP+R7qq387Hr+bjjoXtIARsuqqj6gCzmYxrGiors84vt+dYMWNzTj9tvOVkNFpsIu3NER2e1yXgjVXSpPZDKERTCcDoNIwLI91+6EpMnXYz8MtH80CIHFJNSwflc5wud2ebSEGmSfGgJ0djAN4KWIhg/J+RgcZ/o/dvew6GxRYbv9EDZ3UXSaSEeKvjGLXAPV5MhQuIB1iavzV6CO3ntTKvqYHFyxSkWTXTyllGtsAj3N2DLA8CSnswsBXmO0FleEhjwAUzCA3itDK+/oBipPFbna3x0c+qcb8GJSsYpNIvTqdFb92DgUiPQ== "
}

resource "proxmox_vm_qemu" "k3s_soniiit_agent02" {

    # VM General Settings
    target_node = "pve-srv-01"
    vmid = "304"
    name = "k3s-soniiit-agent02"
    tags = "ubuntu,kubernetes"
    desc = "Agent 02 for K3s Kubernetes Cluster"
    automatic_reboot = false

    # The destination resource pool for the new VM
    pool = "Kubernetes"

    # VM Advanced General Settings
    onboot = true
    boot = "order=virtio0;net0"
    bootdisk = "virtio"
    scsihw = "virtio-scsi-pci"

    # VM OS Settings
    full_clone = true
    clone = "ubuntu-server-24-04-01"
    bios = "seabios"

    # VM System Settings
    agent = 1

    # VM CPU Settings
    cores = 1
    sockets = 1
    cpu = "host"

    # VM Memory Settings
    memory = 16384

    # VM Network Settings
    network {
        bridge = "vmbr0"
        model  = "virtio"
    }

    # VM Disk Settings Cloud-Init
    disks {
        ide {
            ide0 {
                cloudinit {
                    storage = "M2-Storage"
                }
            }
        }
        virtio {
            virtio0 {
                disk {
                    size               = 32
                    storage            = "M2-Storage"
                }
            }
            virtio1 {
                disk {
                    size               = 1024
                    storage            = "HDD-Storage"
                }
            }
        }
    }

    # VM Cloud-Init Settings
    os_type = "cloud-init"

    # (Optional) IP Address and Gateway
    ipconfig0 = "ip=192.168.178.21/24,gw=192.168.178.1,ip6=dhcp"

    # (Optional) DNS Servers
    nameserver = "192.168.178.3"

    # (Optional) Default User
    ciuser = "soniiit"

    # (Optional) Add your Public SSH KEY
    sshkeys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCwS2E+9u7DXG01ViDPKTObWcqb3MZ1+bkHrfOl2e0FokVv8QI6v0LtJgPc5i8eEunQlK29GsLmf9s1cKLN8LdgT7VXknSg2tsNtL1/nDFrSwRnuu5HJXmxjrdpPFyBSq5h/hOwwImhT5vSRdwfNF9Y4N0kwEghzu1/7JJDF8eAW66DBrBeMgz28U4IohCiRm+YvGhsvRfqeD9ztd+Wb0xcb485yotE8LnDAzGsfSwQ4GrOaoiLYdzZAVNiqXKrZhs7YpyvTu6ngnA+sGH+w0Igms++eF9ElQkfgz4LHVUdjVaySC41YWqE2nQacVqefEPcCIKnaAwRlvtBzBSXujCCI4//py/538SWLYrcmGjtNBKkBA0KVbPP+R7qq387Hr+bjjoXtIARsuqqj6gCzmYxrGiors84vt+dYMWNzTj9tvOVkNFpsIu3NER2e1yXgjVXSpPZDKERTCcDoNIwLI91+6EpMnXYz8MtH80CIHFJNSwflc5wud2ebSEGmSfGgJ0djAN4KWIhg/J+RgcZ/o/dvew6GxRYbv9EDZ3UXSaSEeKvjGLXAPV5MhQuIB1iavzV6CO3ntTKvqYHFyxSkWTXTyllGtsAj3N2DLA8CSnswsBXmO0FleEhjwAUzCA3itDK+/oBipPFbna3x0c+qcb8GJSsYpNIvTqdFb92DgUiPQ== "
}

resource "proxmox_vm_qemu" "k3s_soniiit_agent03" {

    # VM General Settings
    target_node = "pve-srv-01"
    vmid = "305"
    name = "k3s-soniiit-agent03"
    tags = "ubuntu,kubernetes"
    desc = "Agent 03 for K3s Kubernetes Cluster"
    automatic_reboot = false

    # The destination resource pool for the new VM
    pool = "Kubernetes"

    # VM Advanced General Settings
    onboot = true
    boot = "order=virtio0;net0"
    bootdisk = "virtio"
    scsihw = "virtio-scsi-pci"

    # VM OS Settings
    full_clone = true
    clone = "ubuntu-server-24-04-01"
    bios = "seabios"

    # VM System Settings
    agent = 1

    # VM CPU Settings
    cores = 1
    sockets = 1
    cpu = "host"

    # VM Memory Settings
    memory = 16384

    # VM Network Settings
    network {
        bridge = "vmbr0"
        model  = "virtio"
    }

    # VM Disk Settings Cloud-Init
    disks {
        ide {
            ide0 {
                cloudinit {
                    storage = "M2-Storage"
                }
            }
        }
        virtio {
            virtio0 {
                disk {
                    size               = 32
                    storage            = "M2-Storage"
                }
            }
            virtio1 {
                disk {
                    size               = 1024
                    storage            = "HDD-Storage"
                }
            }
        }
    }

    # VM Cloud-Init Settings
    os_type = "cloud-init"

    # (Optional) IP Address and Gateway
    ipconfig0 = "ip=192.168.178.22/24,gw=192.168.178.1,ip6=dhcp"

    # (Optional) DNS Servers
    nameserver = "192.168.178.3"

    # (Optional) Default User
    ciuser = "soniiit"

    # (Optional) Add your Public SSH KEY
    sshkeys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCwS2E+9u7DXG01ViDPKTObWcqb3MZ1+bkHrfOl2e0FokVv8QI6v0LtJgPc5i8eEunQlK29GsLmf9s1cKLN8LdgT7VXknSg2tsNtL1/nDFrSwRnuu5HJXmxjrdpPFyBSq5h/hOwwImhT5vSRdwfNF9Y4N0kwEghzu1/7JJDF8eAW66DBrBeMgz28U4IohCiRm+YvGhsvRfqeD9ztd+Wb0xcb485yotE8LnDAzGsfSwQ4GrOaoiLYdzZAVNiqXKrZhs7YpyvTu6ngnA+sGH+w0Igms++eF9ElQkfgz4LHVUdjVaySC41YWqE2nQacVqefEPcCIKnaAwRlvtBzBSXujCCI4//py/538SWLYrcmGjtNBKkBA0KVbPP+R7qq387Hr+bjjoXtIARsuqqj6gCzmYxrGiors84vt+dYMWNzTj9tvOVkNFpsIu3NER2e1yXgjVXSpPZDKERTCcDoNIwLI91+6EpMnXYz8MtH80CIHFJNSwflc5wud2ebSEGmSfGgJ0djAN4KWIhg/J+RgcZ/o/dvew6GxRYbv9EDZ3UXSaSEeKvjGLXAPV5MhQuIB1iavzV6CO3ntTKvqYHFyxSkWTXTyllGtsAj3N2DLA8CSnswsBXmO0FleEhjwAUzCA3itDK+/oBipPFbna3x0c+qcb8GJSsYpNIvTqdFb92DgUiPQ== "
}
