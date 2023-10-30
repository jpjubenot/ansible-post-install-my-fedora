# Ansible post install my Fedora
Jacques-Philippe JUBENOT, France

<p>This project <strong>"ansible-post-install-my-fedora"</strong> is to finish install my Fedora.
For each new version of Fedora, I sometimes prefer to reinstall from scratch rather than to make
an upgrade.</p>
<p>If it is easy to save datas and restore them, regarding softwares there is always
one or more that you forget. You reinstall it or them in emergency at last minute.</p>
<p>Since I discovered Ansible at my office, I found this project was amazing.
Imagine and organize installation of your system is possible at home too.</p>
<p>With this project it's possible to finalize the installation of my settings and softwares.
GitHub is a fantastic way to share this mini project.</p>
<p>When you reinstall your system, you set your repositories, install softwares and
many other things.</p>

My project works like this :
- <strong>bootstrap</strong>
- <strong>disable-ipv6</strong>
- <strong>softwares</strong>
- <strong>asbru-cm</strong>
- <strong>google-chrome</strong>
- <strong>lynis</strong>
- <strong>vscode</strong>
- <strong>hb-and-mkmkv-needed-softwares</strong>
- <strong>handbrake</strong>
- <strong>makemkv</strong>
- <strong>libdvdcss</strong>
- <strong>remove-softwares</strong>
- <strong>rescue-boot</strong>
- <strong>disable-webcam</strong>
- <strong>virtualbox</strong>

<strong>bootstrap:</strong> Configure DNF options, and install repositories: RPMFusion, RPMFusion-NON-Free.

<strong>disable-ipv6:</strong> Disable IPv6.

<strong>softwares:</strong> A list of my favorites softwares or librairies to install I need ...

<strong>asbru-cm:</strong> Asbru-CM software installation (note that KeePassXC will be installed too).

<strong>google-chrome:</strong> Install Google-Chrome.

<strong>lynis:</strong> Install Lynis audit security tool.

<strong>vscode</strong> Install Visual-Studio Code.

<strong>hb-and-mkmkv-needed-softwares:</strong> Install softwares and librairies needed to compile HandBrake and MakeMKV softwares.

<strong>handbrake:</strong> Compilation of HanBrake software.

<strong>makemkv:</strong> Compilation of MakeMKV software.

<strong>libdvdcss:</strong> Permit to read DVD on your computer.

<strong>remove-softwares</strong> Remove unnecessary softwares on my fresh installation.

<strong>rescue-boot:</strong> Recreate your Rescue Boot Menu after many upgrade of your system.

<strong>disable-webcam:</strong> Disable your webcam support by default when your webcam use uvcvideo driver.

<strong>virtualbox</strong> Install VirtualBox virtualization tool.


Important files:

<strong>myFedora.yml:</strong> This is the playbook which describe the jobs to execute and in which order.

<strong>myvars.yml:</strong> Define some variables like softwares versions.
<p><strong>!! Pay attention:</strong> Modify this file before to execute the Playbook !!</p>


<strong>Requirement:</strong>
It is necessary to install ansible packages.

<code>sudo dnf install ansible</code>

I recommand you to document yourself about Ansible to figure out the philosophy of this product.
Like you understand this project will install some softwares and modify your files system,
then you need privilegies to execute it.

<p>Be sure, your Fedora system is up-to-date before starting !!</p>

I suggest to create a folder to download the complete script.

<code>mkdir Depot-Git && cd Depot-Git</code>

<code>git clone https://github.com/jpjubenot/ansible-post-install-my-fedora</code>

<code>cd ansible-post-install-my-fedora</code>

<strong>If you just want to simulate it without modify your system:</strong> <code>sudo ansible-playbook myFedora.yml --check</code>

<strong>If you just want to apply:</strong> <code>sudo ansible-playbook myFedora.yml</code>

<strong>Good to know.</strong>
<p>To list all tasks:</p>
<p><code>sudo ansible-playbook myFedora.yml --list-tasks</code></p>

<p>To list all tags:</p>
<p><code>sudo ansible-playbook myFedora.yml --list-tags</code></p>

<p>To filter tasks:</p>
<p><code>sudo ansible-playbook myFedora.yml --list-tasks --tags virtualbox</code></p>
<p><code>sudo ansible-playbook myFedora.yml --list-tasks --tags ipv6,fastdnf</code></p>

<p>To execute tasks using tags:</p>
<p><code>sudo ansible-playbook myFedora.yml --tags ipv6,fastdnf</code></p>

<p>During the test, you could face errors at this point because some features really need
to be installed for the suite.</p>
<p>A test of install will work but if this software is needed in a part of the job, you will
face an error because the package is not really present.</p>
<p>With some modifications you can execute this script on a remote computer like in local, look at Ansible documentation
and tutorials.</p>
<p>If you want to test for real, it might be worth using it on a virtual machine first, before running it on your home computer.</p>
<p>The execution time of this script depends of your computer speed and your Internet bandwidth to download all differents packages.</p>