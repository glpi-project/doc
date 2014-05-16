Installer l'application GLPI
============================

La procédure est la suivante :

1.  **Télécharger l'archive** ;
Récupérer l'archive d'installation de GLPI sur le site web du projet GLPI : [http://www.glpi-project.org](http://www.glpi-project.org) dans la rubrique **Télécharger**.
***Conseil :*** Télécharger la dernière version stable pour une utilisation en production.
***Remarque :*** *Numérotation des versions* : 
    l'archive est nommée *GLPI Version X.YY.ZZ* où *X.YY* est le numéro de version majeure et *ZZ* indique le numéro de version corrective. Exemple : GLPI 0.84.5 correspond à la 4ème version corrective de la version majeure 0.84.

2.  **Installer les fichiers de l'application sur le serveur destiné à accueillir GLPI** ;
Décompacter l'archive téléchargée. Le répertoire obtenu s'appelle glpi.
Copier ce répertoire dans l'arborescence du serveur web pour le rendre accessible.
Donner les droits en écriture au service web sur les dossiers /files et /config ainsi que les sous-dossiers qu'ils contiennent.

3.  **[Lancer l'assistant d'installation en ligne](index.php?fr/04_installer_l'application/04_assistant_d'installation.md)**.

Une fois ces étapes effectuées l'application est prête à être utilisée.

Remarque : Il existe également de nombreux paquets pour les distributions (Debian, Ubuntu, Fedora...).

---------------
**Sujet parent :** [Déployer GLPI](index.php?fr/03_premiers_pas_avec_GLPI/02_deployer_GLPI.md)
