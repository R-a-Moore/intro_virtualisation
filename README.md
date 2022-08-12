# Development Environments

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

- can use `&&` to execute multiple commands on a single line

- `sudo apt-get install nginx -y` installs automated NGINX. high performance web server and proxy server (multi use)

- how to check if it's installed/working `sudo systemctl status "application i.e., nginx"`

- how to restart a process - in this case it's an NGINX (i.e., if a process is not active as seen in the systemctl status command) `sudo systemctl restart nginx`
- enable the process `sudo systemctl enable nginx`