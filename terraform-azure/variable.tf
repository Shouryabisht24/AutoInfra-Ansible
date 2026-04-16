variable "source_image" {
  description = "The source image for the virtual machine."
  type = map(object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
    os_family = string
    user      = string
  }))

  default = {
    "Control-node-ubuntu" = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
      os_family = "ubuntu"
      user      = "adminuser"
    }

    "Worker-node-ubuntu" = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
      os_family = "ubuntu"
      user      = "adminuser"
    }

    "Worker-node-redhat" = {
      publisher = "RedHat"
      offer     = "RHEL-9"
      sku       = "9-gen2"
      version   = "latest"
      os_family = "redhat"
      user      = "adminuser"
    }

    "Worker-node-amazon" = {
      publisher = "Amazon"
      offer     = "al2023"
      sku       = "gen2"
      version   = "latest"
      os_family = "amazon"
      user      = "adminuser"
    }

  }

}

variable "admin_ssh_key_name" {
  description = "The SSH public key for the admin user."
  type        = string
  default     = "admin-ssh-key"
}

variable "environment" {
  description = "The environment for the resources."
  type        = string
  default     = "dev"
}

variable "instance_size" {
  description = "The size of vm"
  type        = string
  default     = "Standard_E2s_v3"
}

variable "ssh_key_path" {
  description = "ssh key path"
  type        = string
  default     = "~/keys/terra-key-ansible"
}