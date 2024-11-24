Role Makemkv
=========

Téléchargement, extraction, compilation et installation de Makemkv depuis les sources du logiciel.

Download, extract, compile and install Makemkv from source package.

[FR]
<strong>Pour mettre à jour MakeMKV</strong> par exemple de la versions 1.17.5 to 1.17.8
1- Editer le fichier myvars.yml
MakeMKV_Ver: 1.17.5
en
MakeMKV_Ver: <strong>1.17.8</strong>

2- Renommer le binaire makemkv
<strong>sudo mv /usr/bin/makemkv /usr/bin/makemkv_old</strong>

3- Rejouer le script ansible comme ceci.
<strong>sudo ansible-playbook myFedora.yml -t onlymkmkv</strong>

[EN]
<strong>To Upgrade MakeMKV</strong> for example version 1.17.5 to 1.17.8
1- Edit myvars.yml file
MakeMKV_Ver: 1.17.5
to
MakeMKV_Ver: <strong>1.17.8</strong>

2- Rename the binary makemkv
<strong>sudo mv /usr/bin/makemkv /usr/bin/makemkv_old</strong>

3- Replay the ansible script like this.
<strong>sudo ansible-playbook myFedora.yml -t onlymkmkv</strong>