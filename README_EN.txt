# Ansible post install my Fedora
Jacques-Philippe JUBENOT, France

This project "ansible-post-install-my-fedora" is to finish install my Fedora.
For each new version of Fedora, I prefer to reinstall from scratch rather to make
an update.
Then if it is easy to save datas and restore then, for softwares there is always
one or more that you forget.
You reinstall it or them in urgence at last minute.

I recently discover Ansible at office and I found that this project was amazing.
Imagine and organize installation of your system is possible at home to.

With this project it's possible to finalize the install of my settings and softwares.
GitHub is a fantastic way to share this mini project.

When you reinstall your system, you settings repository, install softwares and
many other things.

My project works like this :
- bootstrap
- softwares
- atom-editor
- basiccodecs
- hb-and-mmkmkv-needed-softwares
- handbrake
- makemkv

bootstrap   : Install some repositories: RPMFusion, RPMFusion-NON-Free, disable IPv6 ...

softwares   : A list of my favorites softwares or librairies to install I need ...

atom-editor: Atom Editor software installation.

basiccodecs  : Some basics codecs to mplayer player

hb-and-mmkmkv-needed-softwares  : Install softwares an librairies needed to
compile HandBrake software and MakeMKV software

handbrake  : Compilation of HanBrake software

makemkv  :  Compilation of MakeMKV software

myFedora.yml : It's the playbook which discribe the jobs to do and in which order.

myvars.yml : describe some variables wich define versions softwares.
!! Be carefull to modify this file before to execute the Playbook !!

Needed:
Since Fedora  you need to install ansible and libselinux-python packages.

This prject is at start, well it's possible some things not very good.

I recommand you to document about Ansible to understand the philosophy of this product.
Like you understand this project will install some softwares and modify system
files, well you to be root to execute it.

I suggest you to create a folder to download the complete script.

mkdir Depot-Git && cd Depot-Git

git clone https://github.com/jpjubenot/ansible-post-install-my-fedora

cd ansible-post-install-my-fedora

If you just want to test it : # ansible-playbook -i hosts myFedora.yml --check

It's logical if you have error at this point because some features need really
install to progression.
A test of install will work but if software is needed in a part of job You will
have an error because the package is not present.
With some modification you can execute this script on a remote computer like in
local, look at Ansible documentation and tutorials.
If you want to test in real maybe itès interristing to use a virtual machine to
execute it.
The execution time of this script depend of your computer's speed and Internet's
speed to download all differents packages.
