# # hyperv-srv-01
# resource "proxmox_vm_qemu" "hyperv_srv_01" {

#     # VM General Settings
#     target_node = "pve-srv-01"
#     vmid = "0"
#     name = "hyperv-srv-01"
#     tags = "windows"
#     desc = "HyperV Server 01"
#     automatic_reboot = false

#     # The destination resource pool for the new VM
#     pool = "Windows"

#     # VM Advanced General Settings
#     onboot = false
#     boot = "order=scsi0;net0"
#     bootdisk = "scsi"
#     scsihw = "virtio-scsi-pci"

#     # VM OS Settings
#     full_clone = true
#     clone = "windows-server-2k22"
#     bios = "ovmf"

#     # VM System Settings
#     agent = 1

#     # VM CPU Settings
#     cores = 4
#     sockets = 1
#     cpu = "host"

#     # VM Memory Settings
#     memory = 20480

#     # VM Network Settings
#     network {
#         bridge = "vmbr0"
#         model  = "virtio"
#     }
#     network {
#         bridge = "vmbr0"
#         model  = "e1000"
#     }

#     # VM Disk Settings Cloud-Init
#     disks {
#         scsi {
#             scsi0 {
#                 disk {
#                     size = 32
#                     storage = "VM-Storage"
#                 }
#             }
#             scsi1 {
#                 disk {
#                     size = 128
#                     storage = "VM-Storage"
#                 }
#             }
#         }
#     }
# }

# # hyperv-srv-02
# resource "proxmox_vm_qemu" "hyperv_srv_02" {

#     # VM General Settings
#     target_node = "pve-srv-01"
#     vmid = "0"
#     name = "hyperv-srv-02"
#     tags = "windows"
#     desc = "HyperV Server 02"
#     automatic_reboot = false

#     # The destination resource pool for the new VM
#     pool = "Windows"

#     # VM Advanced General Settings
#     onboot = false
#     boot = "order=scsi0;net0"
#     bootdisk = "scsi"
#     scsihw = "virtio-scsi-pci"

#     # VM OS Settings
#     full_clone = true
#     clone = "windows-server-2k22"
#     bios = "ovmf"

#     # VM System Settings
#     agent = 1

#     # VM CPU Settings
#     cores = 4
#     sockets = 1
#     cpu = "host"

#     # VM Memory Settings
#     memory = 20480

#     # VM Network Settings
#     network {
#         bridge = "vmbr0"
#         model  = "virtio"
#     }
#     network {
#         bridge = "vmbr0"
#         model  = "e1000"
#     }

#     # VM Disk Settings Cloud-Init
#     disks {
#         scsi {
#             scsi0 {
#                 disk {
#                     size = 32
#                     storage = "VM-Storage"
#                 }
#             }
#             scsi1 {
#                 disk {
#                     size = 128
#                     storage = "VM-Storage"
#                 }
#             }
#         }
#     }
# }

# resource "proxmox_vm_qemu" "dc_srv_01" {

#     # VM General Settings
#     target_node = "pve-srv-01"
#     vmid = "0"
#     name = "dc-srv-01"
#     tags = "windows"
#     desc = "Domain Controller 01"
#     automatic_reboot = false

#     # The destination resource pool for the new VM
#     pool = "Windows"

#     # VM Advanced General Settings
#     onboot = false
#     boot = "order=scsi0;net0"
#     bootdisk = "scsi"
#     scsihw = "virtio-scsi-pci"

#     # VM OS Settings
#     full_clone = true
#     clone = "windows-server-2k22"
#     bios = "ovmf"

#     # VM System Settings
#     agent = 1

#     # VM CPU Settings
#     cores = 2
#     sockets = 1
#     cpu = "host"

#     # VM Memory Settings
#     memory = 4096

#     # VM Network Settings
#     network {
#         bridge = "vmbr0"
#         model  = "virtio"
#     }

#     # VM Disk Settings Cloud-Init
#     disks {
#         scsi {
#             scsi0 {
#                 disk {
#                     size = 32
#                     storage = "VM-Storage"
#                 }
#             }
#         }
#     }
# }

# resource "proxmox_vm_qemu" "kasm_srv_01" {

#     # VM General Settings
#     target_node = "pve-srv-01"
#     vmid = "0"
#     name = "kasm-srv-01"
#     tags = "windows"
#     desc = "Kasm Windows Server 01"
#     automatic_reboot = false

#     # The destination resource pool for the new VM
#     pool = "Kasm"

#     # VM Advanced General Settings
#     onboot = false
#     boot = "order=scsi0;net0"
#     bootdisk = "scsi"
#     scsihw = "virtio-scsi-pci"

#     # VM OS Settings
#     full_clone = true
#     clone = "windows-server-2k22"
#     bios = "ovmf"

#     # VM System Settings
#     agent = 1

#     # VM CPU Settings
#     cores = 2
#     sockets = 1
#     cpu = "host"

#     # VM Memory Settings
#     memory = 8192

#     # VM Network Settings
#     network {
#         bridge = "vmbr0"
#         model  = "virtio"
#     }

#     # VM Disk Settings Cloud-Init
#     disks {
#         scsi {
#             scsi0 {
#                 disk {
#                     size = 32
#                     storage = "VM-Storage"
#                 }
#             }
#         }
#     }
# }

# resource "proxmox_vm_qemu" "kasm_srv_02" {

#     # VM General Settings
#     target_node = "pve-srv-01"
#     vmid = "0"
#     name = "kasm-srv-02"
#     tags = "windows"
#     desc = "Kasm Windows Server 02"
#     automatic_reboot = false

#     # The destination resource pool for the new VM
#     pool = "Kasm"

#     # VM Advanced General Settings
#     onboot = false
#     boot = "order=scsi0;net0"
#     bootdisk = "scsi"
#     scsihw = "virtio-scsi-pci"

#     # VM OS Settings
#     full_clone = true
#     clone = "windows-server-2k25P"
#     bios = "ovmf"

#     # VM System Settings
#     agent = 1

#     # VM CPU Settings
#     cores = 2
#     sockets = 1
#     cpu = "host"

#     # VM Memory Settings
#     memory = 2048

#     # VM Network Settings
#     network {
#         bridge = "vmbr0"
#         model  = "e1000e"
#     }

#     # VM Disk Settings Cloud-Init
#     disks {
#         scsi {
#             scsi0 {
#                 disk {
#                     size = 32
#                     storage = "VM-Storage"
#                 }
#             }
#         }
#     }
# }
