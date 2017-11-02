# Ansible post install my Fedora
Jacques-Philippe JUBENOT, France

Ce projet "ansible-post-install-my-fedora" a pour but de finaliser l'installation
de ma Fedora.
Pour chaque nouvelle version de Fedora, je préfère repartir d'une installation de
zéro, plutôt que d'une mise à jour.
Alors si il est facile de sauvegarder ses données puis de les restaurer, concernant
les applications il y en a toujours une ou deux que l'on oublie de réintégrer,
et on la réinstalle d'urgence au dernier moment.

J'ai découvert récemment Ansible au bureau et je trouve le concept génial.
Rationaliser l'installation et la gestion des systèmes peut tout à fait
s'appliquer à la maison.
Ce projet permet de réinstaller une bonne partie des applications présentent
sur ma Fedora.
GitHub est dès lors tout désigné pour partager ce mini projet.

D'une manière générale, quand on a réinstallé son OS, on s'attèle à reconfigurer
différents repositories, qui vont permettre deretrouver toutes les applications
qu'on aime utiliser.

Mon projet s'articule comme suit.

Un Playbook (script) principal myFedora.yml, qui induit 7 rôles.
- bootstrap
- softwares
- basiccodecs
- hb-and-mmkmkv-needed-softwares
- handbrake
- makemkv

bootstrap: Installe différents repositories : RPMFusion, RPMFusion NON-Free, Adobe,
désactivation de IPv6 etc ...

softwares: Correspond à toute une liste de paquets que j'aime utiliser sur ma
machine.

basiccodecs: Correspond à des codecs pour mplayer permettant de visualiser des
vidéos de différents formats.

hb-and-mmkmkv-needed-softwares : Installe les logiciels et librairies nécessaires
pour compiler HandBrake et MakeMKV.

handbrake: Compilation du logiciel HanBrake.

makemkv: Compilation du logiciel MakeMKV.

myFedora.yml: Le Playbook principal, il permet ici d'inclure le fichier de variables,
indique dans quel ordre jouer les roles et quel machine sera impactée ou sur
quels groupes d'ordinateurs seront joués les rôles.

myvars.yml: consiste en quelques variables à modifier en cas de besoin version de
la Fedora et version des archives de MakeMKV
ATTENTION : A bien modifier ce fichier avant l'exécution du script


Pré-requis:
Depuis une Fedora 26 il vous faut le paquet ansbile et libselinux-python.

Ce projet est à son commencement, donc il est fort possible que certains éléments
ne soient pas corrects.

Je vous recommande de vous documenter sur Ansible pour comprendre un peu le
principe de ce formidable outil.
Comme il s'agit d'installation, vous devez être Root sur votre poste pour lancer
le script de départ en local.

Creer un dossier dans lequel vous pourrez reprendre le scénario Ansible que je
mets à disposition.

mkdir Depot-Git && cd Depot-Git

git clone https://github.com/jpjubenot/ansible-post-install-my-fedora

cd ansible-post-install-my-fedora

Exemple pour tester : # ansible-playbook -i hosts myFedora.yml --check
Il se peut que le test envoi des erreurs car il ne fait que tester l'exécution
des commandes.
Donc le test d'installer un logiciel va marcher mais s'il doit être utilisé dans
un rôle plus tard on aura une erreur puisqu'il n'est pas présent sur la machine.

Exemple pour effectuer les installations : # ansible-playbook  -i hosts myFedora.yml

Ce script peut tout à fait être utiliser sur des machines distantes utilisant
Fedora en vous référant à la documentation de Ansible ou sur les différents tuto
présents sur le web.

Par ce biais vous êtes assuré que toutes la machines de votre réseau sont
finalisées de la même manière.

Je vous conseil dans la mesure du possible de tester sur une machine virtuelle
cela vous donnera un aperçu de ce qui se passe.
Le temps d'exécution du script dépend de la vitesse de la machine ainsi que de
la bande passante dont vous diposez pour les différents téléchargements.
