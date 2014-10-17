Ce menu vous permet de :

Vérifier la présence de nouvelles mises à jour de GLPI
------------------------------------------------------

Si vous possédez le droit "Vérifier la présence de mises à jour" dans votre profil, un bouton ![image](docs/image/checkVersion.png) apparaît.
Il permet de contrôler si vous avez la dernière version stable de GLPI


Sauvegarder ou restaurer la base de données
-------------------------------------------

Il est possible de réaliser une sauvegarde SQL ou XML directement dans GLPI et de restaurer cette sauvegarde par la suite.

***Conseil :*** Il est préférable d'utiliser le format SQL.

La liste des sauvegardes apparaît à partir du moment ou au moins une sauvegarde a été réalisée. Il est ensuite possible de supprimer une sauvegarde précédemment réalisée, de restaurer la base de données à partir de la sauvegarde ou de télécharger la sauvegarde pour l'externaliser.

>Avertissement : la restauration écrase toutes les modifications faites entre la date de sauvegarde et la date de restauration.

Figure 1. Maintenance de GLPI
![image](docs/image/maintenance.png)

***Remarque :** les différents boutons apparaissent suivant les droits définis dans votre profil*.


Il est toutefois préférable d'utiliser un outil externe, tel que mysqldump, pour faire des sauvegardes externes planifiées et de stocker ces sauvegardes sur un support externe.

Pour réaliser une sauvegarde complète de GLPI, il est indispensable de sauvegarder l'intégralité des fichiers de GLPI.

Les fichiers de GLPI se situent dans le répertoire d'installation sur le serveur web. Ils contiennent les fichiers de sauvegarde de la base de données créés depuis le menu Administration > Maintenance , ainsi que tous les documents ajoutés dans GLPI (associés aux tickets, aux matériels, aux contrats...).

***Conseil :*** Si GLPI est installé dans un répertoire glpi, c'est ce répertoire qu'il convient de sauvegarder complètement.

------------
**Sujet parent :** [Module Administration](index.php?fr/07_Module_Administration/01_Module_Administration.md "Le module Administration permet d'administrer les utilisateurs, groupes, entités, profils, règles et dictionnaires et offre des outils de maintenance de l'application").

**Sujet parent :** [Sauvegarder
GLPI](../glpi/admin_backup.html "Réaliser une sauvegarde complète de GLPI.")
