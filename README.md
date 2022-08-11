# Development Environments

## Vagrant and VirtualBox

Steps for initialising and running vagrant:

0. vagrant init (hashicorp/bionic64 or ubuntu/xenial64) -> initializes machine, don't need to do if you nano a vagrantfile already, can skip straight to vagrant up

1. vagrant up -> turn on virtual machine

2. vagrant status -> provides info on virtual machine

vagrant destroy

vagrant ssh - creates an ssh connection to the virtual machine of the directory that you are currently in (`cd` to navigate `pwd` to see file path)

using vagrant you do not enter the virtual machine properly/fully. You access it via terminal and no way else.

## Virtualisation

- `clear` clears terminal backlog

- `uname` - get os type
- `uname -a` provides detailed telling of os

How to create a file in linus:
- `touch "file name"`
- `nano "file name"`

How to check existing file directories:
- `ls`
-`ls -a` shows hidden directories

How to make a folder:
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
- `cut "file name"`
- `mv "file name" "file destination path"`

Access process/task manager in linux terminal:

-`ps aux` detailed view

-`sudo` (super user) is used to run command with ultimate permissions.
-`sudo -su` enters super user. To exit it `exit`

- `chmod +x "file name"` changes file permissions `r` read `w` write `rw` read/write `all`

- `ll` presents files

- update our ubuntu os `apt-get install update`
- run same command as super user `sudo apt-get install update`
- upgrade our ubuntu os `apt-get install upgrade` adding `-y` bypasses continue queries, making the code being ran automated.