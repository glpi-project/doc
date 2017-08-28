Logiciels
=========

GLPI permet la gestion des logiciels et de leurs versions ainsi que des licences (pouvant être associées ou non à des versions).

Un logiciel est par défaut associé à une entité : c'est-à-dire qu'il y aura autant de logiciels dans la base qu'il y a d'entités. Rendre un logiciel visible dans les sous-entités permet de faire une gestion plus fine.

La gestion financière est effectuée au niveau des licences, alors que celle présente dans les logiciels sert uniquement de modèle pour les licences associées à celui-ci.

Les logiciels peuvent être importés automatiquement depuis un outil d'inventaire tiers et dans ce cas un dictionnaire peut être utilisé pour filtrer ou nettoyer les données (voir [Configurer les dictionnaires de données](07_Module_Administration/06_Dictionnaires.md "Les dictionnaires se gèrent depuis le menu Administration > Dictionnaires")).

Certains champs sont spécifiques dans la fiche du logiciel : 
- **Mise à jour** est une donnée informative, à partir de laquelle aucun traitement n'est effectué et qui indique que le logiciel est une mise à jour d'un autre. 
- **Catégorie** permet des regroupements par nature sur la liste des logiciels d'un ordinateur. 
- **Associable à un ticket** définit la visibilité du logiciel dans la liste déroulante "Matériel" d'un ticket.

**Bonnes pratiques :**

1.  Créer le logiciel (sans version dans le nom)
2.  Créer les versions
3.  Créer les licences

***Conseil :*** en mode multi-entité, la liste des logiciels peut devenir longue, en partie dû aux doublons (1 logiciel par entité). Une gestion fine des logiciels, licences et versions peut consister à regrouper les logiciels identiques dans une même entité (voir onglet *Regroupement* ci-dessous), puis à rendre récursif les éléments qui peuvent l'être.

Il est possible d'utiliser les :doc:`gabarits avec les logiciels <../generalites/gabarits>`.

Les différents onglets
----------------------

.. _versions_soft:

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


-   **[Onglet "Licences"](03_Module_Parc/04_Logiciels/Onglet_Licences.md)**
    Principes et gestion des licences logiciels dans GLPI


-   **Onglet "Installations**
   Principes et gestion des installations logiciels dans GLPI.

   L'installation d'un logiciel sur un poste est visualisée au travers d'une version (voir l'onglet *Versions* ci-dessus) et consultable sur la fiche d'un logiciel (liste des ordinateurs ayant au moins une version installée), sur celle d'une version (ordinateurs ayant cette version installée) ou enfin sur la fiche de l'ordinateur (liste des versions de logiciels installées, triées par catégories).

   ***Remarques :***
   - La colonne licence est remplie uniquement lorsque la licence est affectée à l'ordinateur concerné.
   - L'affichage initial des différentes catégories dépend des préférences utilisateur. Voir [Gérer ses préférences](01-premiers-pas/03_Utiliser_GLPI/04_Gérer_ses_préférences.md").

   2 options sont disponibles sur la liste des installations de logiciels d'un ordinateur. Au dessus de la liste, **Installer** manuellement une version d'un logiciel sur le poste (nécessite de sélectionner le logiciel et la version) : si une licence est associée à celui-ci la "version d'utilisation" de la licence est automatiquement renseignée.

   Pour **Désinstaller** une version d'un logiciel, il faut utiliser le système d'actions massives : sélectionner les versions à supprimer puis choisir **Supprimer définitivement**. Si une licence est affectée à
l'ordinateur elle le reste, mais sa "version d'utilisation" est effacée.

   A la suite des versions installées, la liste des licences affectées mais non installées est affichée. Vous pouvez ajouter une nouvelle licence associée à cet ordinateur. Le système d'actions massives permet, via l'action **Installer**, d'installer les versions d'utilisation des licences sélectionnées.

.. include:: onglets/gestion.rst

.. include:: ../onglets/contrats.rst

.. include:: ../onglets/documents.rst

.. include:: ../onglets/tickets.rst

.. include:: onglets/problemes.rst

.. include:: ../onglets/liens.rst

.. include:: ../onglets/notes.rst

-   **[Onglet "Réservations"](Les_différents_onglets/Onglet_Réservations.md)**
     Gestion des réservations pour un objet d'inventaire

.. include:: ../onglets/historique.rst

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

.. include:: ../onglets/debug.rst

.. include:: ../onglets/all.rst

Les différentes actions
-----------------------

Outre les :doc:`actions communes <../generalites/actions>` ; certaines actions sont spécifiques aux logiciels :

* :ref:`Ajouter une version à un logiciel <versions_soft>`
* **[Gérer les licences](03_Module_Parc/04_Logiciels/Onglet_Licences.md)**
    Depuis le menu ***Parc > Logiciels*** cliquer sur le nom de la licence dans l'onglet *Licences*.
