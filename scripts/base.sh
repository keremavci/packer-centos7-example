#!/bin/bash
sudo rpm -iUvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
sudo yum -y update
sudo yum -y install ansible gcc bzip2 make kernel-headers dkms kernel-devel-$(uname -r)


sudo mount -o loop /home/vagrant/VBoxGuestAdditions.iso /mnt
sudo sh /mnt/VBoxLinuxAdditions.run
sudo umount /mnt
#sudo rm -rf /home/vagrant/VBoxGuestAdditions.iso


