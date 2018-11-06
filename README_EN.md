# Ansible post install my Fedora
Jacques-Philippe JUBENOT, France

<p>This project <strong>"ansible-post-install-my-fedora"</strong> is to finish install my Fedora.
For each new version of Fedora, I prefer to reinstall from scratch rather to make
an update.</p>
Then if it is easy to save datas and restore then, for softwares there is always
one or more that you forget. You reinstall it or them in urgence at last minute.

I recently discover Ansible at office and I found that this project was amazing.
Imagine and organize installation of your system is possible at home to.

With this project it's possible to finalize the install of my settings and softwares.
GitHub is a fantastic way to share this mini project.

When you reinstall your system, you settings repository, install softwares and
many other things.</p>

My project works like this :
- <strong>bootstrap</strong>
- <strong>packagekit</strong>
- <strong>softwares</strong>
- <strong>atom-editor</strong>
- <strong>basiccodecs</strong>
- <strong>ssd-drive:</strong>
- <strong>hb-and-mmkmkv-needed-softwares</strong>
- <strong>handbrake</strong>
- <strong>makemkv</strong>

<strong>bootstrap:</strong> Install some repositories: RPMFusion, RPMFusion-NON-Free, disable IPv6 ...

<strong>packagekit:</strong> disable with mask option packagekit service because I do update exclusively by command line.

<strong>softwares:</strong> A list of my favorites softwares or librairies to install I need ...

<strong>atom-editor:</strong> Atom Editor software installation.

<strong>basiccodecs:</strong> Some basics codecs to mplayer player

<strong>ssd-drive:</strong> Modify options of your operating system when your first drive hard drive is a SSD (trim ...).

<strong>hb-and-mmkmkv-needed-softwares:</strong> Install softwares an librairies needed to
compile HandBrake software and MakeMKV software

<strong>handbrake:</strong> Compilation of HanBrake software

<strong>makemkv:</strong>  Compilation of MakeMKV software

<strong>myFedora.yml:</strong> It's the playbook which discribe the jobs to do and in which order.

<strong>myvars.yml:</strong> describe some variables wich define versions softwares.
<strong>!! Be carefull to modify this file before to execute the Playbook !!</strong>

<strong>Needed:</strong>
It is necessary to install ansible and libselinux-python packages.

<code>dnf install ansible libselinux-python</code>

This prject is at start, well it's possible some things not very good.

I recommand you to document about Ansible to understand the philosophy of this product.
Like you understand this project will install some softwares and modify system
files, well you to be root to execute it.

I suggest you to create a folder to download the complete script.

<code>mkdir Depot-Git && cd Depot-Git</code>

<code>git clone https://github.com/jpjubenot/ansible-post-install-my-fedora</code>

<code>cd ansible-post-install-my-fedora</code>

<strong>If you just want to test it:</strong> <code># ansible-playbook -i hosts myFedora.yml --check</code>

<p>It's logical if you have error at this point because some features need really
install to progression.</p>
<p>A test of install will work but if software is needed in a part of job You will
have an error because the package is not present. With some modifications you can execute this script on a remote computer like in
local, look at Ansible documentation and tutorials.</p>
<p>If you want to test in real maybe itès interristing to use a virtual machine to
execute it.</p>
<p>The execution time of this script depend of your computer's speed and Internet's
speed to download all differents packages.</p>