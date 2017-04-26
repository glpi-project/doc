Module Parc
===========

Le module d'inventaire de GLPI est destiné à la gestion des éléments composant le parc informatique.

La gestion de l'inventaire dans GLPI
------------------------------------

Pour la gestion des matériels et des logiciels du parc, GLPI permet nativement de lister tous les éléments présents au sein de l'organisme que l'on souhaite administrer.

Cependant, on peut automatiser la remontée d'informations depuis les équipements grâce à un outils tiers. Ainsi GLPI propose l'utilisation de 2 plugins existants :

* Le plugin `Fusion Inventory <https://github.com/fusioninventory/fusioninventory-for-glpi/>`_

   Il transforme GLPI en serveur d'inventaire (les agents discutent directement avec GLPI)

   Vous pouvez également consulter le `site officiel de FusionInventory <http://www.fusioninventory.org>`_.

* Le plugin `ocsinventoryng <https://github.com/pluginsGLPI/ocsinventoryng>`_

   Il permet de synchroniser la base GLPI avec un l'outil d'inventaire `OCS Inventory NG <http://www.ocsinventory-ng.org>`_ (les agents des ordinateurs du parc discutent avec le serveur OCS Inventory NG).

Types disponibles
-----------------

.. toctree::
   :maxdepth: 1

   ordinateurs
   moniteurs
   logiciels
   licenses
   materiels-reseaux
   periperiques
   imprimantes
   cartouches
   consommables
   telephones
   global

.. todo::

   Référencé dans la doc originale, mais non présent :

   -   **[Gestion du protocole Internet (IP)](../glpi/inventory_ip.html)**\
      Le protocole IP est matérialisé sous plusieurs formes : adresses
      IP, réseaux IP, mais aussi des FQDN
