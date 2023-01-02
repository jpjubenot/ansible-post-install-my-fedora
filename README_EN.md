# Ansible post install my Fedora
Jacques-Philippe JUBENOT, France

<p>This project <strong>"ansible-post-install-my-fedora"</strong> is to finish install my Fedora.
For each new version of Fedora, I sometimes prefer to reinstall from scratch rather than to make
an update.</p>
<p>Then if it is easy to save datas and restore then, regarding softwares there is always
one or more that you forget. You reinstall it or them in emergency at last minute.</p>
<p>Since I discovered Ansible at my office, I found this project was amazing.
Imagine and organize installation of your system is possible at home too.</p>
<p>With this project it's possible to finalize the installation of my settings and softwares.
GitHub is a fantastic way to share this mini project.</p>
<p>When you reinstall your system, you set your repositories, install softwares and
many other things.</p>

My project works like this :
- <strong>bootstrap</strong>
- <strong>softwares</strong>
- <strong>atom-editor</strong>
- <strong>asbru-cm</strong>
- <strong>basiccodecs</strong>
- <strong>hb-and-mmkmkv-needed-softwares</strong>
- <strong>handbrake</strong>
- <strong>makemkv</strong>
- <strong>mitigate-my-fed</strong>
- <strong>rescue-boot</strong>

<strong>bootstrap:</strong> Install some repositories: RPMFusion, RPMFusion-NON-Free, disable IPv6 ...

<strong>softwares:</strong> A list of my favorites softwares or librairies to install I need ...

<strong>atom-editor:</strong> Atom Editor software installation.

<strong>asbru-cm:</strong> Asbru-CM software installation (note that KeePassXC will be installed too).

<strong>basiccodecs:</strong> Some basics codecs to mplayer player

<strong>hb-and-mmkmkv-needed-softwares:</strong> Install softwares an librairies needed to
compile HandBrake software and MakeMKV software

<strong>handbrake:</strong> Compilation of HanBrake software

<strong>makemkv:</strong>  Compilation of MakeMKV software

<strong>mitigate-my-fed:</strong> To reduce memory usage on boot, this role will remove:
- libvrt -> Virtualization Librairies
- abrt -> tools to inform Fedora Teams about errors on your system
- Gnome-Boxes -> Virtualization tool

<strong>rescue-boot:</strong> To recreate your Rescue Boot Menu.

<strong>myFedora.yml:</strong> This is the playbook which discribe the jobs to execute and in which order.

<strong>myvars.yml:</strong> describe some variables wich define softwares versions.
<strong>!! Be careful to modify this file before to execute the Playbook !!</strong>

<strong>Needed:</strong>
It is necessary to install ansible package.

<code>sudo dnf install ansible</code>

I recommand you to document yourself about Ansible to figure out the philosophy of this product.
Like you understand this project will install some softwares and modify your files system,
well you need to be root to execute it.

I suggest to create a folder to download the complete script.

<code>mkdir Depot-Git && cd Depot-Git</code>

<code>git clone https://github.com/jpjubenot/ansible-post-install-my-fedora</code>

<code>cd ansible-post-install-my-fedora</code>

<strong>If you just want to test it:</strong> <code>sudo ansible-playbook myFedora.yml --check</code>

<strong>If you just want to apply:</strong> <code>sudo ansible-playbook myFedora.yml</code>

<p>During the test, you could get errors at this point because some features really need
to be installed for progression.</p>
<p>A test of install will work but if this software is needed in a part of the job, you will
face an error because the package is not present. With some modifications you can
execute this script on a remote computer like in local, look at Ansible documentation
and tutorials.</p>
<p>If you want to test in real maybe it could be interristing to use a virtual machine to
execute it.</p>
<p>The execution time of this script depend of your computer's speed and Internet's
speed to download all differents packages.</p>
