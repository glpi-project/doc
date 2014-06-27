Gérer les logiciels
===================

Les logiciels se gèrent depuis le menu ***Parc \> Logiciel.***

GLPI permet la gestion des logiciels et de leurs versions ainsi que des licences (pouvant être associées ou non à des versions).

Un logiciel est par défaut associé à une entité : c'est-à-dire qu'il y aura autant de logiciels dans la base qu'il y a d'entités. Rendre un logiciel visible dans les sous-entités permet de faire une gestion plus fine.

La gestion financière est effectuée au niveau des licences, alors que celle présente dans les logiciels sert uniquement de modèle pour les licences associées à celui-ci.

Les logiciels peuvent être importés automatiquement depuis un outil d'inventaire tiers et dans ce cas un dictionnaire peut être utilisé pour filtrer ou nettoyer les données (voir [Configurer les dictionnaires de
données](administration_dictionnary.html "Les dictionnaires se gèrent depuis le menu Administration > Dictionnaires")).

Certains champs sont spécifiques dans la fiche du logiciel : 
- **Mise à jour** est une donnée informative, à partir de laquelle aucun traitement n'est effectué et qui indique que le logiciel est une mise à jour d'un autre. 
- **Catégorie** permet des regroupements par nature sur la liste des logiciels d'un ordinateur. 
- **Associable à un ticket** définit la visibilité du logiciel dans la liste déroulante "Matériel" d'un ticket.

**Bonnes pratiques :**

1.  Créer le logiciel (sans version dans le nom)
2.  Créer les versions
3.  Créer les licences

***Conseil :*** en mode multi-entité, la liste des logiciels peut devenir longue, en partie dû aux doublons (1 logiciel par entité). Une gestion fine des logiciels, licences et versions peut consister à regrouper les
logiciels identiques dans une même entité (voir [Regrouper les logiciels (multi-entités).](inventory_software_merge.html "Comment regrouper des logiciels homonymes dans des sous-entités.")), puis à rendre récursif les éléments qui peuvent l'être.

Les différents onglets
----------------------
-   **Onglet "Versions"**
    Principes et gestion des versions logiciels dans GLPI

    Une version d'un logiciel est l'élément pouvant être installé sur un ordinateur.
    Voir également l'onglet *Installations* ci-dessous.

    La vue principale liste le nombre d'installation de la version.

    **Champs spécifiques :**
    - **Nom** : correspond au numéro de version ;
    - **Statut** : en préconisations ITIL, il permet de suivre la DSL (bibliothèque de stockage des versions autorisées) ;
    - **Système d'exploitation** : le système d'exploitation sur lequel fonctionne cette version de logiciel ;
    - **Installations** : nombre d'installations de la version ;
    - **Commentaires**.


-   **Onglet "Licences"**
     Principes et gestion des licences logiciels dans GLPI

    La licence d'un logiciel correspond à un droit d'utilisation de ce logiciel. Elle dispose d'un certain nombre de champs spécifiques. Le nom indique la désignation commerciale de la licence. La version d'achat est celle achetée alors que la version d'utilisation correspond à la version réellement installée du logiciel. Ces deux versions peuvent être totalement différentes mais doivent refléter l'existant.

   2 versions d'un logiciel ont été achetées mais une seule est effectivement installée.

   Le type est la nature du droit d'utilisation. Le type OEM est le seul type configuré par défaut dans GLPI. Voir [Configurer les intitulés](config_dropdown.html "Les intitulés se configurent depuis le menu Configuration > Intitulés") pour définir les types.

   Le nombre indique le volume d'installation qui pourra être fait avec cette licence. Cela peut être un nombre d'utilisateurs (licence flottante), un nombre d'installations (licence multiple), un nombre illimité (licence site), etc. Il est possible d'affecter la licence à un ou plusieurs ordinateurs correspondant. par exemple si la licence est de type OEM.

   L'expiration est la date limite donnant droit d'utilisation de la licence. La dépassement de cette date peut déclencher une notification. Voir [Configuration des notifications](config_notification.html "Les notifications se configurent depuis le menu Configuration > Notifications ;").

   ***Conseil :*** Ceci est configurable par entité dans le menu ***Configuration > Notifications*** pour définir les modèles et destinataires utilisés et dans le menu ***Configuration > Entité*** pour activer ou non cette fonctionnalité, définir les valeurs par défaut et une anticipation de l'envoi de la notification si besoin.

   ***Remarque :** Les licences expirées ne comptent plus dans les totaux des licenses disponibles.*

   Il est possible de lier des contrats à des licences (Voir [Gérer les contrats](management_contract.html "Les contrats sont gérés depuis le menu Gestion > Contrats")).

   ***Remarque :** Lors de l'activation des informations financières d'une licence, les données sont initialisées avec les renseignements saisis dans les informations financières du logiciel (qui n'est qu'un modèle).*


