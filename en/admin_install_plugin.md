Installer et mettre à jour les plugins
======================================

Ajout et maintenance des extensions (plugins) à GLPI

CAUTION:

Avant d'installer un plugin, voir [Sauvegarder
GLPI](admin_backup.html "Réaliser une sauvegarde complète de GLPI.").

Télécharger un plugin
---------------------

Les plugins GLPI sont disponibles sur le catalogue GLPI et également
depuis la forge des plugins, respectivement accessibles sur les liens
suivants :

-   [Catalogue des plugins.](http://plugins.glpi-project.org/)
-   [Forge des
    plugins.](https://forge.indepnet.net/projects/show/plugins)

À noter qu'un plugin peut disposer de plusieurs versions, chaque version
est la plupart du temps spécifique à une version précise de GLPI.
Veiller donc à sélectionner le bon fichier à télécharger !

Installer un plugin
-------------------

Une fois un plugin téléchargé, l'installation de ce dernier se fait
selon deux étapes principales : le traitement des fichiers du plugin, et
son installation depuis l'interface.

Important: Il faut disposer des droits en écriture sur la configuration
et les profils (Champs **Configuration** et **Profils** depuis l'onglet
**Administration/Configuration** dans la configuration d'un profil).

-   **Traitement des fichiers.**

    Les plugins sont compressés au format GZIP. La première étape
    consiste donc à dézipper l'archive. Il faut ensuite transférer les
    fichiers dans le dossier *plugins* situés à la racine de GLPI
    (*Exemple : /var/www/mon\_glpi/plugins/*).

    Important: Il faut respecter le nom du dossier créé dans le
    répertoire *plugins* ! Il doit porter exactement le même nom que
    celui indiqué dans l'archive.

-   **Installation du plugin depuis l'interface.**
    Une fois l'archive traitée, le plugin apparaîtra sur la page de
    configuration des plugins. On pourra notamment y consulter le numéro
    de version ainsi que les auteurs du plugin. Il faut donc maintenant
    l'**Installer** et l'**Activer**.
    -   L'installation aura pour effet de créer les possibles tables
        dans la base de données.
    -   L'activation rendra le plugin accessible aux utilisateurs.

    Important: Si toutefois un plugin n'apparaissait pas après l'avoir
    transféré dans le bon dossier, il faut vérifier la version GLPI pour
    lequel il est supposé fonctionner.

Mise à jour d'un plugin
-----------------------

La mise à jour d'un plugin se réalise par la suppression physique
(*Attention : ne pas confondre avec la **Désinstallation d'un plugin***)
de la version précédente et l'installation de la nouvelle version. Il
faut donc uniquement supprimer simplement le dossier correspondant au
plugin et se référer au paragraphe d'installation du plugin pour la
suite de la procédure.

Important: Lors de la mise à jour de GLPI, et non d'un plugin, tous les
plugins passent à l'état "désactivé", il faut donc les réactiver!

Désinstaller un plugin
----------------------

La désinstallation d'un plugin se réalise depuis l'interface de
configuration des plugins. Cliquer simplement sur **Désinstaller**.

Important: La désinstallation d'un plugin ne supprimera pas le dossier
lui étant propre ! Toutefois, si le plugin est désinstallé, on peut
librement le supprimer sans qu'aucun dommage ne survienne.

**Parent topic:** [Réaliser les opérations de
maintenance](../glpi/admin.html "Opérations de maintenance de GLPI")
