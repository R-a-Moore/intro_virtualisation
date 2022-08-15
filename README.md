# Development Environments
Virtualisation is the process of crafting an entirely new software based instance of a thing, on the same abstraction level as it's already existent host level, using the same virtual hardware. Such virtualisations can be constructed for storage, processing, operating environments, networking and more.

Virtual machines are software based computer, which has its own operating system, storage etc, which is run on a hypervisor (such as VirtualBox). 
These virtual environments can be used to develop software in a controlled context, allowing for secure testing, and development.

### Benefits
- Cost saving; having multiple machines on a single infrastructure saves the cost of overwise constructing those machines phsyically.
- agility/speed; simpler and quicker to set up a virtual environment than to set up a whole new one.
- downtime; if a vm goes down on one machine, it can be transfered over a physical network and spun up on a new machine.

## Layers
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

