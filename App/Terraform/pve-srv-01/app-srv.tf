resource "proxmox_vm_qemu" "app_srv_01" {

    # VM General Settings
    target_node = "pve-srv-01"
    vmid = "0"
    name = "app-srv-01"
    tags = "ubuntu,application"
    desc = "Kasm Workspaces Server"
    automatic_reboot = false

    # The destination resource pool for the new VM
    pool = "Application"

    # VM Advanced General Settings
    onboot = true
    boot = "order=virtio0;net0"
    bootdisk = "virtio"
    scsihw = "virtio-scsi-pci"

    # VM OS Settings
    full_clone = true
    clone = "ubuntu-server-24-04"
    bios = "seabios"

    # VM System Settings
    agent = 1

    # VM CPU Settings
    cores = 4
    sockets = 1
    cpu = "kvm64"

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
                    storage = "VM-Storage"
                }
            }
        }
        virtio {
            virtio0 {
                disk {
                    size               = 512
                    storage            = "VM-Storage"
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

resource "proxmox_vm_qemu" "app_srv_02" {

    # VM General Settings
    target_node = "pve-srv-01"
    vmid = "0"
    name = "app-srv-02"
    tags = "ubuntu,application"
    desc = "Lancache Server"
    automatic_reboot = false

    # The destination resource pool for the new VM
    pool = "Application"

    # VM Advanced General Settings
    onboot = true
    boot = "order=virtio0;net0"
    bootdisk = "virtio"
    scsihw = "virtio-scsi-pci"

    # VM OS Settings
    full_clone = true
    clone = "ubuntu-server-24-04"
    bios = "seabios"

    # VM System Settings
    agent = 1

    # VM CPU Settings
    cores = 4
    sockets = 1
    cpu = "kvm64"

    # VM Memory Settings
    memory = 8192

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
                    storage = "VM-Storage"
                }
            }
        }
        virtio {
            virtio0 {
                disk {
                    size               = 32
                    storage            = "VM-Storage"
                }
            }
            virtio1 {
                disk {
                    size               = 2048
                    storage            = "VM-Storage"
                }
            }
        }
    }

    # VM Cloud-Init Settings
    os_type = "cloud-init"

    # (Optional) IP Address and Gateway
    ipconfig0 = "ip=192.168.178.4/24,gw=192.168.178.1,ip6=dhcp"

    # (Optional) DNS Servers
    nameserver = "192.168.178.3"

    # (Optional) Default User
    ciuser = "soniiit"

    # (Optional) Add your Public SSH KEY
    sshkeys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCwS2E+9u7DXG01ViDPKTObWcqb3MZ1+bkHrfOl2e0FokVv8QI6v0LtJgPc5i8eEunQlK29GsLmf9s1cKLN8LdgT7VXknSg2tsNtL1/nDFrSwRnuu5HJXmxjrdpPFyBSq5h/hOwwImhT5vSRdwfNF9Y4N0kwEghzu1/7JJDF8eAW66DBrBeMgz28U4IohCiRm+YvGhsvRfqeD9ztd+Wb0xcb485yotE8LnDAzGsfSwQ4GrOaoiLYdzZAVNiqXKrZhs7YpyvTu6ngnA+sGH+w0Igms++eF9ElQkfgz4LHVUdjVaySC41YWqE2nQacVqefEPcCIKnaAwRlvtBzBSXujCCI4//py/538SWLYrcmGjtNBKkBA0KVbPP+R7qq387Hr+bjjoXtIARsuqqj6gCzmYxrGiors84vt+dYMWNzTj9tvOVkNFpsIu3NER2e1yXgjVXSpPZDKERTCcDoNIwLI91+6EpMnXYz8MtH80CIHFJNSwflc5wud2ebSEGmSfGgJ0djAN4KWIhg/J+RgcZ/o/dvew6GxRYbv9EDZ3UXSaSEeKvjGLXAPV5MhQuIB1iavzV6CO3ntTKvqYHFyxSkWTXTyllGtsAj3N2DLA8CSnswsBXmO0FleEhjwAUzCA3itDK+/oBipPFbna3x0c+qcb8GJSsYpNIvTqdFb92DgUiPQ== "
}

