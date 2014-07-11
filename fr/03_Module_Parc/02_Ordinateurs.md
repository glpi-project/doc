Gérer les ordinateurs
=====================

Dans la fiche d'un ordinateur, on trouve un certain nombre d'informations concernant le système d'exploitation (nom, version, service pack, numéro de série, product ID), les caractéristiques générales (fabricant, modèle, type, numéro de série), les informations de gestion (responsable technique, statut, localisation) et les usagers du poste (connus ou non dans GLPI).

D'autres champs sont informatifs, comme **Réseau** (type de connexion au poste), et la **source de la mise à jour** qui est un intitulé indiquant d'où proviennent les mises à jour d'un poste (oui/non, Windows update, yum, apt, etc).

***Remarques :***
*- Dans le cas d'une utilisation de GLPI couplé avec un outil d'inventaire, différentes informations sur l'importation sont également disponibles.*
*- Un ordinateur peut être à la fois un serveur, un ordinateur de bureau ou un portable. Pour les différencier, il est possible d'utiliser le champ type.*

Les différents onglets
----------------------
-   **[Onglet "Composants"](index.php?fr/Les_différents_onglets/Onglet_Composants.md)**
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


-   **[Onglet "Connexions"](index.php?fr/Les_différents_onglets/Onglet_Connexions.md)**
     Gestion des connexions

-   **[Onglet "Ports réseaux"](index.php?fr/Les_différents_onglets/Onglet_Ports_réseaux.md)**
     Gestion des ports réseaux pour les éléments d'inventaire

-   **[Onglet "Gestion"](index.php?fr/Les_différents_onglets/Onglet_Gestion.md)**
    Gérer les informations financières et administratives

-   **[Onglet "Contrats"](index.php?fr/Les_différents_onglets/Onglet_Contrats.md)**
    Gérer les contrats associés

-   **[Onglet "Documents"](index.php?fr/Les_différents_onglets/Onglet_Documents.md)**

-   **Onglet "Machines virtuelles"**
    Dans cet onglet, on retrouve toutes les machines virtuelles associées à un hôte de virtualisation (host) ou l'hôte sur lequel une machine virtuelle est installée. Les informations disponibles pour une machine virtuelle associée sont son nom, son système de virtualisation, son modèle de virtualisation, l'état de la machine virtuelle, la mémoire allouée ainsi que le nom de la machine physique(hôte) et le nombre de processeurs logiques.

    GLPI réalise actuellement la liaison entre un hôte et une machine virtuelle en se basant sur l'identifiant unique (uuid). Dans certains cas, il arrive que l'uuid soit différent au sein de la machine physique et virtuelle, la liaison est alors impossible.

   Le seul moyen d'associer manuellement une machine virtuelle à une machine physique est d'attribuer à la machine virtuelle déclarée sur l'hôte et à la machine virtuelle dans GLPI un uuid identique.

   ***Remarque :** En cas d'utilisation d'un outil d'inventaire tiers, ces informations peuvent être automatiquement importées et mises à jour.*

-   **[Onglet "Tickets"](index.php?fr/Les_différents_onglets/Onglet_Tickets.md)**
    Pour les éléments, les tickets se gèrent depuis l'onglet *Tickets*

-   **[Onglet "Problèmes"](index.php?fr/Les_différents_onglets/Onglet_Problèmes.md)**

-   **[Onglet "Liens"](index.php?fr/Les_différents_onglets/Onglet_Liens.md)**
     Pour certains éléments, les liens externes se gèrent depuis le menu ***Liens externes***

-   **[Onglet "Notes"](index.php?fr/Les_différents_onglets/Onglet_Notes.md)**

-   **[Onglet "Réservations"](index.php?fr/Les_différents_onglets/Onglet_Réservations.md)**
     Gestion des réservations pour un objet d'inventaire

-   **[Onglet "Historique"](index.php?fr/Les_différents_onglets/Onglet_Historique.md)**
     L'historique est visualisé depuis l'onglet *Historique*

-   **[Onglet "Debug"](index.php?fr/Les_différents_onglets/Onglet_Debug.md)**
    Uniquement si vous êtes connecté en mode Debug.

-   **[Onglet "Tous"](index.php?fr/Les_différents_onglets/Onglet_Tous.md)**
     Pour un élément, toutes les informations sont affichées sur une seule page.

Les différentes actions
-----------------------
-   **[Ajouter un  ordinateur](index.php?fr/Les_différentes_actions/Créer_un_nouvel_objet.md)**
-   **[Voir un ordinateur](index.php?fr/Les_différentes_actions/Visualiser_un_objet.md)**
-   **[Modifier un ordinateur](index.php?fr/Les_différentes_actions/Modifier_un_objet.md)**
-   **[Supprimer un ordinateur](index.php?fr/Les_différentes_actions/Supprimer_un_objet.md)**
-   **[Associer un ordinateur à un document](index.php?fr/Les_différentes_actions/Lier_un_document_à_un_objet.md)**
-   **[Associer un ordinateur à un contrat](index.php?fr/Les_différentes_actions/Lier_un_contrat_à_un_objet.md)**

------------
**Sujet parent :** [Module Parc](index.php?fr/03_Module_Parc/01_Module_Parc.md "Module Parc de GLPI")
