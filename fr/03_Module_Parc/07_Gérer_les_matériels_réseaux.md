Gérer les matériels réseaux
===========================

Le matériel réseau représente le matériel qui gère, transmet et route le réseau entre plusieurs autres matériels (ordinateurs, imprimantes...).

Un matériel réseau peut être un switch, un hub ethernet, un routeur, un pare-feu (firewall) ou encore une borne d'accès sans fil (wifi).

-   **[Onglet "Composants"](index.php?fr/commontabs/item_)**

-   **Onglet "Ports réseaux"**
     Gestion des ports réseaux pour les éléments d'inventaire

    Un port réseau permet de modéliser la sortie d'une interface réseau sur un matériel donné.

    Chaque port est caractérisé par un *numéro* et un *nom*.
    Sur ce port, il est possible d'ajouter un ou plusieurs *VLAN*, ces derniers peuvent être définis par un nom, un commentaire et un numéro de VLAN (TAG ID).
    
    ***Remarque :** Pour un port réseau d'un type d'objet ordinateurs, le champ MAC avec la liste déroulante permet de sélectionner l'adresse MAC des composants de type carte réseau.*

    Pour chaque matériel, il est possible à tout moment d'ajouter un ou plusieurs ports grâce au système de modification massive.

    Sur chaque port réseau, on peut associer un ou plusieurs [Nom réseau]("../inventory_ip_network_name.html "). On peut ajouter plusieurs noms réseau en allant dans l'onglet "Nom réseau".

    - Lorsqu'il n'y a qu'un seul nom réseau, il s'affichera dans le formulaire du port réseau et il sera possible de le modifier directement. On peut également modifier le nom réseau au travers de son formulaire propre (avec ses onglets) en cliquant sur le titre juste au dessus de la partie du formulaire qui le concerne ;
    - Lorsqu'il y a plusieurs noms réseau, il n'est plus possible de modifier le nom réseau dans le formulaire du port réseau. On doit systématiquement utiliser l'onglet.

    Les ports réseau peuvent être de différents types. Il y a des ports physiques (Ethernet, Wifi ...), [virtuels]("../glossary/virtual_ports.html ") (boucle locale, alias, aggrégats ...), point à point (ligne commutée)...

    L'onglet des ports réseau représente l'ensemble de ports disponibles sur l'équipement dans un tableau.

    Dans l'en-tête du tableau, à côté du nombre total de port, il y a un lien permettant de choisir les options d'affichage des ports réseaux. Il est ainsi possible d'afficher ou de masquer des informations telles que les informations réseau (tout ce qui concerne Internet), les caractéristiques intrinsèques du port (ie. dépendant de son type), les adresses MAC, les VLANs ...

    ***Remarque :** GLPI permet de représenter fidèlement des connexions réseau très complexes avec des alias ports Wifi et/ou Ethernet associés à des VLAN regroupés dans aggrégats [aggregats]("../appendix/image_complexe_networkport.html" ).

Les différents onglet :
---------------------
-   **Onglet "Noms réseaux"**
     Récapitulatif des adresses IP et réseaux IP pour chaque nom réseau.

-   **[Onglet "Gestion"](index.php?fr/commontabs/item_gestion)**
    Gérer les informations financières et administratives
     Éléments de gestion pour les éléments d'inventaire

-   **[Onglet "Contrats"](index.php?fr/commontabs/item_contrats.md)**
    Gérer les contrats associés

-   **[Onglet "Documents"](index.php?fr/commontabs/item_documents.md)**
    Associer des documents à l'objet

-   **[Onglet "Tickets"](index.php?fr/commontabs/item_tickets.md)**

-   **[Onglet "Problèmes"](index.php?fr/commontabs/item_problemes.md)**

-   **[Onglet "Liens"](index.php?fr/commontabs/item_liens.md)**
    Associer des liens externes

-   **[Onglet "Notes"](index.php?fr/commontabs/item_notes.md)**

-   **[Onglet "Réservations"](index.php?fr/commontabs/item_reservations.md)**

-   **[Onglet "Historique"](index.php?fr/commontabs/item_historique.md)**

-   **[Onglet "Debug"](index.php?fr/commontabs/item_debug.md)**
    Uniquement si vous êtes connecté en mode Debug.

-   **[Onglet "Tous"](index.php?fr/commontabs/item_tous.md)**
    Afficher toutes les informations sur une seule page

Les différentes actions
-----------------------
-   **[Ajouter un matériel réseau](index.php?fr/commontabs/item_create.md)**
-   **[Voir un matériel réseau](index.php?fr/commontabs/item_read.md)**
-   **[Modifier un matériel réseau](index.php?fr/commontabs/item_update.md)**
-   **[Supprimer un matériel réseau](index.php?fr/commontabs/item_delete.md)**
-   **[Associer un matériel réseau à un document](index.php?fr/commontabs/item_liendocument.md)**
-   **[Associer un matériel réseau à un contrat](index.php?fr/commontabs/item_liencontrat.md)**


-----------
**Sujet parent :** [Module Parc](index.php?fr/03_Module_Parc/01_Module_Parc.md "Module Parc de GLPI")
