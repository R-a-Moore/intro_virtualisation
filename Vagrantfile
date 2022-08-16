Vagrant.configure("2") do |config|

  config.vm.provision "shell", inline: <<-SCRIPT
    
  sudo apt-get update -y

  sudo apt-get upgrade -y

  sudo apt-get install nginx -y

  sudo apt-get purge nodejs npm -y

  curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

  sudo apt-get install nodejs -y

  sudo npm install pm2 -g

  sudo apt-get update -y

  sudo apt-get upgrade -y
  SCRIPT

  config.vm.define "app" do |app|

    app.vm.box = "ubuntu/bionic64"

    app.vm.network "private_network", ip: "192.168.10.100"

    app.vm.synced_folder ".", "/home/vagrant/app"

  end

  config.vm.provision "shell", inline: <<-SCRIPT
    
  sudo apt-get update -y

  sudo apt-get upgrade -y

  sudo apt-get install nginx -y

  sudo apt-get purge nodejs npm -y

  curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

  sudo apt-get install nodejs -y

  sudo npm install pm2 -g

  sudo apt-get update -y

  sudo apt-get upgrade -y
  SCRIPT

  config.vm.define "db" do |db|

    db.vm.box = "ubuntu/bionic64"

    db.vm.network "private_network", ip: "192.168.10.150"

  end

end