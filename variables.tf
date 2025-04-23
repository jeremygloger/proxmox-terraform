variable "proxmox_api_url" {
  description = "The URL of the Proxmox API"
  type        = string
}

variable "proxmox_user" {
  description = "Proxmox API Token ID"
  type        = string
}

variable "proxmox_pass" {
  description = "Proxmox API Token Secret"
  type        = string
  sensitive   = true
}

variable "os_type" {
  description = "Typical OS Type"
  type        = string
  default     = "OS Type (ubuntu, windows, etc)"
}

variable "target_node" {
  description = "Target node"
  type        = string
  default     = "proxmox node name"
}

variable "os_template" {
  description = "Default Template to create VMs on."
  type        = string
  default     = "name of template here"
}
