Vagrant.configure("2") do |config| # start up vm


  config.vm.define "db" do |db|# make second vm called db (similar configurations as previous)

    db.vm.box = "ubuntu/bionic64"

    db.vm.network "private_network", ip: "192.168.10.150"

    db.vm.synced_folder ".", "/home/vagrant/app" # synchronize with adjacent files (load them into vm)

    db.vm.provision "shell", inline: <<-SCRIPT
      sudo apt-get update -y

      sudo apt-get upgrade -y

      sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927

      echo "deb https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

      sudo apt-get update -y

      sudo apt-get upgrade -y

      sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20

      sudo systemctl restart mongod

      sudo systemctl enable mongod

      cd app

      cd app

      sudo cp -f all_ips /etc/mongod.conf
    SCRIPT

  end

  config.vm.define "app" do |app| # configure a vm called app

    app.vm.box = "ubuntu/bionic64" # using ubuntu

    app.vm.network "private_network", ip: "192.168.10.100" # give it a private network

    app.vm.synced_folder ".", "/home/vagrant/app" # synchronize with adjacent files (load them into vm)

    # run a provisioning script which installs and updates vm automatically so doesn't have to be done manually and user can run straight away
    app.vm.provision "shell", inline: <<-SCRIPT 
    
    sudo apt-get update -y
  
    sudo apt-get upgrade -y
  
    sudo apt-get install nginx -y
  
    sudo apt-get purge nodejs npm -y
  
    curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
  
    sudo apt-get install -y nodejs npm

    echo "DB_HOST=mongodb://192.168.10.150:27017/posts" | sudo tee -a /etc/environment
  
    cd app

    cd app

    sudo cp -f rev_proxy /etc/nginx/sites-available/default

    sudo systemctl restart nginx
  
    sudo apt-get update -y
  
    sudo apt-get upgrade -y
    SCRIPT

  end

end