-   **Onglet "Installations**
   Principes et gestion des installations logiciels dans GLPI.

   L'installation d'un logiciel sur un poste est visualisée au travers d'une version (voir l'onglet *Versions* ci-dessus) et consultable sur la fiche d'un logiciel (liste des ordinateurs ayant au moins une version installée), sur celle d'une version (ordinateurs ayant cette version installée) ou enfin sur la fiche de l'ordinateur (liste des versions de logiciels installées, triées par catégories).

   ***Remarques :***
   - La colonne licence est remplie uniquement lorsque la licence est affectée à l'ordinateur concerné.
   - L'affichage initial des différentes catégories dépend des préférences utilisateur. Voir [Personnaliser l'interface](config_common_personalize.html "Les préférences d'affichage qui peuvent être définies avec des valeurs par défaut et que les utilisateurs peuvent modifier pour leur session sont regroupées dans l'onglet personnalisation.").

   2 options sont disponibles sur la liste des installations de logiciels d'un ordinateur. Au dessus de la liste, **Installer** manuellement une version d'un logiciel sur le poste (nécessite de sélectionner le
logiciel et la version) : si une licence est associée à celui-ci la "version d'utilisation" de la licence est automatiquement renseignée.

   Pour **Désinstaller** une version d'un logiciel, il faut utiliser le système d'actions massives : sélectionner les versions à supprimer puis choisir **Supprimer définitivement**. Si une licence est affectée à
l'ordinateur elle le reste, mais sa "version d'utilisation" est effacée.

   A la suite des versions installées, la liste des licences affectées mais non installées est affichée. Vous pouvez ajouter une nouvelle licence associée à cet ordinateur. Le système d'actions massives permet, via l'action **Installer**, d'installer les versions d'utilisation des licences sélectionnées.

-   **[Onglet "Gestion"](index.php?fr/commontabs/item_gestion)**
    Gérer les informations financières et administratives

-   **[Onglet "Contrats"](index.php?fr/commontabs/item_contrats.md)**
    Gérer les contrats associés

-   **[Onglet "Documents"](index.php?fr/commontabs/item_documents.md)**
    Les documents associés se gèrent depuis l'onglet *Documents*

-   **[Onglet "Tickets"](index.php?fr/commontabs/item_tickets.md)**
    Pour les éléments, les tickets se gèrent depuis l'onglet *Tickets*

-   **[Onglet "Problèmes"](index.php?fr/commontabs/item_problemes.md)**
    Pour les éléments, les problèmes se gèrent depuis l'onglet *Problèmes*

-  **[Onglet "Liens"](index.php?fr/commontabs/item_liens.md)**
     Pour certains éléments, les liens externes se gèrent depuis le menu ***Liens externes***

-   **[Onglet "Notes"](index.php?fr/commontabs/item_notes.md)**
     Pour un élément, les notes se gèrent depuis l'onglet *Notes*

-   **[Onglet "Réservations"](index.php?fr/commontabs/item_reservations.md)**
     Gestion des réservations pour un objet d'inventaire

-   **[Onglet "Historique"](index.php?fr/commontabs/item_historique.md)**
     L'historique est visualisé depuis l'onglet *Historique*

-   **Onglet "Regroupement"**
    Comment regrouper des logiciels homonymes dans des sous-entités.

    ***Remarque :** Cette option n'est disponible que pour les plateformes multi-entités.*

    Elle permet de regrouper les logiciels des entités filles sur l'entité mère.

    ***Comment réaliser un regroupement :***
    
    1.  Si le logiciel n'existe pas dans l'entité mère :
        Créer un logiciel dont le nom est strictement identique au nom du logiciel dans les entités filles ;
    2.  Ouvrir la fiche du logiciel de l'entité mère ;
    3.  Activer la récursivité (sous-entités à Oui en haut à droite) ;
    Un nouvel onglet "Regroupement" apparaît après l'onglet "Historique".
    4.  Ouvrir cet onglet ;
    Une liste indique les logiciels des entités filles ayant le même nom.
    5.  Sélectionner les lignes souhaitées et valider le regroupement.

    > ATTENTION : Cette opération est irréversible.

    ***Effets du regroupement :***
    
    -   Les licences sont attachées au logiciel de l'entité mère, mais restent dans les sous-entités d'origine ;
    -   Les versions sont fusionnées (plus de doublon dans l'entité mère);
    -   Les anciens logiciels sont déplacés dans la corbeille ;

    ***Remarque :** Lors de l'utilisation d'un outil d'inventaire tiers, ne pas oublier :*
    *-   de vider la corbeille à la fin du regroupement (sinon la synchronisation restaurera le logiciel en cas de nouvelle version) ;*
    *-   d'affecter le même fabricant au nouveau logiciel (la synchronisation vérifiant le nom du fabricant, un nouveau logiciel serait créé).*

-   **[Onglet "Tous"](index.php?fr/commontabs/item_tous.md)**
     Pour un élément, toutes les informations sont affichées sur une seule page depuis l'onglet *Tous*

-------
**Sujet parent :** [Module Parc](index.php?fr/03_Module_Parc/01_Module_Parc.md "Module Parc de GLPI")
