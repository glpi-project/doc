Gérer les ordinateurs
=====================

Les ordinateurs se gèrent depuis le menu ***Parc \> Ordinateurs.***

Dans la fiche d'un ordinateur, on trouve un certain nombre d'informations concernant le système d'exploitation (nom, version, service pack, numéro de série, product ID), les caractéristiques générales (fabricant, modèle, type, numéro de série), les informations de gestion (responsable technique, statut, localisation) et les usagers du poste (connus ou non dans GLPI).

D'autres champs sont informatifs, comme **Réseau** (type de connexion au poste), et la **source de la mise à jour** qui est un intitulé indiquant d'où proviennent les mises à jour d'un poste (oui/non, Windows update, yum, apt, etc).

***Remarques :***
*- Dans le cas d'une utilisation de GLPI couplé avec un outil d'inventaire, différentes informations sur l'importation sont également disponibles.*
*- Un ordinateur peut être à la fois un serveur, un ordinateur de bureau ou un portable. Pour les différencier, il est possible d'utiliser le champ type.*

Les différents onglets
----------------------
-   **[Onglet "Composants"](index.php?fr/commontabs/item_composants.md)**
     Gestion des composants des ordinateurs

-   **Onglet "Volumes"**
     Gestion des volumes des ordinateurs

    Un volume lié à un ordinateur est caractérisé par son nom, la partition physique, son point de montage et son système de fichiers ainsi que sa taille.

    Il est également possible de définir la taille restant libre sur le volume.

    ***Remarque :*** *En cas d'utilisation d'un outil d'inventaire tiers, ces informations peuvent être automatiquement importées et mises à jour.

-   **Onglet "Logiciels"**
     Gestion des logiciels installés sur les ordinateurs

    Ceux-ci sont triés par catégories et sont caractérisés par leur nom et leur version ainsi que le statut de cette dernière.

    Si une licence est associée à l'utilisation de ce logiciel sur cet ordinateur, l'information sera également présentée.

    Pour installer un logiciel, sélectionner son nom dans la liste déroulante, puis sa version.

    ***Remarques :***
    *- La liste déroulante énumère les logiciels disponibles dans l'entité.*
    *- La liste des logiciels disponibles se paramètre dans la gestion des logiciels. Voir [*Gérer les logiciels*](inventory_software.html "Les logiciels se gèrent depuis le menu Parc > Logiciel").*

    Pour associer une licence à cet ordinateur, sélectionner le logiciel puis la licence souhaitée dans la liste déroulante.


-   **[Onglet "Connexions"](index.php?fr/commontabs/item_connexions.md)**
     Gestion des connexions

-   **[Onglet "Ports réseaux"](index.php?fr/commontabs/item_portsreseau.md)**
     Gestion des ports réseaux pour les éléments d'inventaire

-   **[Onglet "Gestion"](index.php?fr/commontabs/item_gestion)**
    Gérer les informations financières et administratives

-   **[Onglet "Contrats"](index.php?fr/commontabs/item_contrats.md)**
    Gérer les contrats associés

-   **[Onglet "Documents"](index.php?fr/commontabs/item_documents.md)**
    Les documents associés se gèrent depuis l'onglet *Documents*

-   **Onglet "Machines virtuelles"**
    Dans cet onglet, on retrouve toutes les machines virtuelles associées à un hôte de virtualisation (host) ou l'hôte sur lequel une machine virtuelle est installée. Les informations disponibles pour une machine virtuelle associée sont son nom, son système de virtualisation, son modèle de virtualisation, l'état de la machine virtuelle, la mémoire allouée ainsi que le nom de la machine physique(hôte) et le nombre de processeurs logiques.

    GLPI réalise actuellement la liaison entre un hôte et une machine virtuelle en se basant sur l'identifiant unique (uuid). Dans certains cas, il arrive que l'uuid soit différent au sein de la machine physique et virtuelle, la liaison est alors impossible.

   Le seul moyen d'associer manuellement une machine virtuelle à une machine physique est d'attribuer à la machine virtuelle déclarée sur l'hôte et à la machine virtuelle dans GLPI un uuid identique.

   ***Remarque :** En cas d'utilisation d'un outil d'inventaire tiers, ces informations peuvent être automatiquement importées et mises à jour.*

-   **[Onglet "Tickets"](index.php?fr/commontabs/item_tickets.md)**
    Pour les éléments, les tickets se gèrent depuis l'onglet *Tickets*

-   **[Onglet "Problèmes"](index.php?fr/commontabs/item_problemes.md)**
    Pour les éléments, les problèmes se gèrent depuis l'onglet *Problèmes*

-   **[Onglet "Liens"](index.php?fr/commontabs/item_liens.md)**
     Pour certains éléments, les liens externes se gèrent depuis le menu ***Liens externes***

-   **[Onglet "Notes"](index.php?fr/commontabs/item_notes.md)**
     Pour un élément, les notes se gèrent depuis l'onglet *Notes*

-   **[Onglet "Réservations"](index.php?fr/commontabs/item_reservations.md)**
     Gestion des réservations pour un objet d'inventaire

-   **[Onglet "Historique"](index.php?fr/commontabs/item_historique.md)**
     L'historique est visualisé depuis l'onglet *Historique*

-   **[Onglet "Tous"](index.php?fr/commontabs/item_tous.md)**
     Pour un élément, toutes les informations sont affichées sur une seule page depuis l'onglet *Tous*

Les différentes actions
-----------------------
-   **[Ajouter un  ordinateur](../glpi/inventory_computer_t_create.html)**\
-   **[Voir un ordinateur](../glpi/inventory_computer_t_read.html)**\
-   **[Modifier un ordinateur](../glpi/inventory_computer_t_update.html)**\
-   **[Supprimer un ordinateur](../glpi/inventory_computer_t_delete.html)**\
-   **[Associer un ordinateur à un document](../glpi/inventory_computer_t_linktodocument.html)**\
-   **[Associer un ordinateur à un contrat](../glpi/inventory_computer_t_linktocontract.html)**\

------------
**Sujet parent :** [Module Parc](index.php?fr/03_Module_Parc/01_Module_Parc.md "Module Parc de GLPI")
