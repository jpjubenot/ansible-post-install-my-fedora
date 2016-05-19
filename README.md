# Ansible post install my Fedora
Jacques-Philippe JUBENOT, France

Je débute à l'utilisation de Git et Ansible.

Ce projet "ansible-post-install-my-fedora" à pour but de finaliser l'installation de ma Fedora.
Pour chaque nouvel version de Fedora, je préfère repartir d'une installation de zéro, plutôt que d'une mise à jour.
Alors si il est facile de sauvegarder ses données puis de les restaurer.
Concernant les applications il y en a toujours une ou deux que l'on oublie de réintégrer, et on la réinstalle d'urgence au dernier moment.

J'ai découvert récemment Ansible au travail et je trouve le concept génial.
Rationaliser l'installation et la gestion des systèmes peut tout à fait s'appliquer à la maison.
Ce projet permet de réinstaller une bonne partie des applications présentent sur ma Fedora.
GitHub est dès lors toute désignée pour partager ce mini projet.

D'une manière générale quand on a réinstaller son OS, on s'attèle à reconfigurer différents repository, qui vont permettre de retrouver toutes les applications qu'on aime utiliser.

Mon projet s'articule comme suit.

Un script principal myFedora.yml, qui induit 4 roles.
- default
- softwares
- basiccodecs
- bumblebee

default			: Installe différents repository : RPMFusion, RPMFusion NON-Free, Adobe.

softwares		: Correspond à toute une liste de paquets que j'aime utiliser sur ma machine.

basiccodecs		: Correspond à des codecs pour mplayer permettant de visualiser des vidéos de différents formats

bumblebee		: Installe les repository et les paquets qui me permettent d'utiliser mon portable équipé de la technologie Optimus de Nvidia (intel/Nvidia graphic cards)

Pré-requis:
Vous devez avoir une Fedora 23 installée (c'est celle que j'utilise, et je n'ai pas testé sur d'autres versions).
Il faut installer Ansible (Vers 1.9.4)
Et comme Fedora 23 utilise désormais dnf à la place de yum, il faut également les paquets python2-dnf, python3-dnf et libselinux-python.

Ce projet est à son commencement, donc il est fort possible que certains éléments ne soient pas corrects.

Je vous recommande de vous documenter sur Ansible pour comprendre un peu le principe de ce formidable outil.
Comme il s'agit d'installation, vous devez être Root sur votre poste pour lancer le script de départ.

Exemple pour tester : # ansible-playbook myFedora.yml --check

Exemple pour effectuer les installations : # ansible-playbook myFedora.yml
