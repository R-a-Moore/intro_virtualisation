# Development Environments
## Virtualisation
Virtualisation is the process of crafting an entirely new software based instance of a thing, on the same abstraction level as it's already existent host level, using the same virtual hardware. Such virtualisations can be constructed for storage, processing, operating environments, networking and more.

Virtual machines are software based computer, which has its own operating system, storage etc, which is run on a hypervisor (such as VirtualBox). 
These virtual environments can be used to develop software in a controlled context, allowing for secure testing, and development.

### Benefits
- Cost saving; having multiple machines on a single infrastructure saves the cost of overwise constructing those machines phsyically.
- agility/speed; simpler and quicker to set up a virtual environment than to set up a whole new one.
- downtime; if a vm goes down on one machine, it can be transfered over a physical network and spun up on a new machine.

### Layers
layer 1 - access virtualisation - allows applications to work with remote clients without change, regardless of whether those remote devices were thought of or available whilst the application was written.

layer 2 - application virtualisation - allows applications written for one OS (or OS version) to execute in another environment, this environment can be a new OS version or an entirely different OS.

layer 3 - processing virtualisation - allows one system to support workloads as if it were many systems, or allow one workload to operate across many systems as if it was a single computing resource.

layer 4 - storage virtualisation - allows workloads to access storage without having to know where the data is stored, what type of device is storing the data, or whether the storage is attached directly to the system hosting the workload (in the LAN server or on the cloud).

layer 5 - network virtualisation - allows systems to work with other systems safely and securely, without having to care too much about the details of the underlying network.

layer 6 - management of virtualised environment - allows administrators and operators to easily monitor and manage virtual environments across boundaries. Including the physical location of systems; OSs in use, applications or workloads in use, network topology, storage implementation, and how client systems connect to the applications.

layer 7 - security of virtualised - monitors and protects all of the other layers of virtualisation so that only authorised use can be made of the resources.

