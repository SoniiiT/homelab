resource "proxmox_pool" "application" {
  poolid  = "Application" 
  comment = "Application pool"
}

resource "proxmox_pool" "demo" {
  poolid  = "Demo" 
  comment = "Demo pool"
}

resource "proxmox_pool" "desktop" {
  poolid  = "Desktop" 
  comment = "Desktop pool"
}

resource "proxmox_pool" "development" {
  poolid  = "Development" 
  comment = "Development pool"
}

resource "proxmox_pool" "docker" {
  poolid  = "Docker" 
  comment = "Docker pool"
}

resource "proxmox_pool" "gameserver" {
  poolid  = "Gameserver" 
  comment = "Gameserver pool"
}

resource "proxmox_pool" "github" {
  poolid  = "Github" 
  comment = "Github pool"
}

resource "proxmox_pool" "kubernetes" {
  poolid  = "Kubernetes" 
  comment = "Kubernetes pool"
}

resource "proxmox_pool" "nas" {
  poolid  = "NAS" 
  comment = "NAS pool"
}

resource "proxmox_pool" "template" {
  poolid  = "Template" 
  comment = "Template pool"
}

resource "proxmox_pool" "twingate" {
  poolid  = "Twingate" 
  comment = "Twingate pool"
}

resource "proxmox_pool" "windows" {
  poolid  = "Windows" 
  comment = "Windows pool"
}
