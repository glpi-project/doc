Sauvegarder ou restaurer la base de données
===========================================

Les opérations de maintenance de la base de données de GLPI se font
depuis le menu Administration \> Maintenance

Il est possible de réaliser une sauvegarde SQL ou XML directement dans
GLPI, et de restaurer cette sauvegarde par la suite.

Conseil : Il est préférable d'utiliser le format SQL.

La liste des sauvegardes apparaît à partir du moment ou au moins une
sauvegarde a été réalisée. Il est ensuite possible de supprimer une
sauvegarde précédemment réalisée, de restaurer la base de données à
partir de la sauvegarde ou de télécharger la sauvegarde pour
l'externaliser.

Avertissement : la restauration écrase toutes les modifications faites
entre la date de sauvegarde et la date de restauration.

Il est toutefois préférable d'utiliser un outil externe, tel que
mysqldump, pour faire des sauvegardes externes planifiées, et de stocker
ces sauvegardes sur un support externe.

**Sujet parent :** [Sauvegarder
GLPI](../glpi/admin_backup.html "Réaliser une sauvegarde complète de GLPI.")
