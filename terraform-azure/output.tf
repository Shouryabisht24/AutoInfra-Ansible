output "instance_details" {
  description = "Details of all the vm's"
  value = {
    for name, vm in azurerm_linux_virtual_machine.mtc-vm : name => {
      private_ip = azurerm_network_interface.mtc-nic[name].private_ip_address
      user       = var.source_image[name].user
      os_family  = var.source_image[name].os_family
    }
  }
}
output "inventory_file" {
  description = "Path to the auto-generated Ansible inventory"
  value       = local_file.ansible_inventory.filename
}