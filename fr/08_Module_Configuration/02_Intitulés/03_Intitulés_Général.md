Intitulés Général
=================

Lieux
-----
La liste des lieux est de type arborescente : chaque élément peut avoir des sous-éléments (Lieu 1 > Sous-lieu 1 > Sous-sous-lieu 1). Elle peut être délégué par entité.

Dans la fiche d'un lieu, on trouve un certain nombre d'informations concernant ce lieu (code du bâtiment, de la pièce, longitude, latitude, altitude) ainsi que l'information précisant le lieu père (comme enfant de) et si le lieu peut être visible des sous entités.

***Les différents onglets***

-   **Onglet "Lieux"**
    Liste les sous-lieux existants et permet d'en ajouter un nouveau .

-   **Onglet "Eléments"**
    Liste tous les éléments affectés à ce lieu. Vous pouvez choisir de n'afficher qu'un type d'élément (ordinateur, utilisateur, prise réseau, logiciel...).

-   **[Onglet "Historique"](index.php?fr/Les_différents_onglets/Onglet_Historique.md)**
     L'historique est visualisé depuis l'onglet *Historique*

-   **[Onglet "Traduction"](index.php?fr/08_Module_Configuration/02_Intitulés/Onglet_Traduction.md)**
    Uniquement si vous le droit de traduire les intitulés est autorisé dans la configuration générale.

-   **Onglet "Prise réseau"**
    ![image](docs/image/priseReseau.png)
    Liste les prises réseau affectées à ce lieu et permet d'en ajouter une nouvelle. L'ajout peut être unique via la partie haute ou multiple via la partie basse. Pour l'ajout multiple, vous pouvez préfixer le numéro de la prise comme indiqué dans la copie d'écran.

-   **[Onglet "Tous"](index.php?fr/Les_différents_onglets/Onglet_Tous.md)**
     Pour un élément, toutes les informations sont affichées sur une seule page.

Status
-----
La liste des lieux est de type arborescente : chaque élément peut avoir des sous-éléments. Elle peut être délégué par entité.

Dans la fiche d'un statut, on trouve un certain nombre d'informations concernant la visibilité de ce statut ainsi que l'information précisant le statut père (comme enfant de) et si le statut peut être visible des sous entités.

***Les différents onglets***

-   **Onglet "Statuts des éléments"**
    Liste les sous-statuts existants et permet d'en ajouter un nouveau. 

-   **[Onglet "Traduction"](index.php?fr/08_Module_Configuration/02_Intitulés/Onglet_Traduction.md)**
    Uniquement si vous le droit de traduire les intitulés est autorisé dans la configuration générale.

-   **[Onglet "Tous"](index.php?fr/Les_différents_onglets/Onglet_Tous.md)**
     Pour un élément, toutes les informations sont affichées sur une seule page.

Fabricants
----------
Cette liste est une liste de valeurs à plat valable pour toutes les entités.
Elle ne possède pas qu'un seul onglet, celui du formulaire.

Listes noires
----------
La liste des Listes noires est une liste de valeurs à plat valable pour toutes les entités.
Elle comprend la valeur que vous voulez mettre en liste noire ainsi que sur quel type l'appliquer (IP, MAC, numéro de série, UUID ou courriel).
Les listes noires sont utilisées pour les import automatique via un agent d'inventaire ou pour les tickets ouverts par courriels.

***Les différents onglets***

-   **[Onglet "Historique"](index.php?fr/Les_différents_onglets/Onglet_Historique.md)**
     L'historique est visualisé depuis l'onglet *Historique*

-   **[Onglet "Tous"](index.php?fr/Les_différents_onglets/Onglet_Tous.md)**
     Pour un élément, toutes les informations sont affichées sur une seule page.

Contenu de courriel interdit
----------
Cette liste est une liste de valeurs à plat valable pour toutes les entités.
Elle ne possède pas qu'un seul onglet, celui du formulaire.
Elle permet au collecteur de courriels de ne pas importer un courriel contenu le texte défini. Cela peut permettre, entre autre, de lutter contre le spam dans le cas de l'autorisation de création de ticket pour les courriels anonymes.


Les différentes actions
-----------------------

-   **[Ajouter un intitulé](index.php?fr/Les_différentes_actions/Créer_un_nouvel_objet.md)**
-   **[Voir un intitulé](index.php?fr/Les_différentes_actions/Visualiser_un_objet.md)**
-   **[Modifier un intitulé](index.php?fr/Les_différentes_actions/Modifier_un_objet.md)**
-   **[Supprimer un intitulé](index.php?fr/Les_différentes_actions/Supprimer_un_objet.md)**

>Important : Si des éléments que vous voulez supprimer sont utilisés, GLPI proposera automatiquement de transférer les entrées existantes vers un autre élément de la liste, ou bien de les remettre à zéro.

------
**Sujet parent :** [Les intitulés](index.php?fr/08_Module_Configuration/02_Intitulés/01_Intitulés.md "Les intitulés sont gérés depuis le menu Configuration > Intitulés")
