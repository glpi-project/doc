Gérer les règles métiers
========================

Les règles métiers se gèrent depuis le menu Administration \> Règles

GLPI dispose d'un moteur de règles qui permet d'effectuer un certain
nombre d'actions et d'associations de manière automatique.

Le moteur sert à la fois pour :

-   Règles de gestion
    -   affectation d'une machine à une entité
    -   habilitations à un utilisateur
    -   catégories à un logiciel
    -   routage de tickets dans des entités
    -   actions automatiques à la création des tickets

-   Dictionnaires de données
    -   fabricants
    -   logiciels
    -   imprimantes
    -   types de matériels,
    -   modèles de matériels
    -   champs liés au système d'exploitation

Les dictionnaires permettent de modifier des données entrées dans GLPI
afin de regrouper des données redondantes. Ils peuvent être appliqués
rétroactivement sur une base existante.

Le moteur se comporte de manière différente en fonction des types de
règles :

-   arrêt après la première règle vérifiée
-   déroulement de toutes les règles
-   déroulement des règles avec passage du résultat aux suivantes

Elles peuvent être désactivées : par exemple lorsqu'elles sont en cours
d'écriture et de test.

Conseil : De manière générale, il est conseillé de bien tester les
règles avant de les utiliser, et de faire une sauvegarde avant la mise
en place de chaque nouvelle règle. Sur le formulaire principal d'une
règle, un bouton **Tester** ouvre une fenêtre supplémentaire qui permet
de voir l'ensemble des critères et des résultats de celle-ci.

Créer une règle
---------------

Une règle est composée d'une suite de critères. Selon l'option choisie
(OU/ET) un ou tous les critères doivent être vérifiés pour déclencher
une liste d'actions.

Un mécanisme de prévisualisation permet de tester les règles en cours
d'écriture avant de les passer en production.

Il existe plusieurs conditions :

-   simples
    -   est
    -   n'est pas
    -   contient
    -   ne contient pas
    -   commence par
    -   finit par
    -   sous (pour les intitulés arborescents, indique être cet intitulé
        ou un des intitulés enfant)
    -   pas sous (pour les intitulés arborescents, indique n'être pas
        cet intitulé ou un des intitulés enfant)

-   complexes
    -   expression rationnelle vérifie
    -   expression rationnelle ne vérifie pas

Les expressions rationnelles (autrement appelées regexp) renvoient un ou
plusieurs résultats qui peuvent être ensuite utilisés par les actions
grâce à la directive \#x (ou x est le numéro du résultat de l'expression
rationnelle).

Critère : Nom expression rationnelle vérifie /DESKTOP\_(.\*)/ . Si
l'objet a pour nom DESKTOP\_0001, alors il sera possible d'utiliser 0001
dans les actions de la règle en utilisant le paramètre \#0.

Import, export et duplication
-----------------------------

L'exportation, l'importation et la duplication est possible pour
l'ensemble des règles et des dictionnaires. Ces opérations sont
réalisables globalement depuis les pages principales des règles et des
dictionnaires ou bien par lot depuis les moteurs de recherche via les
actions massives. Ces fonctionnalités sont intéressantes par exemple
dans le cadre de la bascule de règles d"un environnement de
pré-production vers un environnement de production.

-   **[Affecter une catégorie à un
    logiciel](../glpi/administration_rule_softwarecategory.html)**\
     Une classification par catégorie permet de faciliter l'affichage et
    la recherche des logiciels. Celle-ci peut se faire de manière
    automatique pour tout nouveau logiciel, ou rétroactivement.
-   **[Affecter un ticket ouvert par courriel à une
    entité](../glpi/administration_rule_mailcollector.html)**\
     GLPI implémente un mécanisme de routage des tickets ouverts par
    courriel, afin de les créer dans la bonne entité. Celui-ci se base
    sur le moteur de règles.
-   **[Affecter une machine provenant d'un outil d'inventaire à une
    entité](../glpi/administration_rule_ocs.html)**\
     GLPI dispose d'un type de règles permettant d'affecter
    automatiquement une machine provenant d'un outil d'inventaire à une
    entité et un lieu.
-   **[Importer ou lier une machine provenant d'un outil
    d'inventaire](../glpi/administration_rule_importorlink.html)**\
     Un moteur de règles spécifique permet de contrôler le processus
    d'import et de liaison des machines depuis un outil d'inventaire.
-   **[Règles métier pour les
    tickets](../glpi/administration_rule_ticket.html)**\
     Lors de la création d'un ticket, un mécanisme permet de modifier
    les attributs du ticket de manière automatique.

**Sujet parent :** [Module
Administration](../glpi/administration.html "Le module Administration permet d'administrer les utilisateurs, groupes, entités, profils, règles et dictionnaires et offre des outils de maintenance de l'application (sauvegarde et restauration de base, vérification de nouvelle version disponible).")
