Module Parc
===========

Présentation du module d'inventaire de GLPI. Ce module est destiné à la gestion des éléments composants le parc informatique.

-   **La gestion de l'inventaire dans GLPI**     

    Pour la gestion des matériels et des logiciels du parc, GLPI permet nativement de lister tous les éléments présents au sein de l'organisme que l'on souhaite administrer.

    Cependant, on peut automatiser la remontée d'informations depuis les équipements grâce à un outils tiers. Ainsi GLPI propose l'utilisation de 2 plugins existants.

    ***Outils disponibles :***

    -   Le plugin [ocsinventoryng](https://forge.indepnet.net/projects/ocsinventoryng)
        qui permet de synchroniser la base GLPI avec un outil d'inventaire [OCS Inventory NG](http://www.ocsinventory-ng.org) (les agents des ordinateurs du parc discutent avec le serveur OCS Inventory NG).
    -   Le plugin [Fusion Inventory](http://www.fusioninventory.org) 
        qui transforme GLPI en serveur d'inventaire (les agents discutent directement avec GLPI).
   

-   **[La gestion des gabarits dans GLPI](index.php?fr/Les_différentes_actions/Gérer_les_gabarits.md)**   
   
-   **Les statuts dans GLPI, la vue spécifique**
    Cette information est couramment utilisée pour distinguer les ordinateurs mis au rebut, disponibles, affectés etc... Il est donc possible de créer ses propres statuts en rapport avec le système d'information.

    C'est à l'administrateur de GLPI, depuis la configuration des intitulés (voir [Configurer les intitulés](index.php?fr/08_Module_Configuration/02_Intitulés/01_Intitulés.md "Les intitulés se configurent depuis le menu Configuration > Intitulés")), de définir les statuts qui seront utilisés et pour quels types d'élements ils le seront. Ces statuts peuvent être arborescents pour faciliter la gestion.

    Le statut d'un élément est modifiable depuis sa fiche ou depuis le système d'actions massives.

    Un rapport (voir [Gérer les rapports](index.php?fr/06_Module_Outils/07_Rapports.md "Les rapports se gèrent depuis le menu Outils > Rapports")) vous propose une synthèse des statuts par type de matériel. La recherche globale de l'inventaire (voir Recherche globale ci-dessous) vous permet une recherche par statut sur l'ensemble des éléments.

-   **Recherche globale sur les éléments d'inventaire**
Le menu ***Parc > Global*** vous permet d'effectuer une recherche globale sur l'ensemble des éléments auxquels vous avez accès. 
Cette recherche est limitée aux ordinateurs, moniteurs, imprimantes, équipements réseau, périphériques et téléphones.

    Elle permet par exemple d'effectuer une recherche par statut, IP ou MAC.

-   **[Gérer les ordinateurs](index.php?fr/03_Module_Parc/02_Ordinateurs.md)**

-   **[Gérer les moniteurs](index.php?fr/03_Module_Parc/03_Moniteurs.md)**

-   **[Gérer les logiciels](index.php?fr/03_Module_Parc/04_Logiciels/01_Logiciels.md)**
    Gestion des logiciels et des licences.

-   **[Gérer les matériels réseaux](index.php?fr/03_Module_Parc/05_Matériels_réseaux.md)**

-   **[Gérer les périphériques](index.php?fr/03_Module_Parc/06_Périphériques.md)**

-   **[Gérer les imprimantes](index.php?fr/03_Module_Parc/07_Imprimantes.md)**

-   **[Gérer les cartouches](index.php?fr/03_Module_Parc/08_Cartouches.md)**
     Les cartouches dans GLPI, caractéristiques et utilisation

-   **[Gérer les consommables](index.php?fr/03_Module_Parc/09_Consommables.md)**

-   **[Gérer les téléphones](index.php?fr/03_Module_Parc/10_Téléphones.md)**
 
-   **[Global](index.php?fr/03_Module_Parc/11_Global.md)**
    
-   **[Gestion du protocole Internet (IP)](../glpi/inventory_ip.html)**\
     Le protocole IP est matérialisé sous plusieurs formes : adresses
    IP, réseaux IP, mais aussi des FQDN

