Intitulés Assistance
=================

Catégories de ticket
-----
La liste des catégories de ticket est de type arborescente : chaque élément peut avoir des sous-éléments. Elle peut être déléguée par entité.

Dans la fiche d'une catégorie de ticket, on trouve un certain nombre d'informations concernant cette catégorie (responsable et groupe techniques pour l'affectation automatique des tickets (voir [configuration de l'entité](index.php?fr/07_Module_Administration/04_Entités.md)), la catégorie par défaut de la base de connaissance lorsque l'on souhaite ajouter une solution d'un ticket dans celle-ci, la visibilité de cette catégorie suivant l'interface ou suivant l'objet ainsi que les gabarits affectées à cette catégorie) ainsi que l'information précisant la catégorie mère (comme enfant de) et si la catégorie peut être visible des sous entités.
En cas de choix d'un gabarit, celui-ci sera affecté au choix de la catégorie donc surchargera celle qui aurait u être définie dans l'entité ou via règle métier.

Un lien avec les catégories de la base de connaissances est possible. Si une catégorie est choisie, le clic sur l'aide ![image](docs/image/aide.png) de la catégorie du ticket dans un ticket amène directement à tous les articles de la base de connaissance de cette catégorie.


***Les différents onglets***

-   **Onglet "Catégories de tickets"**
    Liste les sous-catégories existantes et permet d'en ajouter une nouvelle.

-   **[Onglet "Historique"](index.php?fr/Les_différents_onglets/Onglet_Historique.md)**
     L'historique est visualisé depuis l'onglet *Historique*


Catégories de tâches
-----
La liste des catégories de tâches est de type arborescente : chaque élément peut avoir des sous-éléments. Elle peut être déléguée par entité.

La fiche d'une catégorie de tâche indique son nom ainsi que l'information précisant la catégorie mère (comme enfant de) et si la catégorie peut être visible des sous entités.

***Les différents onglets***

-   **Onglet "Catégories de tâches"**
    Liste les sous-catégories existantes et permet d'en ajouter une nouvelle.

-   **[Onglet "Historique"](index.php?fr/Les_différents_onglets/Onglet_Historique.md)**
     L'historique est visualisé depuis l'onglet *Historique*


Types de solution
----------
Cette liste est une liste de valeurs à plat valable. Elle peut être déléguée par entité.


Sources des demandes
----------
Cette liste est une liste de valeurs à plat valable pour toutes les entités.
Elle précise si cette source source doit être défini par défaut pour les tickets et/ou les collecteurs.


Gabarits de solution
----------
Cette liste est une liste de valeurs à plat valable. Elle peut être déléguée par entité.
Elle permet de prédéfinir le contenu ainsi que le type d'une solution et peut être visible ou non des sous-entités.

***Les différents onglets***

-   **[Onglet "Historique"](index.php?fr/Les_différents_onglets/Onglet_Historique.md)**
     L'historique est visualisé depuis l'onglet *Historique*

Les gabarits de solution ne peuvent pas être traduits

Statuts de projet
----------------
Cette liste est une liste de valeurs à plat valable pour toutes les entités.
Elle permet de définir les statuts appliqués à un projet ainsi que l'(état de celui-ci.

Types de projet
----------------
Cette liste est une liste de valeurs à plat valable pour toutes les entités.
Elle permet de définir les types appliqués à un projet.


Types de tâches de projet
----------------
Cette liste est une liste de valeurs à plat valable pour toutes les entités.
Elle permet de définir les types de tâches appliqués à un projet.


Les onglets communs
-------------------

-   **[Onglet "Traduction"](index.php?fr/08_Module_Configuration/02_Intitulés/Onglet_Traduction.md)**
    Uniquement si vous le droit de traduire les intitulés est autorisé dans la configuration générale.

-   **[Onglet "Tous"](index.php?fr/Les_différents_onglets/Onglet_Tous.md)**
     Pour un élément, toutes les informations sont affichées sur une seule page.




Les différentes actions
-----------------------

-   **[Ajouter un intitulé](index.php?fr/Les_différentes_actions/Créer_un_nouvel_objet.md)**
-   **[Voir un intitulé](index.php?fr/Les_différentes_actions/Visualiser_un_objet.md)**
-   **[Modifier un intitulé](index.php?fr/Les_différentes_actions/Modifier_un_objet.md)**
-   **[Supprimer un intitulé](index.php?fr/Les_différentes_actions/Supprimer_un_objet.md)**

>Important : Si des éléments que vous voulez supprimer sont utilisés, GLPI proposera automatiquement de transférer les entrées existantes vers un autre élément de la liste, ou bien de les remettre à zéro.

------
**Sujet parent :** [Les intitulés](index.php?fr/08_Module_Configuration/02_Intitulés/01_Intitulés.md "Les intitulés sont gérés depuis le menu Configuration > Intitulés")
