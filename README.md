# Ansible post install my Fedora
Jacques-Philippe JUBENOT, France

English README version see [here](https://jpjubenot.github.io/ansible-post-install-my-fedora/README_EN)

<p>Ce projet <strong>"ansible-post-install-my-fedora"</strong> a pour but de finaliser l'installation de ma Fedora.</p>
<p>Pour chaque nouvelle version de Fedora, je préfère souvent repartir d'une installation de zéro, plutôt que de faire une mise à jour.
Alors si il est facile de sauvegarder ses données puis de les restaurer. Concernant les applications, il y en a toujours une ou deux que l'on oublie de réintégrer, et on la réinstalle d'urgence au dernier moment.</p>

<p>Depuis que j'ai découvert Ansible au bureau, je trouve le concept génial.
Rationaliser l'installation et la gestion des systèmes peut tout à fait s'appliquer à la maison.</p>
<p>Ce projet permet de réinstaller une bonne partie des applications présentes sur ma Fedora. GitHub est dès lors tout désigné pour partager ce mini projet.</p>

<p>D'une manière générale, quand on a réinstallé son OS, on s'attèle à reconfigurer différents repositories, qui vont permettre de retrouver toutes nos applications préférées, ensuite on modifie certains réglages par ici ou là.</p>

Mon projet s'articule autour de ces rôles.
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

<strong>bootstrap:</strong> Configure des options DNF, Installer les dépots : RPMFusion, RPMFusion NON-Free.

<strong>disable-ipv6</strong> Pour désactiver IPv6 sur la machine.

<strong>softwares:</strong> Correspond à toute une liste de paquets que j'aime utiliser sur ma machine.

<strong>asbru-cm:</strong> Installation du logiciel Asbru-CM (notez que KeePassXC sera aussi installé).

<strong>google-chrome:</strong> Installer Google-Chrome.

<strong>lynis:</strong> Installer l'outil d'audit de sécurité Lynis.

<strong>vscode:</strong> Installer l'éditeur de code Visual-Studio Code de Microsoft.

<strong>hb-and-mkmkv-needed-softwares:</strong> Installer les logiciels et librairies nécessaires pour compiler HandBrake et MakeMKV.

<strong>handbrake:</strong> Compilation du logiciel HanBrake.

<strong>makemkv:</strong> Compilation du logiciel MakeMKV.

<strong>libdvdcss:</strong> Permettre de lire des DVD sur votre ordinateur.

<strong>remove-softwares</strong> Supprimer des logiciels inutiles à mon usage.

<strong>rescue-boot:</strong> Recréer le menu de Rescue-boot de votre Fedora.

<strong>disable-webcam</strong> Désactiver le support de la webcam par défaut quand elle utilise le driver uvcvideo.

<strong>virtualbox:</strong> Installer l'outil de virtualisation VirtualBox.


Fichiers Importants:
<strong>myFedora.yml:</strong> Le Playbook principal, il permet ici d'inclure le fichier de variables, indique dans quel ordre jouer les rôles et quel machine sera impactée ou sur quels groupes d'ordinateurs seront joués les rôles.

<strong>myvars.yml:</strong> consiste en quelques variables à modifier en cas de besoin version de la Fedora et version des archives de MakeMKV.
<p><strong> ATTENTION:</strong>  A bien modifier ce fichier avant l'exécution du script</p>


<strong>Pré-requis:</strong>
Il vous faut installer les paquets ansible.

<code>sudo dnf install ansible</code>

<p>Je vous recommande de vous documenter sur Ansible pour comprendre un peu le principe de ce formidable outil. Comme il s'agit d'installation de logiciels, vous avez besoin de privilèges pour exécuter ce script localement.</p>

<p>Assurez-vous que votre système Fedora est à jour avant de commencer !!</p>

<p>Creer un dossier dans lequel vous pourrez reprendre le scénario Ansible que je mets à disposition.</p>

<code>mkdir Git-Repo && cd Git-Repo</code>

<code>git clone https://github.com/jpjubenot/ansible-post-install-my-fedora</code>

<code>cd ansible-post-install-my-fedora</code>

<p><strong>Exemple pour tester:</strong> <code>sudo ansible-playbook myFedora.yml --check</code>
Il se peut que le test renvoi des erreurs car il ne fait que tester l'exécution
des commandes. Donc le test d'installer un logiciel va marcher mais s'il doit être utilisé dans un rôle plus tard on aura une erreur puisqu'il n'est pas présent sur la machine.</p>

<strong>Exemple</strong> pour effectuer les installations: <code>sudo ansible-playbook myFedora.yml</code>

<strong>Bon à Savoir.</strong>
<p>Pour lister les tasks:</p>
<p><code>sudo ansible-playbook myFedora.yml --list-tasks</code></p>

<p>Pour lister les tags:
<p><code>sudo ansible-playbook myFedora.yml --list-tags</code></p>

<p>Pour filtrer tasks:
<p><code>sudo ansible-playbook myFedora.yml --list-tasks --tags virtualbox</code></p>
<p><code>sudo ansible-playbook myFedora.yml --list-tasks --tags ipv6,fastdnf</code></p>

<p>Pour executer les tasks grâce aux tags:</p>
<p><code>sudo ansible-playbook myFedora.yml --tags ipv6,fastdnf</code></p>

<p>Ce script peut tout à fait être utiliser sur des machines distantes utilisant
Fedora en vous référant à la documentation de Ansible ou sur les différents tuto
présents sur le web.</p>

<p>Par ce biais vous êtes assuré que toutes la machines de votre réseau sont finalisées de la même manière.</p>

<p>Je vous conseil dans la mesure du possible de tester sur une machine virtuelle
cela vous donnera un aperçu de ce qui se passe.</p>
<p>Le temps d'exécution du script dépend de la vitesse de la machine ainsi que de la bande passante dont vous disposez pour les différents téléchargements.</p>