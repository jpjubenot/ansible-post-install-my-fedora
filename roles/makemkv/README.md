Role Makemkv
=========

Téléchargement, extraction, compilation et installation de Makemkv depuis les sources du logiciel.

Download, extract, compile and install Makemkv from source package.

<strong>### [FR]</strong>
<strong>Pour mettre à jour ou recompiler MakeMKV</strong> par exemple de la version 1.17.5 to 1.17.8



1- Editer le fichier myvars.yml
MakeMKV_Ver: 1.17.5
en
MakeMKV_Ver: <strong>1.17.8</strong>

2- Rejouer le script ansible comme ceci.
<strong>sudo ansible-playbook myFedora.yml -e forcecompile -t onlymkmkv</strong>


<strong>### [EN]</strong>
<strong>To upgrade or recompile MakeMKV</strong> for example version 1.17.5 to 1.17.8

1- Edit myvars.yml file
MakeMKV_Ver: 1.17.5
to
MakeMKV_Ver: <strong>1.17.8</strong>

2- Replay the ansible script like this.
<strong>sudo ansible-playbook myFedora.yml -e forcecompile -t onlymkmkv</strong>