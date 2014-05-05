Gérer les logiciels
===================

Les logiciels se gèrent depuis le menu Parc \> Logiciel

GLPI permet la gestion des logiciels et de leurs versions ainsi que des
licences (pouvant être associées ou non à des versions).

Un logiciel est par défaut associé à une entité : c'est à dire qu'il y a
aura autant de logiciels dans la base qu'il y a d'entités. Rendre un
logiciel visible dans les sous-entités permet de faire une gestion plus
fine.

La gestion financière est effectuée au niveau des licences, alors que
celle présente dans les logiciels sert uniquement de modèle pour les
licences associées à celui-ci.

Les logiciels peuvent être importés automatiquement depuis un outil
d'inventaire tiers et dans ce cas un dictionnaire peut être utilisé pour
filtrer ou nettoyer les données (voir [Configurer les dictionnaires de
données](administration_dictionnary.html "Les dictionnaires se gèrent depuis le menu Administration > Dictionnaires")).

Certains champs sont spécifiques dans la fiche du logiciel : **Mise à
jour** est une donnée informative, à partir de laquelle aucun traitement
n'est effectué, et qui indique que le logiciel est une mise à jour d'un
autre. La **catégorie** permet des regroupements par nature sur la liste
des logiciels d'un ordinateur. Enfin **associable à un ticket** définit
la visibilité du logiciel dans la liste déroulante "Matériel" d'un
ticket.

**Bonnes pratiques :**

1.  Créer le logiciel (sans version dans le nom)
2.  Créer les versions
3.  Créer les licences

Tip: en mode multi-entité, la liste des logiciels peut devenir longue,
en partie dû aux doublons (1 logiciel par entité). Une gestion fine des
logiciels, licences et versions peut consister à regrouper les logiciels
identiques dans une même entité (voir [Regrouper les logiciels
(multi-entités).](inventory_software_merge.html "Comment regrouper des logiciels homonymes dans des sous-entités.")),
puis à rendre récursif les éléments qui peuvent l'être.

-   **[Gérer les versions](../glpi/inventory_software_version.html)**\
     Principes et gestion des versions logiciels dans GLPI
-   **[Gérer les licences](../glpi/inventory_software_license.html)**\
     Principes et gestion des licences logiciels dans GLPI
-   **[Gérer les
    installations](../glpi/inventory_software_installation.html)**\
     Principes et gestion des installations logiciels dans GLPI Parc \>
    Logiciel
-   **[Gérer les informations financières et
    administratives](../glpi/inventory_management.html)**\
     Éléments de gestion pour les éléments d'inventaire
-   **[Gérer les contrats associés](../glpi/inventory_contract.html)**\
     Affiche les contrats associés.
-   **[Associate documents](../glpi/inventory_document.html)**\
     Associated documents can be managed from the tab Documents
-   **[Tickets management](../glpi/inventory_ticket.html)**\
     For items, tickets can be managed from tab Tickets
-   **[Associate external links](../glpi/inventory_link.html)**\
     For some items, external links are managed from External links menu
-   **[Manage notes](../glpi/notes.html)**\
     For an item, notes are managed from the tab Notes
-   **[Onglet "Réservations"](../glpi/inventory_reservation.html)**\
     Gestion des réservations pour un objet d'inventaire
-   **[View History](../glpi/inventory_log.html)**\
     The history is viewed from the tab Historical
-   **[Regrouper les logiciels
    (multi-entités).](../glpi/inventory_software_merge.html)**\
     Comment regrouper des logiciels homonymes dans des sous-entités.
-   **[View all information on one page](../glpi/inventory_all.html)**\
     For an item all information are showed on only one page from tab
    All

**Parent topic:** [Inventory
Module](../glpi/inventory.html "Inventory Module in GLPI")
