
# access and configure vagrant to make 
Vagrant.configure("2") do |config|

  # create a virtual machine ubuntu
  config.vm.box = "ubuntu/xenial64"

  #create private network in the vm with ip...
  config.vm.network "private_network", ip: "192.168.10.100"
  # once you've added a private network, you need to reboot VM - vagrant reload
  # if vagrant reload doesn't work try - vagrant destroy - vagrant up

  # syncs file into dev env virtual machine
  config.vm.synced_folder ".", "/home/vagrant/app"
end
