Gérer la base de connaissances
==============================

La base de connaissances est accessible depuis le menu Outils \> Base de
connaissances

La base de connaissances répond à deux objectifs principaux :

-   Le premier est de centraliser des connaissances internes aux
    différents techniciens.
-   Le second est de mettre à disposition des utilisateurs des
    informations (FAQ publique) leur permettant de résoudre seuls des
    problèmes simples.

Seuls les éléments de la FAQ publique sont visibles par les utilisateurs
de l'interface simplifiée. Les éléments qui ne sont pas définis comme
faisant partie de la FAQ publique sont visibles uniquement au sein de la
console centrale par des techniciens par exemple.

La navigation au sein de la base de connaissance peux se faire de 2
manières distinctes :

-   En effectuant une recherche globale dans l'onglet Recherche
-   En navigant au sein des catégories dans l'onglet Navigation

L'onglet Gérer, visible en fonction du profil utilisateur, permet la
gestion des articles que vous avez rédigé et des articls non publiés.

Il est nécessaire de sélectionner pour chaque article de la base de
connaissances ou de la FAQ une ou plusieurs cibles. La ou les cibles
correspondent aux entités, aux profils, groupes ou utilisateurs qui
pourront consulter l'article. Tant qu'aucune cible n'a été sélectionnée
pour un article, ce dernier est visible uniquement par son rédacteur.
L'article est considéré comme "non publié" et apparaît dans le tableau
"Articles non publiés" de la page d'accueil de la base de connaissances.

Par défaut, les articles ne peuvent pas être traduits dans plusieurs
langues. Cette fonctionnalité est activable (voir [Onglet Configuration
Affichage](config_common_display.html "Cet onglet permet de personnaliser l'apparence générale de l'application.")).

Il est possible d'associer un ou plusieurs documents aux articles de la
base de connaissances.

Remarque : Un article peut être rendu visible pendant une période donnée
via la définition de la date de début et la date de fin de visibilité.

ATTENTION :

Les éléments qui ne doivent pas être interprétés à l'affichage peuvent
être définis avec le style Préformaté (<pre\> en HTML). Des balises
comme <VirtualHost\> sont donc insérable et affichage. Par contre des
balises au format HTML (<BALISE\>) peuvent disparaître au moment de
l'édition ; vous pouvez pour avoir une visibilité complète du texte
passer en mode HTML où tous les éléments seront visibles. Votre
navigateur peut également modifier dynamiquement le contenu (changement
de casse, ajout de balises) lors d'une édition.

Il est possible de créer des catégories et sous-catégories afin
d'organiser la navigation (voir [Configurer les
intitulés](config_dropdown.html "Les intitulés se configurent depuis le menu Configuration > Intitulés")).
L'utilisateur peut utiliser plusieurs mode pour recherche et naviguer au
sein de la base de connaissances via 3 onglets différents :

-   **Rechercher :** c'est l'onglet par défaut. Il présente les articles
    les plus récents, les plus populaires et les dernières
    modifications. Il permet égament de rechercher au sein de la base de
    connaissances.
-   **Parcourir :** permet de naviguer au sein de l'arborescence des
    catégories.
-   **Gérer :** cet onglet n'est accessible qu'aux administrateurs de la
    base de connaissances. Suivant les droits de l'utilisateur, il est
    possible d'accéder rapidement à ses ou à tous les articles non
    publiés (sans cible définies) ainsi qu'à tous ses articles.

Remarque : Le moteur de recherche de la base de connaissances permet
d'utiliser un certain nombre d'opérateurs pour effectuer des recherches
complexes : + - \~ < \> \* ” ” ()

-   + Le mot doit être présent
-   - Le mot ne doit pas être présent
-   \* Opérateur de troncature à positionner en suffixe
-   " " Une phrase entre guillemets double (") est recherchée
    littéralement, telle qu'elle a été saisie.
-   <\> permet de définir une préférence sur l'ordre des éléments
    recherchés
-   () agrégateur utile pour l'utilisation de < et \>

**Exemples** :

-   'panne imprimante' : Recherche les lignes qui contiennent au moins
    un de ces mots.
-   '+panne +imprimante' Recherche les lignes qui contiennent ces deux
    mots.
-   '+courriel thunderbird' Recherche les lignes qui contiennent le mot
    *courriel*, mais classe plus haut les lignes qui contiennent aussi
    *thunderbird*.
-   '+courriel -outlook' Recherche les lignes qui contiennent *courriel*
    mais pas *outlook*.
-   \* '+courriel +(\>thunderbird <outlook)' Recherche les lignes qui
    contiennent les mots *courriel* et *thunderbird*, ou *courriel* et
    *outlook* (dans n'importe quel ordre), mais classe
    *courriel**thunderbird* plus haut que *courriel**outlook*.
-   'open\*' Trouve les lignes qui contiennent des mots tels que
    *openoffice*, *openwriter*, *openbar* ou *openphp*.
-   '"suite openoffice"' Recherche les lignes qui contiennent exactement
    la phrase *suite openoffice*

**Sujet parent :** [Module
Outils](../glpi/tool.html "Le module Outils permet aux utilisateurs de gérer les notes, la base de connaissance, les réservations ainsi que de générer des rapports")
