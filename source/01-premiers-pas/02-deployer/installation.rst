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
