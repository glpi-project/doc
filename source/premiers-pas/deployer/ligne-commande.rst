Outils en ligne de commande
===========================

Installation
------------

Un script d'installation en ligne de commande est fourni dans l'archive de GLPI (``scripts/cliinstall.php``).

Au minimum, vous devrez préciser le nom de la base de données et l'utilisateur :

.. code-block:: bash

   # php script/cliinstall.php --db=dbglpi --user=userglpi

Il est possible de spécifier un certain nombre de choses lors de l'appel du script :

 * ``--host`` le nom de l'hôte (`localhost` par défaut),
 * ``--db`` le nom de la base de données,
 * ``--user`` le nom d'utilisateur de la base de données,
 * ``--pass`` le mot de passe de l'utilisateur,
 * ``--lang`` le code de langue à utiliser (`fr_FR` par exemple). Sera positionné sur `en_GB` par défaut),
 * ``--tests`` initialise certaines données pour les tests,
 * ``--force`` ne vérifie pas l'existence des tables et écrase ce qui pourrait exister,
 * ``--help`` affiche l'aide de la commande.

Mise à jour
-----------

Un script de mise à jour en ligne de commande est également fourni dans l'archive de GLPI (``scripts/cliupdate.php``).

Par défaut, aucun argument n'est requis. Lancez juste le script pour qu'il mette à jour votre base automatiquement.

.. warning::

   N'oubliez pas d'effectuer une sauvegarde de votre base avant toute tentative de mise à jour.

Les options possibles de cette commande sont :

 * ``--lang`` le code de langue à utiliser (`fr_FR` par exemple). Sera positionné sur `en_GB` par défaut),
 * ``--help`` affiche l'aide de la commande.
 * ``--config-dir`` permet de spécifier le chemin du fichier de configuration à utiliser. 
 * ``--force`` force l'exécution de la mise à jour, utile lorsque la version ne change pas (cas d'une branche de travail),
 * ``--dev`` obligatoire si vous souhaitez utiliser une version de développement. À utiliser avec parcimonie...
