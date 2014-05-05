Regrouper les logiciels (multi-entités).
========================================

Comment regrouper des logiciels homonymes dans des sous-entités.

Remarque : Cette option n'est disponible que pour les plateformes
multi-entités.

Elle permet de regrouper les logiciels des entités filles sur l'entité
mère.

Comment réaliser un regroupement ?
----------------------------------

1.  Si le logiciel n'existe pas dans l'entité mère :

    Créer un logiciel dont le nom est strictement identique au nom du
    logiciel dans les entités filles.

2.  Ouvrir la fiche du logiciel de l'entité mère ;
3.  Activer la récursivité (sous-entités à Oui en haut à droite) ;

    Un nouvel onglet "Regroupement" apparaît après l'onglet
    "Historique".

4.  Ouvrir cet onglet ;

    Une liste indique les logiciels des entités filles ayant le même
    nom.

5.  Sélectionner les lignes souhaitées et valider le regroupement.

ATTENTION :

Cette opération est irréversible.

Effets du regroupement
----------------------

-   Les licences sont attachées au logiciel de l'entité mère, mais
    restent dans les sous-entités d'origine ;
-   Les versions sont fusionnées (plus de doublon dans l'entité mère);
-   Les anciens logiciels sont déplacés dans la corbeille ;

Remarque : Lors de l'utilisation d'un outil d'inventaire tiers, ne pas
oublier :

-   de vider la corbeille à la fin du regroupement ;

    (sinon la synchronisation restaurera le logiciel en cas de nouvelle
    version).

-   d'affecter le même fabricant au nouveau logiciel.

    (la synchronisation vérifiant le nom du fabricant, un nouveau
    logiciel serait créé).

**Sujet parent :** [Gérer les
logiciels](../glpi/inventory_software.html "Les logiciels se gèrent depuis le menu Parc > Logiciel")
