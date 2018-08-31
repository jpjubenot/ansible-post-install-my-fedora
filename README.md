# Ansible post install my Fedora
Jacques-Philippe JUBENOT, France

<p>Ce projet <strong>"ansible-post-install-my-fedora"</strong> a pour but de finaliser l'installation de ma Fedora.</p>
<p>Pour chaque nouvelle version de Fedora, je préfère repartir d'une installation de zéro, plutôt que de faire une mise à jour.
Alors si il est facile de sauvegarder ses données puis de les restaurer. Concernant les applications, il y en a toujours une ou deux que l'on oublie de réintégrer, et on la réinstalle d'urgence au dernier moment.</p>

<p>J'ai découvert récemment Ansible au bureau et je trouve le concept génial.
Rationaliser l'installation et la gestion des systèmes peut tout à fait
s'appliquer à la maison.</p>
<p>Ce projet permet de réinstaller une bonne partie des applications présentent sur ma Fedora. GitHub est dès lors tout désigné pour partager ce mini projet.</p>

D'une manière générale, quand on a réinstallé son OS, on s'attèle à reconfigurer différents repositories, qui vont permettre de retrouver toutes nos applications préférées.

Mon projet s'articule comme suit.

Un Playbook (script) principal myFedora.yml, qui induit 7 rôles.
- <strong>bootstrap</strong>
- <strong>packagekit</strong>
- <strong>softwares</strong>
- <strong>atom-editor</strong>
- <strong>basiccodecs</strong>
- <strong>hb-and-mmkmkv-needed-softwares</strong>
- <strong>handbrake</strong>
- <strong>makemkv</strong>

<strong>bootstrap:</strong> Installe différents repositories : RPMFusion, RPMFusion NON-Free, Adobe, désactivation de IPv6 etc ...

<strong>packagekit:</strong> désactiver le service packagekit parce que je ne fais mes mises à jour système qu'en ligne de commande

<strong>softwares:</strong> Correspond à toute une liste de paquets que j'aime utiliser sur ma
machine.

<strong>atom-editor:</strong> Installation du logiciel Atom Editor.

<strong>basiccodecs:</strong> Correspond à des codecs pour mplayer permettant de visualiser des
vidéos de différents formats.

<strong>hb-and-mmkmkv-needed-softwares:</strong> Installe les logiciels et librairies nécessaires pour compiler HandBrake et MakeMKV.

<strong>handbrake:</strong> Compilation du logiciel HanBrake.

<strong>makemkv:</strong> Compilation du logiciel MakeMKV.

<strong>myFedora.yml:</strong> Le Playbook principal, il permet ici d'inclure le fichier de variables, indique dans quel ordre jouer les rôles et quel machine sera impactée ou sur quels groupes d'ordinateurs seront joués les rôles.

<strong>myvars.yml:</strong> consiste en quelques variables à modifier en cas de besoin version de la Fedora et version des archives de MakeMKV.
<p><strong> ATTENTION:</strong>  A bien modifier ce fichier avant l'exécution du script</p>


<strong>Pré-requis:</strong>
Depuis une Fedora 26 il vous faut le paquet ansible et libselinux-python.

<code>dnf install ansible libselinux-python</code>

Ce projet est à son commencement, donc il est fort possible que certains éléments ne soient pas corrects.

Je vous recommande de vous documenter sur Ansible pour comprendre un peu le principe de ce formidable outil.
Comme il s'agit d'installation, vous devez être Root sur votre poste pour lancer le script de départ en local.

Creer un dossier dans lequel vous pourrez reprendre le scénario Ansible que je mets à disposition.

<code>mkdir Depot-Git && cd Depot-Git</code>

<code>git clone https://github.com/jpjubenot/ansible-post-install-my-fedora</code>

<code>cd ansible-post-install-my-fedora</code>

Exemple pour tester : # ansible-playbook -i hosts myFedora.yml --check
Il se peut que le test envoi des erreurs car il ne fait que tester l'exécution
des commandes. Donc le test d'installer un logiciel va marcher mais s'il doit être utilisé dans
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
la bande passante dont vous disposez pour les différents téléchargements.
