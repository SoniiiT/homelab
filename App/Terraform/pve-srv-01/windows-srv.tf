# # hyperv-srv-01
# resource "proxmox_vm_qemu" "hyperv-srv-01" {

#     # VM General Settings
#     target_node = "pve-srv-01"
#     vmid = "0"
#     name = "hyperv-srv-01"
#     tags = "windows"
#     desc = "HyperV Server 01"

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
# resource "proxmox_vm_qemu" "hyperv-srv-02" {

#     # VM General Settings
#     target_node = "pve-srv-01"
#     vmid = "0"
#     name = "hyperv-srv-02"
#     tags = "windows"
#     desc = "HyperV Server 02"

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