![layers](https://user-images.githubusercontent.com/47668244/184509611-20b0b476-57f9-4904-bd43-40a147efc161.png)


## Development/Virtual Environments with Vagrant & VirtualBox
A development environment is when you use virtualisation to construct an entirely new software based machine. Using the different layers of virtualisation in conjunction, all together.

![virtualisation](https://user-images.githubusercontent.com/47668244/184348268-2c07ba64-5b6f-469c-b044-ffd70709f2d8.png)

1. developer, using vagrant, makes virtual machine, 
2.connecting to it using terminal commands, 
3 & 4. all of which are running on VirtualBox 

## Vagrant and VirtualBox

Steps for initialising and running vagrant:

`vagrant` shows all available commands for vagrant, outside of the virtual machine

0. `vagrant init (hashicorp/bionic64 or ubuntu/xenial64)` -> initializes machine, don't need to do if you nano a vagrantfile already, can skip straight to vagrant up

1. `vagrant up` -> turn on virtual machine

2. `vagrant status` -> provides info on virtual machine

`vagrant destroy` - deletes virtual machine

`vagrant ssh` - creates an ssh connection to the virtual machine of the directory that you are currently in (`cd` to navigate `pwd` to see file path)

`vagrant reload` restarts the vm

//NOTE//: When using multiple virtual machines on the same vagrantfile, you will need to specify the defined name of the specific machine you are wishing to up, reload, destroy etc.

`exit` leaves virtual machine

using vagrant you do not enter the virtual machine properly/fully. You access it via terminal and no way else.

### Vagrantfile

```

# access and configure vagrant to make 
Vagrant.configure("2") do |config|

  config.vm.define "app" do |app| # define name of specific vm
    # create a virtual machine ubuntu
    config.vm.box = "ubuntu/xenial64"

    #create private network in the vm with ip...
    config.vm.network "private_network", ip: "192.168.10.100"
    # once you've added a private network, you need to reboot VM - vagrant reload
    # if vagrant reload doesn't work try - vagrant destroy - vagrant up

    # syncs file into dev env virtual machine
    config.vm.synced_folder ".", "/home/vagrant/app"
  end

  config.vm.define "db" do |db|
    # create a virtual machine ubuntu
    config.vm.box = "ubuntu/xenial64"

    #create private network in the vm with ip...
    config.vm.network "private_network", ip: "192.168.10.150"
    # once you've added a private network, you need to reboot VM - vagrant reload

  end
end
```
## Virtualisation

- `clear` clears terminal backlog

- `uname` - get os type
- `uname -a` provides detailed telling of os

How to create a file in linux:
- `touch "file name"`
- `nano "file name"`

How to check existing file directories:
- `ls`
-`ls -a` shows hidden directories

How to make a direcotry:
- `mkdir "folder name"`

Navigation:
- `cd "directory name"`
- `cd ..` go back one step/to previous directory
- `pwd` check current filepath

- `cp "file copying" "copy location"` - copies a file to a specific directory (must provide absolute path when in linux terminal, i.e., full filepath from root using /)

How to remove file:
- `rm` deletes file
- `rm -rf` forces deletion of file

How to cut a file:
- `mv "file name" "file destination path"` 

Access process/task manager in linux terminal:

-`ps aux` detailed view

-`sudo` (super user) is used to run command with ultimate permissions. `sudo` is your best friend. if you can't execute a command, sudo will give you the permission to do so. You shall become a SUPER USER!!!
-`sudo -su` enters super user. 

- `chmod +x "file name"` changes file permissions `r` read `w` write `rw` read/write `all`

- `ll` presents files permissions

- update our ubuntu os `apt-get install update` may not always work. if given error "E: Unable to locate package update" try updating the os before running this command again. to update use this command `sudo apt update`. Also try removing the install part from the command to see if that works
- run same command as super user `sudo apt-get install update`
- upgrade our ubuntu os `apt-get upgrade` adding `-y` bypasses continue queries, making the code being ran automated.

- `sudo nano provision.sh` command for creating file to script in '.sh' is a shell extension command.

- check content `cat "file name"`

- how to run a file `./"file name"`

### Example

![linux terminal file exectuion example](https://user-images.githubusercontent.com/47668244/184180565-7839a0f5-b96e-441d-8955-8cc2dc1d3079.png)

## Continued...

- can use `&&` to execute multiple commands on a single line

- `sudo apt-get install nginx -y` installs automated NGINX. high performance web server and proxy server (multi use)

- how to check if it's installed/working `sudo systemctl status "application i.e., nginx"`

- how to restart a process - in this case it's an NGINX (i.e., if a process is not active as seen in the systemctl status command) `sudo systemctl restart nginx`


task:
- time boxing
- what are the dependencies
- which version of app/nodejs - nodejs 6.0 or above
- which env can this be deployed - Linux ubuntu 16.04 or above
- code will be shared with you on teams in a zip file
- what are security concerns/issues between development & deployment
- what is the Definiton of Done for the app - software requirements
- port requirements
- machine hardware requirements / performance
- hack 300 - sec vuln presence
- npm
- node.js

## DevOps Deployment Example Task
### Monolith Deployment
### Nodejs - backend tool
### by default Nodejs works on port 3000
Q&A 
- `what are the featurs of this app?`
- `3 pages` 1 `sparta app page` 2 `fibonacci replacement` 3 is `192.168.10.100:3000/posts` for `mongodb`
- security; mongodb default port is `27017` and mongodb allows you to access - `mongo.conf` you need to allow the required ip.
- what is nodejs - how to launch it
- what are the dependies - install nodejs -> required version of nodejs`version 6.4 or above` `sudo apt-get install nodejs -y` <- won't work, need to get link to right version.
- which env ws needed in order for us to deploy this app `linux ubuntu 16.04 or above`

### Steps to moving software to be deployed into dev env

In nearly all projects, DevOps engineers will have to deploy software and packages into a development or production environment. This is how you may do this using the already set up virtual machine as created previously in this README.md.

1. The first step to deploying software to a vm, is to download it, moving it into the correct folder. This should be the same folder where the vagrantfile is stored.

 Next go into your commandline (git bash etc), cd to the directory where both the software and the vagrantfile are now stored, and input this command; `gem install bundler` this uses gem to install a package manager - bundler. Then input into the terminal `bundle`.

2. Next you will need to access the vagrantfile, using ruby input the following code `config.vm.synced_folder ".", "/home/vagrant/app"` this configures the virtual machine (in vagrant) to synchronize the files adjacent to the vagrantfile into the vm. i.e., making it available in the vm. 

The `"."` means to sync all of the files on the same level as the vagrantfile, so it is imperative not to have your vm stored in a C: drive or Users level as it fill download all of that data onto the vm which is a security access risk.

Make sure to save the vagrantfile once edited.

3. Now reload the vm so it knows to implement the code you've implemented.

4. now ssh into the vm and the code should be available in the vm.


`rake "file name"` runs/executes tests within a given files. The tests which are executed must all pass before moving on, as in TDD framework this is the pass testing. You can't start further work unless you ensure the requirements (dependencies in this case) are met.


#### Purging and Installing specific versions of software

1. Purge the old version of nodejs & npm
2. Set up PPA and update
3. Install the nodejs

# Using Ubuntu
uninstall nodejs if already on your system
`sudo apt-get purge nodejs npm`

`curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -`

`sudo apt-get install -y nodejs`

# Using Debian, as root
`apt-get purge nodejs npm`

`curl -sL https://deb.nodesource.com/setup_6.x | bash -`

`apt-get install -y nodejs`

- `curl` downloads packages from online on the terminal

how to install pm2 on npm`sudo npm install pm2 -g`

`npm install` (try `npm install express` as this may work instead)
`npm start`

`history` lists all previous input commands on the terminal


# Monolithic Architecture

[helpful video](https://www.youtube.com/watch?v=IwT_pBcDmSI)

Monolithic architecture is a software deployment architecture which bases around modular design. It's centred around one single application service (as opposed to multiple - microservices) relating to a single database, with dependency links outside of this single 'monolith'.

![Monolithic architecture](https://user-images.githubusercontent.com/47668244/184840008-acaf1592-d671-4fc6-9a3f-da4ad1032180.png)


Monolithic architecture encompasses core functionality, comprised of modular processes. With connections to adapters which are extensions to external services (such as database connectivity)

Why is monolithic architecture used? It is best for small apps/applications. But not good for scalable applications.

For example, you go to a barber shop. It may have 2,000 customers a week. But next year it has 5% increase every year, it may not be best to have monolithic architecture, as it will keep on growing. However a school who always has around 1,000 students a year and needs an app for ordering lunch, monolithic architecture is fine, as in 20 years time, the school will not have 100,000 students. The growth (scalability requirement) of the project should dictate whether to implement monolithic architecture.

### Benefits
- simple to develop
- simple to deploy
- simple to manage
- easy to comprehend
- simple to test
- easy to scale (to a certain level); being able to reproduce multiple copies when scalability is required.

### Disadvantages
Can gets bloated
- language/framework lock; is stuck to a single language or framework which would take years to re-implement in a new one.
- difficult to digest
- difficult to distribute development; dependencies are dependent on shared resources and packages, meaning changing it to the benefit of one dependency could be to the detriment of all others.
- deployment as a single unit; becomes obstacle to frequent deployment
- development slows down
- resources are not optimised
- scaling becomes difficult.
Microservices is the solution to Monolith

# Automating

In the world of DevOps, once we have learnt to manually construct and complete a particular task, we want to then automate it such that it saves time and effort (time is money).

So with this in mind, we want to know how to carry out (mostly) all that we've leant above automatically;

- running updates and installations on NGINX, nodejs, npm, and pm2 (all with appropriate versions).

The initial step you will need to complete is to go into the command line in whichever directory you have your vagrantfile, navigating to it in your commandline. And enter the following: `gem install bundler` and then `bundle`

## Provisions.sh Scripting

Firstly you will want to create a 'provisions' script file with the extension '.sh' which will contain and run all of the desired commands on the terminal when executed.

 You can do this either in the command line or via file directory. Make sure it is next to / within the same directory as your Vagrantfile, for later.

 ### The Script

 Next open up the .sh file and input the following script:

```
sudo apt-get install nginx -y

sudo apt-get purge nodejs npm -y

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

sudo apt-get install nodejs -y

cd home/vagrant/app/app/

sudo npm install pm2 -g
```

This will install NGINX, node.js (the version - 6 -desired as per requirements we've been given) using the curl command, pm2, and then install npm and start it up.

## Move Script into VM

With the script written, you want to actually move it into your virtual machine. To do this you will need to add the folling code into your Vagrantfile which configs and runs your VM;

Inline Scripts

Perhaps the easiest way to get started is with an inline script. An inline script is a script that is given to Vagrant directly within the Vagrantfile. An example is best:

```
Vagrant.configure("2") do |config|
  config.vm.provision "shell",
    inline: "echo Hello, World"
end
```

This causes echo Hello, World to be run within the guest machine when provisioners are run.

Combined with a little bit more Ruby, this makes it very easy to embed your shell scripts directly within your Vagrantfile. Another example below:

```
$script = <<-SCRIPT
echo I am provisioning...
date > /etc/vagrant_provisioned_at
SCRIPT
 
Vagrant.configure("2") do |config|
  config.vm.provision "shell", inline: $script
end
```

In the code block above, the script block starts with <<-SCRIPT and ends with SCRIPT. This is known as a "Here Document" or a "heredoc".

Alternately you can do it without automating by syncing the files adjacent to the vagrantfile and then running the script within the vm. However this is not automated:

```
# syncs file into dev env virtual machine
  config.vm.synced_folder ".", "/home/vagrant/file name"
  ```

This will add all of the files located beside your Vagrantfile into the virtual machine, synchronising them (so it is important you don't have your vm next to any sensitive files). Make sure it's before `end` and after the line that configures the virtual machine.

Then you will need to reload your virtual machine so that it is reconfigured with the new code; enter in your commandline - `vagrant reload`

### Run Script
 
 With the script made, pushed into the vm and the vm reloaded, lets actually run the script. We start this by booting back up and entering the environment; 

- `vagrant up` boot up vagrant
- `vagrant ssh` enter the vm

Now let's navigate to the script file, and then run it using `./"file name"`

This should give you the response saying that the 3000 port is up and operational. Meaning you can enter the NGINX ip on your localhost browser.

## Test it Works

You may want to test the dependencies of the vm, ensuring that the script actually have installed the appropriate packages and ran the right execution commands. Fulfilling the task requirements. Do this by going to your test file (environments/spec-tests/ in this case) and running;

`rake "test file name"` in your commandline

This should run a series of tests, all of them passing successfully hopefully. Meaning you have successfully automated, pushed and executed script into your virtual environment and tested it appropriately. Well done!

## Run it!

Now that you've test it all, and everything working all you have to do is actually run the application!

```
npm install express

npm start
```
(use ip address: 192.168.10.100:3000)

Enjoy!

# Linux Environment Variables - Windows / Mac

- How to check existing Env Var `env`or `printenv`
- How to create a variable in Linux `variable name=variable value` i.e, `Name=Shahrukh`
- How to check Linux variables (Linux variables and environment variables are different) `echo $Name`

The difference for environment variables is that they belong to that specific environment. They have a key word called `export "keyword"`, such as., `export Last_Name=Khan`
check specific env var `printenv "variable/keyword"` outcome `khan` 

## How to make a environment variable `PERSISTENT`
[How to persist env vars](https://phoenixnap.com/kb/linux-set-environment-variable)
Research how to make env persistent of your `first_name`, `last_name` and `DB_HOST=mongodb://192.168.10.150:27017/posts`

Instead of using the `exit` command to leave and ssh back into the vm, you can use `source ~/.bashrc` to refresh the environment variables and will show you just the same if a env var is persistent.

Open the current user's profile in an editor
add the export command for every env var you want to persist
save changes

# Reverse Proxies

Need to configure the default port (which is always 80), so that the user doesn't have to input the specific port (3000) everytime they look up the webapp. Otherwise if the reverse proxy isn't configured, when the user puts in the ip, it will go to port 80 everytime.

### The Automated Way

We'll use the `-f` (replace) and `cp` (copy) commands, creating a new file which will hold the default configuration for NGINX that we want, then replace the old one with this new one using our automated provisioning script:

create a file which will replace the default:
```
server {
        listen 80 default_server;
        listen [::]:80 default_server;

       root /var/www/html;

       
        index index.html index.htm index.nginx-debian.html;

       server_name _;

       location / {
                proxy_pass http://localhost:3000;
        }
}
```

Next we need our provisioning script in the vagrantfile to tell the vm to replace the standard default file with this one, so add these lines to the already made script:

```
    sudo cp -f app/rev_prox_file /etc/nginx/sites-available/default

    sudo systemctl restart nginx
```

# Multi-Machine Environments

![multi machine virtualisation](https://user-images.githubusercontent.com/47668244/184920055-30240422-971e-451c-94a3-b1336b64649e.png)

In vagrant you are able to hold multiple machines, all of which being their own environment, yet able to connect to one another.

1. create a vagrantfile for configuring your virtual machines in vagrant as usual

```
Vagrant.configure("2") do |config| # start up vm


end
```

2. However when making more than one virtual machine, you need to define each one that you create, using the `define` syntax.

3. It should call a new machine, followed by whatever name you want to give it, and then tell vagrant to carry it out. So it should look something like this: `config.vm.define "name of machine" do |name of machine|`

4. You will need to place whatever configuration code for that specific machine inline / in appropriate indentation with wherever it's defined: 

```
  config.vm.define "app" do |app| # configure a vm called app

    app.vm.box = "ubuntu/bionic64" # using ubuntu

    app.vm.network "private_network", ip: "192.168.10.100" # give it a private network

    app.vm.synced_folder ".", "/home/vagrant/app" # synchronize with adjacent files (load them into vm)
  end
```

5. You will need to do this for each machine that you create:

```
  config.vm.define "app" do |app| # configure a vm called app

    app.vm.box = "ubuntu/bionic64" # using ubuntu

    app.vm.network "private_network", ip: "192.168.10.100" # give it a private network

    app.vm.synced_folder ".", "/home/vagrant/app" # synchronize with adjacent files (load them into vm)
  end

  config.vm.define "db" do |db|# make second vm called db (similar configurations as previous)

    db.vm.box = "ubuntu/bionic64"

    db.vm.network "private_network", ip: "192.168.10.150
  end
```

This code above should create two machines, one named 'app' and one named 'db', each with a private network ip and set up with ubuntu. The app machine having loaded/synchronised all the files adjacent to the vagrantfile onto it.

## Connecting one vm webapp to another's db

this is an example of monolithic architecture - a central node.js application (machine) which runs, connecting to a mongodb database (machine).

### Steps

ssh into db machine

firstly
`update & upgrade`

make mongodb use a key:
`sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927`
(mongodb as a different key for each version so be sure you are using the right one)

add repo to mongodb: `echo "deb https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list`

`update & upgrade`

install mongodb:
`sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20`

whilst it's called mongodb, in the terminal it's referred to as 'mongod'

`sudo systemctl restart mongod` - restarts it makes sure it's working

`sudo systemctl status mongod` - check it's working

`sudo nano /etc/mongod.conf`

edit file so it allows to host the ip we're working with 

we're going to make it allow everyone in this case, however in practice we want it to only allow specific ips because of security risks. - in `# network interfaces` part, in the `bindIp` change it to `0.0.0.0` CTRL+X to save, then y to confirm and ENTER to exit back onto the terminal

`sudo systemctl restart mongod`
`sudo systemctl enable mongod`

Now we want to exit and enter the app machine

in the app machine we want to make sure it uses the db machine's ip. we do this manually by checking if the db ip is a persistent environment variable: `printenv DB_HOST`

`export DB_HOST=mongodb://192.168.10.150:27017/posts`

to actually make it persistent we 

`sudo node app/app/seeds/seed.js` <-- should launch with content of db

`npm install express`

`npm start`

### Automating it!

```
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

      cd app

      cd app

      sudo cp -f mongod.conf /etc/mongod.conf

      sudo systemctl restart mongod

      sudo systemctl enable mongod
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

    cd seeds

    node seed.js

    cd ..

    npm install express

    npm start
    SCRIPT

  end

end

```

