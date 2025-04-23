resource "proxmox_vm_qemu" "docker-host" {
  name        = "ubuntu-docker-host"
  desc        = "Docker Host for my homelab."
  vmid        = 101
  os_type     = var.os_type
  target_node = var.target_node
  clone       = "ubuntu-template"
  cores       = 4
  memory      = 8192
  skip_ipv6   = true
  scsihw      = "virtio-scsi-single"
  onboot      = true

  disk {
    slot    = "scsi0"
    size    = "90G"
    type    = "disk"
    storage = "local-lvm"

  }
  network {
    model  = "virtio"
    bridge = "vmbr0"
  }
}
