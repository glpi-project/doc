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

   Il permet de synchroniser la base GLPI avec un l'outil d'inventaire `OCS Inventory NG <http://www.ocsinventory-ng.org>`_) (les agents des ordinateurs du parc discutent avec le serveur OCS Inventory NG).

.. recherche-globale-inventaire:

Recherche globale sur les éléments d'inventaire
-----------------------------------------------

Le menu ***Parc > Global*** vous permet d'effectuer une recherche globale sur l'ensemble des éléments auxquels vous avez accès. Cette recherche est limitée aux éléments suivants :

* ordinateurs,
* moniteurs,
* imprimantes,
* équipements réseaux,
* périphériques,
* téléphones.

Elle permet par exemple d'effectuer une recherche par statut, IP ou MAC.

Types disponibles
-----------------

.. toctree::
   :maxdepth: 3

   ordinateurs
   moniteurs
   logiciels-et-licenses
   materiels-reseaux
   periperiques
   imprimantes
   cartouches
   consommables
   telephones
   protocole-ip

 

-   **[Gérer les ordinateurs](03_Module_Parc/02_Ordinateurs.md)**

-   **[Gérer les moniteurs](03_Module_Parc/03_Moniteurs.md)**

-   **[Gérer les logiciels](03_Module_Parc/04_Logiciels/01_Logiciels.md)**
    Gestion des logiciels et des licences.

-   **[Gérer les matériels réseaux](03_Module_Parc/05_Matériels_réseaux.md)**

-   **[Gérer les périphériques](03_Module_Parc/06_Périphériques.md)**

-   **[Gérer les imprimantes](03_Module_Parc/07_Imprimantes.md)**

-   **[Gérer les cartouches](03_Module_Parc/08_Cartouches.md)**
     Les cartouches dans GLPI, caractéristiques et utilisation

-   **[Gérer les consommables](03_Module_Parc/09_Consommables.md)**

-   **[Gérer les téléphones](03_Module_Parc/10_Téléphones.md)**
 
-   **[Global](03_Module_Parc/11_Global.md)**
    
-   **[Gestion du protocole Internet (IP)](../glpi/inventory_ip.html)**\
     Le protocole IP est matérialisé sous plusieurs formes : adresses
    IP, réseaux IP, mais aussi des FQDN

