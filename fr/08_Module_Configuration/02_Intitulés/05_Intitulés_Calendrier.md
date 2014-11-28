Intitulés Calendrier
=================

Les calendriers utilisés au sein de GLPI sont paramétrables par entité. Ils sont caractérisés par des périodes d'ouverture ainsi que des périodes de fermeture.
Ces calendriers sont utilisés dans les SLAs (voir Configurer les SLAs) et la [configuration des entités](index.php?fr/07_Module_Administration/04_Entitiés.md).

Calendrier
---------

***Les différents onglets***

-   **Onglet "Plages horaires"**
    Correspond aux plages horaires d'ouverture de l'entité. Vous pouvez en ajouter autant que nécessaire par jour tant que ces plages ne se chevauchent pas.

-   **Onglet "Période de fermeture"**
    Liste les périodes de fermeture affectées à ce calendrier et permet d'en ajouter une nouvelle

-   **[Onglet "Tous"](index.php?fr/Les_différents_onglets/Onglet_Tous.md)**
     Pour un élément, toutes les informations sont affichées sur une seule page.

Périodes de fermeture
--------
La liste des périodes de fermeture est une liste de valeurs à plat valable. Elle peut être déléguée par entité.

Une période de fermeture comprend un nom, une période et si cette fermeture est récurrente ou non.

Concernant le champ Récurrent, si celui-ci est à Oui cela signifie que la période indiquée est valable tout le temps. Dans ce cas GLPI ne se soucierait pas de l'année indiquée. 
Très utile pour indiquer les jours fériés revenant chaque année (Noël, Victoire de 1945, 1er mai...) ou les période de fermeture de la société (fermée tous les ans du 1er au 31 août) et surtout cela évite de ressaisir chaque année les mêmes dates.


Les différentes actions
-----------------------

-   **[Ajouter un intitulé](index.php?fr/Les_différentes_actions/Créer_un_nouvel_objet.md)**
-   **[Voir un intitulé](index.php?fr/Les_différentes_actions/Visualiser_un_objet.md)**
-   **[Modifier un intitulé](index.php?fr/Les_différentes_actions/Modifier_un_objet.md)**
-   **[Supprimer un intitulé](index.php?fr/Les_différentes_actions/Supprimer_un_objet.md)**

>Important : Si des éléments que vous voulez supprimer sont utilisés, GLPI proposera automatiquement de transférer les entrées existantes vers un autre élément de la liste, ou bien de les remettre à zéro.

------
**Sujet parent :** [Les intitulés](index.php?fr/08_Module_Configuration/02_Intitulés/01_Intitulés.md "Les intitulés sont gérés depuis le menu Configuration > Intitulés")
