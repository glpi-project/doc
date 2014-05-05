Préparer la mise à jour
=======================

Avant la mise à jour proprement dite il faut préparer le système et les
fichiers.

Préparation du système
----------------------

Le processus de mise à jour nécessite temporairement des ressources
système importantes. Si la base de données GLPI est volumineuse, il est
pertinent d'augmenter les valeurs de memory\_limit et timeout dans le
fichier de configuration php.ini du serveur web.

Préparation des fichiers
------------------------

Sur le serveur, déplacer l'ensemble du répertoire GLPI vers un
répertoire temporaire, à l'exception du répertoire files (répertoire où
sont stockés les documents).

Si la mise à jour de GLPI est effectuée depuis une version inférieure à
0.68, certains répertoires ont changé de nom. Il faut donc copier leur
contenu :

~~~~ {.codeblock}
ancien_GLPI/docs/ -> nouveau_glpi/files
ancien_GLPI/backup/dump -> nouveau_GLPI/files/_dumps
~~~~

**Parent topic:** [Mettre à jour
GLPI](../glpi/admin_upgrade.html "Il est nécessaire de mettre à jour régulièrement GLPI pour bénéficier des correctifs de sécurité et des nouvelles fonctionnalités.")
