Installer GLPI
==============

La procédure est la suivante :

#. Choisir une version,
#. Télécharger l'archive,
#. Installer :)

Choisir une version
-------------------

.. note::

   Il est fortement conseillé de choisir la dernière version stable pour une utilisation en production.

GLPI suit une règle de versionnage sémantique, sur 3 chifffres. Le premier correspond à la version majeure, le second à la version mineure, le troisième à la version corrective.

Les version majeures peuvent amener des incompatibilités fort importantes ainsi que de nouvelles fonctionnalités ; les versions mineures quant à elles apportent également de nouvelles fonctionnalités mais restent paquetsrfaitement compatibles avec les versions mineures antérieures et ultérieures.

Les versions correctives, quand à elles, se contentent de corriger les problèmes reportés sans ajout de fonctionnalités.

Télécharger
-----------

.. warning::

   Sur github, il existe systématiquement deux archives nommées *Source code* ; ces versions ne sont pas destinées à être téléchargées par les utilisateurs.

Rendez-vous dans la rubrique *Télécharger* du `site web de GLPI <http://glpi-project.org>`_ ; ou récupérez l'archive directement depuis les `releases Github <https://github.com/glpi-project/glpi/releases>`_.

Installation
------------

.. note::

   Il existe également de nombreux paquets pour les distributions (Debian, Ubuntu, Fedora...) que vous pouvrez installer avec votre gestionnaire de paquets habituel.

L'installation à proprement parler de l'application consiste en trois étapes :

#. Décompresser l'archive dans l'arborescence de votre serveur web ;
#. Donner les droits en écriture ià votre serveur web sur les dossiers ``files`` et ``config`` ;
#. :doc:`Lancer l'assistant d'installation en ligne <assistant-installation>`.

Une fois ces étapes effectuées l'application est prête à être utilisée.

Emplacement des fichiers et dossiers
------------------------------------

Comme beaucoup d'applications web, GLPI peut être installé en copiant simplement le contenu complet du répertoire sur un serveur web quelconque. Néanmoins, une telle pratique peut s'avérer relativement peu sécurisée.

.. warning::

   Tout fichier accessible directement depuis un serveur web doit être considéré comme non sécurisé !

En effet, GLPI stocke un certain nombre de données dans son répertoire ``files``, la configuration de votre base de données est stockée dans le dossier ``config``, ... Bien que des dispositions soient mises en place pour éviter que des données sensibles puisse être rendues accessibles directement depuis un serveur web, la meilleure façon de les protéger reste de ne pas les rendre accessibles du tout.

GLPI propose un certain nombre de variables de configuration qu'il est possible d'utiliser pour ce faire (utilisées d'ailleurs dans les paquets fournis par les distributions linux) :

* ``GLPI_CONFIG_DIR`` : détermine le chemin vers le dossier de configuration ;
* ``GLPI_VAR_DIR`` : détermine le chemin vers les "fichiers" ;
* ``GLPI_LOG_DIR`` : détermine le chemin vers les fichiers de log.

.. note::

   Il existe bien d'autres variables de configuration, celles évoquées ci-dessus sont les principales à prendre en considération pour une installation davantage sécurisée.

Le choix des différents dossiers est laissé à votre entière appréciation ; l'exemple qui suit se base quand à lui sur les recommandations `FHS <http://www.pathname.com/fhs/>`_.

Notre instance de GLPI sera installée dans le dossier ``/var/www/glpi``, un hôte virtuel dans la configuration du serveur web reflètera ce chemin.

La configuration de GLPI sera stockée dans ``/etc/glpi/``, copier le contenu du dossier ``config`` à cet endroit. L'application devra posséder les droits en lecture sur ce dossier, et en écriture également, mais uniquement pour l'installation.

Les données de GLPI seront stockées dans ``/var/lib/glpi/``, copier le contenu du dossier ``files`` à cet endroit. L'application devra posséder les droits en lecture et écriture sur ce dossier.

Les fichiers de log de GLPI seront stockés dans ``/var/log/glpi/``, il n'y a rien à copier. L'application devra posséder les droits en lecture et écriture sur ce dossier.

Suivant cette nomenclature, il convent de créer un fichier ``inc/downstream.php`` dans le dossier de GLPI avec le contenu suivant :

.. code-block:: php

   <?php
   define('GLPI_CONFIG_DIR', '/etc/glpi/');

.. warning::

   Les paquets GLPI des différents dépôts fourniront très certainement un fichier ``inc/downstream.php``. Ce dernier ne doit pas être modifié !

Ensuite, créer un fichier ``config/local_define.php`` avec le contenu suivant :

.. code-block:: php

   <?php
   define('GLPI_VAR_DIR', '/var/lib/glpi');

   define('GLPI_LOG_DIR', '/var/log/glpi');

.. note::

   .. versionadded:: 9.2.2

   Pour les versions de GLPI antérieures à 9.2.2, la constante ``GLPI_VAR_DIR`` n'existait pas. Il fallait donc redéfinir tous les chemins un par un :

   .. code-block:: php

      <?php
      define('GLPI_VAR_DIR', '/var/lib/glpi');
      define('GLPI_DOC_DIR',        GLPI_VAR_DIR);
      define('GLPI_CRON_DIR',       GLPI_VAR_DIR . '/_cron');
      define('GLPI_DUMP_DIR',       GLPI_VAR_DIR . '/_dumps');
      define('GLPI_GRAPH_DIR',      GLPI_VAR_DIR . '/_graphs');
      define('GLPI_LOCK_DIR',       GLPI_VAR_DIR . '/_lock');
      define('GLPI_PICTURE_DIR',    GLPI_VAR_DIR . '/_pictures');
      define('GLPI_PLUGIN_DOC_DIR', GLPI_VAR_DIR . '/_plugins');
      define('GLPI_RSS_DIR',        GLPI_VAR_DIR . '/_rss');
      define('GLPI_SESSION_DIR',    GLPI_VAR_DIR . '/_sessions');
      define('GLPI_TMP_DIR',        GLPI_VAR_DIR . '/_tmp');
      define('GLPI_UPLOAD_DIR',     GLPI_VAR_DIR . '/_uploads');
      define('GLPI_CACHE_DIR',      GLPI_VAR_DIR . '/_cache');

      define('GLPI_LOG_DIR', '/var/log/glpi');

      Bien entendu, il est toujours possible de définir les chemins un par un.

.. note::

   Le dossier de configuration de GLPI ne peut être défini dans le fichier ``local_define.php`` puisque ce dernier se trouve lui même dans le dossier de configuration ;)
