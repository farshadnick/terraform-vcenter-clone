# Cloud-Init Sample

This repo provides an example of deploying a Ubuntu machine with some hardcoded values in both the metadata and userdata files included in the templates directory.

Cloud-init configuration is provided via the [VMware guestinfo datasource](https://github.com/vmware/cloud-init-vmware-guestinfo). A sample Packer build that has the relevant dependencies pre-installed can be found [here](https://github.com/grantorchard/packer-vsphere-cloudinit).

```

sudo apt-get install open-vm-tools-desktop

vmware-toolbox-cmd config set deployPkg enable-custom-scripts true
truncate -s0 /etc/hostname
hostnamectl set-hostname localhost
rm /etc/netplan/50-cloud-init.yaml
truncate -s0 /etc/machine-id
rm /var/lib/dbus/machine-id
ln -s /etc/machine-id /var/lib/dbus/machine-id
cloud-init clean
rm -rf /etc/cloud/cloud.cfg.d/subiquity-disable-cloudinit-networking.cfg
rm -rf /etc/cloud/cloud.cfg.d/99-installer.cfg
rm -rf /etc/netplan/00-installer-config.yaml
echo "disable_vmware_customization: false" >> /etc/cloud/cloud.cfg
echo "datasource_list: [ VMware, OVF, None ]" > /etc/cloud/cloud.cfg.d/90_dpkg.cfg
truncate -s0 ~/.bash_history
history -c


```