resource "proxmox_vm_qemu" "app_srv_03" {

    # VM General Settings
    target_node = "pve-srv-01"
    vmid = "0"
    name = "app-srv-03"
    tags = "ubuntu,application,dns"
    desc = "Bind9 DNS Server"
    automatic_reboot = false

    # The destination resource pool for the new VM
    pool = "Application"

    # VM Advanced General Settings
    onboot = true
    boot = "order=virtio0;net0"
    bootdisk = "virtio"
    startup = "order=1,up=90"
    scsihw = "virtio-scsi-pci"

    # VM OS Settings
    full_clone = true
    clone = "ubuntu-server-24-04"
    bios = "seabios"

    # VM System Settings
    agent = 1

    # VM CPU Settings
    cores = 2
    sockets = 1
    cpu = "kvm64"

    # VM Memory Settings
    memory = 2048

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
                    storage = "VM-Storage"
                }
            }
        }
        virtio {
            virtio0 {
                disk {
                    size               = 32
                    storage            = "VM-Storage"
                }
            }
        }
    }

    # VM Cloud-Init Settings
    os_type = "cloud-init"

    # (Optional) IP Address and Gateway
    ipconfig0 = "ip=192.168.178.3/24,gw=192.168.178.1,ip6=dhcp"

    # (Optional) DNS Servers
    nameserver = "1.1.1.1"

    # (Optional) Default User
    ciuser = "soniiit"

    # (Optional) Add your Public SSH KEY
    sshkeys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCwS2E+9u7DXG01ViDPKTObWcqb3MZ1+bkHrfOl2e0FokVv8QI6v0LtJgPc5i8eEunQlK29GsLmf9s1cKLN8LdgT7VXknSg2tsNtL1/nDFrSwRnuu5HJXmxjrdpPFyBSq5h/hOwwImhT5vSRdwfNF9Y4N0kwEghzu1/7JJDF8eAW66DBrBeMgz28U4IohCiRm+YvGhsvRfqeD9ztd+Wb0xcb485yotE8LnDAzGsfSwQ4GrOaoiLYdzZAVNiqXKrZhs7YpyvTu6ngnA+sGH+w0Igms++eF9ElQkfgz4LHVUdjVaySC41YWqE2nQacVqefEPcCIKnaAwRlvtBzBSXujCCI4//py/538SWLYrcmGjtNBKkBA0KVbPP+R7qq387Hr+bjjoXtIARsuqqj6gCzmYxrGiors84vt+dYMWNzTj9tvOVkNFpsIu3NER2e1yXgjVXSpPZDKERTCcDoNIwLI91+6EpMnXYz8MtH80CIHFJNSwflc5wud2ebSEGmSfGgJ0djAN4KWIhg/J+RgcZ/o/dvew6GxRYbv9EDZ3UXSaSEeKvjGLXAPV5MhQuIB1iavzV6CO3ntTKvqYHFyxSkWTXTyllGtsAj3N2DLA8CSnswsBXmO0FleEhjwAUzCA3itDK+/oBipPFbna3x0c+qcb8GJSsYpNIvTqdFb92DgUiPQ== "
}

resource "proxmox_vm_qemu" "app_srv_06" {

    # VM General Settings
    target_node = "pve-srv-01"
    vmid = "0"
    name = "app-srv-06"
    tags = "ubuntu,application"
    desc = "Ubiquiti Network Controller"
    automatic_reboot = false

    # The destination resource pool for the new VM
    pool = "Application"

    # VM Advanced General Settings
    onboot = true
    boot = "order=virtio0;net0"
    bootdisk = "virtio"
    scsihw = "virtio-scsi-pci"

    # VM OS Settings
    full_clone = true
    clone = "ubuntu-server-24-04"
    bios = "seabios"

    # VM System Settings
    agent = 1

    # VM CPU Settings
    cores = 1
    sockets = 1
    cpu = "kvm64"

    # VM Memory Settings
    memory = 2048

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
                    storage = "VM-Storage"
                }
            }
        }
        virtio {
            virtio0 {
                disk {
                    size               = 32
                    storage            = "VM-Storage"
                }
            }
        }
    }

    # VM Cloud-Init Settings
    os_type = "cloud-init"

    # (Optional) IP Address and Gateway
    ipconfig0 = "ip=192.168.178.39/24,gw=192.168.178.1,ip6=dhcp"

    # (Optional) DNS Servers
    nameserver = "192.168.178.3"

    # (Optional) Default User
    ciuser = "soniiit"

    # (Optional) Add your Public SSH KEY
    sshkeys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCwS2E+9u7DXG01ViDPKTObWcqb3MZ1+bkHrfOl2e0FokVv8QI6v0LtJgPc5i8eEunQlK29GsLmf9s1cKLN8LdgT7VXknSg2tsNtL1/nDFrSwRnuu5HJXmxjrdpPFyBSq5h/hOwwImhT5vSRdwfNF9Y4N0kwEghzu1/7JJDF8eAW66DBrBeMgz28U4IohCiRm+YvGhsvRfqeD9ztd+Wb0xcb485yotE8LnDAzGsfSwQ4GrOaoiLYdzZAVNiqXKrZhs7YpyvTu6ngnA+sGH+w0Igms++eF9ElQkfgz4LHVUdjVaySC41YWqE2nQacVqefEPcCIKnaAwRlvtBzBSXujCCI4//py/538SWLYrcmGjtNBKkBA0KVbPP+R7qq387Hr+bjjoXtIARsuqqj6gCzmYxrGiors84vt+dYMWNzTj9tvOVkNFpsIu3NER2e1yXgjVXSpPZDKERTCcDoNIwLI91+6EpMnXYz8MtH80CIHFJNSwflc5wud2ebSEGmSfGgJ0djAN4KWIhg/J+RgcZ/o/dvew6GxRYbv9EDZ3UXSaSEeKvjGLXAPV5MhQuIB1iavzV6CO3ntTKvqYHFyxSkWTXTyllGtsAj3N2DLA8CSnswsBXmO0FleEhjwAUzCA3itDK+/oBipPFbna3x0c+qcb8GJSsYpNIvTqdFb92DgUiPQ== "
}
