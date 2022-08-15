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

`exit` leaves virtual machine

using vagrant you do not enter the virtual machine properly/fully. You access it via terminal and no way else.

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

![Monolithic architecture](https://user-images.githubusercontent.com/47668244/184666759-1fe94f82-1a57-4306-8635-92fa40de3fb2.png)

Core functionality, comprised of modular processes. With connections to adapters which are extensions to external services (such as database connectivity)

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

curl -sL https://deb.nodesource.com/setup_6.x | bash -

sudo apt-get install nodejs -y

sudo npm install pm2 -g

cd /home/vagrant/app/app

npm install

npm install express

npm start
```

This will install NGINX, node.js (the version - 6 -desired as per requirements we've been given) using the curl command, pm2, and then install npm and start it up.

## Move Script into VM

With the script written, you want to actually move it into your virtual machine. To do this you will need to add the folling code into your Vagrantfile which configs and runs your VM;

`# syncs file into dev env virtual machine
  config.vm.synced_folder ".", "/home/vagrant/file name"`

This will add all of the files located beside your Vagrantfile into the virtual machine, synchronising them (so it is important you don't have your vm next to any sensitive files). Make sure it's before `end` and after the line that configures the virtual machine.

Then you will need to reload your virtual machine so that it is reconfigured with the new code; enter in your commandline - `vagrant reload`

## Run Script
 
 With the script made, pushed into the vm and the vm reloaded, lets actually run the script. We start this by booting back up and entering the environment; 

- `vagrant up` boot up vagrant
- `vagrant ssh` enter the vm

Now let's navigate to the script file, and then run it using `./"file name"`

This should give you the response saying that the 3000 port is up and operational. Meaning you can enter the NGINX ip on your localhost browser.

## Test it Works

You may want to test the dependencies of the vm, ensuring that the script actually have installed the appropriate packages and ran the right execution commands. Fulfilling the task requirements. Do this by going to your test file (environments/spec-tests/ in this case) and running;

`rake "test file name"` in your commandline

This should run a series of tests, all of them passing successfully hopefully. Meaning you have successfully automated, pushed and executed script into your virtual environment and tested it appropriately. Well done!


