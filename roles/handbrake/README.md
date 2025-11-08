Role Handbrake
=========

Téléchargement, extraction, compilation et installation de Handbrake depuis les sources du logiciel.

Download, extract, compile and install Handbrake from source package.


<strong>### [FR]</strong>
<strong>Pour mettre à jour HandBrake</strong>

1- Renommer le binaire HandBrakeCLI

<strong>sudo mv /usr/bin/HandBrakeCLI /usr/bin/HandBrakeCLI_old</strong>

2- Rejouer le script ansible comme ceci.

<strong>sudo ansible-playbook myFedora.yml -t onlyhandbk</strong>


<strong>### [EN]</strong>
<strong>To Upgrade HandBrake</strong>

1- Rename the binary HandBrakeCLI

<strong>sudo mv /usr/bin/HandBrakeCLI /usr/bin/HandBrakeCLI_old</strong>

2- Replay the ansible script like this.

<strong>sudo ansible-playbook myFedora.yml -t onlyhandbk</strong>
