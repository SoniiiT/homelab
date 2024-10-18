resource "proxmox_vm_qemu" "dc_srv_01" {

    # VM General Settings
    target_node = "pve-srv-01"
    vmid = "0"
    name = "dc-srv-01"
    tags = "windows"
    desc = "Domain Controller for soniiit.home"
    automatic_reboot = false

    # The destination resource pool for the new VM
    pool = "Windows"

    # VM Advanced General Settings
    onboot = true
    boot = "order=scsi0"
    bootdisk = "virtio"
    scsihw = "virtio-scsi-pci"

    # VM OS Settings
    full_clone = true
    clone = "windows-server-2k22"
    bios = "ovmf"

    # VM System Settings
    agent = 1

    # VM CPU Settings
    cores = 2
    sockets = 1
    cpu = "host"

    # VM Memory Settings
    memory = 2048

    # VM Network Settings
    network {
        bridge = "vmbr0"
        model  = "virtio"
    }

    # Efi Disk Settings
    efidisk {
        efitype = "4m"
        storage = "M2-Storage"
    }

    # VM Disk Settings Cloud-Init
    disks {
        scsi {
            scsi0 {
                disk {
                    size               = 32
                    storage            = "M2-Storage"
                }
            }
        }
    }

    # IP Address and Gateway
    ipconfig0 = "ip=dhcp,ip6=dhcp"

    # Skip IPv6 Validation
    skip_ipv6 = true
}

resource "proxmox_vm_qemu" "dc_srv_02" {

    # VM General Settings
    target_node = "pve-srv-01"
    vmid = "0"
    name = "dc-srv-02"
    tags = "windows"
    desc = "Domain Controller for soniiit.home"
    automatic_reboot = false

    # The destination resource pool for the new VM
    pool = "Windows"

    # VM Advanced General Settings
    onboot = true
    boot = "order=scsi0"
    bootdisk = "virtio"
    scsihw = "virtio-scsi-pci"

    # VM OS Settings
    full_clone = true
    clone = "windows-server-2k22"
    bios = "ovmf"

    # VM System Settings
    agent = 1

    # VM CPU Settings
    cores = 2
    sockets = 1
    cpu = "host"

    # VM Memory Settings
    memory = 2048

    # VM Network Settings
    network {
        bridge = "vmbr0"
        model  = "virtio"
    }

    # Efi Disk Settings
    efidisk {
        efitype = "4m"
        storage = "M2-Storage"
    }

    # VM Disk Settings Cloud-Init
    disks {
        scsi {
            scsi0 {
                disk {
                    size               = 32
                    storage            = "M2-Storage"
                }
            }
        }
    }

    # IP Address and Gateway
    ipconfig0 = "ip=dhcp,ip6=dhcp"

    # Skip IPv6 Validation
    skip_ipv6 = true
}
