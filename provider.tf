erraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "3.0.1-rc4"
    }
  }

  backend "azurerm" {
    resource_group_name  = "var.rgname"
    storage_account_name = "var.storagename"
    container_name       = "var.containername"
    key                  = "var.tfstate"
  }
}

provider "proxmox" {
  pm_api_url          = var.proxmox_api_url
  pm_api_token_id     = var.proxmox_user
  pm_api_token_secret = var.proxmox_pass
  pm_tls_insecure     = true
}
