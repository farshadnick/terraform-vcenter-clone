# vCenter connectivity
vsphere_server   = "192.168.4.253"
vsphere_user     = "administrator@packops.local"
vsphere_password = "YOUR_PASSWORD"

# Deployment options
vsphere_datacenter = "Home"
vsphere_datastore  = "SSD-1TB"
vsphere_cluster    = "c1"
vsphere_template_name = "Ubuntu-Temp"

# Virtual Machine(s) configuration
vm_settings = {
  dev-vm-name-01 = {
    domain       = "example-domain.com"
    netportgroup = "VM Network"
    ip           = "192.168.4.10"
    subnet       = 24
    gw           = "192.168.4.1"
    nameservers  = ["192.168.4.1", "192.168.1.52"]
    cpus         = 2
    memory       = 2048
    disk         = 100
    thin         = true
 #   folder       = "packops-ubuntu-vms"
    user         = "example-user"
    sshkey       = "ssh-rsa AAAAAAAAAAAAAA"
  }
  prod-vm-name-01 = {
    domain       = "example-domain.com"
    netportgroup = "VM Network"
    ip           = "192.168.20.11"
    subnet       = 24
    gw           = "192.168.20.1"
    nameservers  = ["192.168.1.51", "192.168.1.52"]
    cpus         = 4
    memory       = 2048
    disk         = 100
    thin         = true
 #   folder       = "packops-ubuntu-vms"
    user         = "example-user"
    sshkey       = "ssh-rsa AAAAAAAAAAAAAA"
  }
}
