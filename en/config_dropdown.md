Configurer les intitulés
========================

Les intitulés se configurent depuis le menu Configuration \> Intitulés

Certaines listes de sélections déroulantes sont paramétrables dans GLPI.
La définition des lieux, des statuts de matériels, des catégories de
tickets, des noms des logiciels et des constructeurs : en somme, tout ce
qui dépend d'une nomenclature propre à un contexte particulier doit être
paramétré. Si certains de ces intitulés sont fournis avec une liste par
défaut, la plupart des intitulés doivent être déclarés dans
l'application.

Par défaut, les intitulés ne peuvent être traduits dans plusieurs
langues. Cette fonctionnalité est activable (voir [Onglet Configuration
Affichage](config_common_display.html "Cet onglet permet de personnaliser l'apparence générale de l'application."))
et permet alors de traduire l'ensemble des champs des intitulés.

Les intitulés sont soit une liste de valeurs à plat, soit une liste
arborescente.

Les statuts des matériels sont une liste simple de valeurs (En stock,
...) tandis que pour les lieux chaque élément peut avoir des
sous-éléments (Lieu 1 \> Sous-lieu 1 \> Sous-sous-lieu 1).

La première étape est de sélectionner la liste à modifier. Ensuite on
peut ajouter des éléments à la liste, les modifier et les supprimer.

Important: Si des éléments utilisés sont supprimés, GLPI proposera
automatiquement de transférer les entrées existantes vers un autre
élément de la liste, ou bien de les remettre à zéro.

Il est possible de visualiser tous les types d'intitulés existants en
utilisant **voir tous**.

À chaque intitulé est associé un commentaire. Celui-ci est visible
depuis les formulaires de GLPI. Il apparaît au survol de l'icône
**Aide** ![image](../image/aide.png) associée à la liste déroulante.

Certains intitulés sont en arborescence. Il est possible de créer des
intitulés enfants d'un intitulé existant.

Les intitulés lieu, catégories des tickets et des tâches peuvent être
définis comme utilisables dans les sous-entités.

Certains intitulés ont des informations supplémentaires.

Certains intitulés, correspondant à des items créés en série, peuvent
être créés en masse en suivant une nomenclature de type préfixe,
numérotation incrémentale, suffixe.

Base de connaissances
---------------------

Les catégories de la base de connaissance peuvent être organisées en
arborescence, afin de faciliter la navigation et la recherche.

Lieu
----

Les lieux peuvent être définis sous forme d'arborescence. Par exemple:
`Bâtiment 1 > Etage 0` ; `Bâtiment 1` a été créé dans un premier temps,
puis `Etage 0` a été créé **comme enfant de** Bâtiment 1;

Des informations supplémentaires telles que le code du bâtiment et de la
pièce peuvent être ajoutées.

L'ensemble des matériels du lieu est également disponible dans l'onglet
Elements.

Listes noires
-------------

Les listes noires permettent de définir des valeurs qui seront
blacklistées lors des différents mécanismes d'import de GLPI :

-   IP, MAC pour les imports des ports réseaux
-   Courriels pour les collecteurs mails

Prises réseau
-------------

Une prise réseau peut être liée à un lieu. Dans ce cas, lors de la
sélection d'une prise sur un port réseau d'un matériel, seules les
prises réseau du lieu du matériel (et des lieux enfants) apparaissent.
Lors de la création de prises réseau, une fois le lieu choisi, il est
proposé à l'utilisateur de suivre la nomenclature suivante : préfixe +
numérotation incrémentale dont il faut définir le premier et le dernier
terme + suffixe. Par exemple, soient le préfixe "bru", 9 et 11 les
bornes de la numérotation, et "srv" le suffixe : les prises réseau
créées seront nommées : bru09srv, bru10srv, bru11srv.

Source de la demande
--------------------

Une et une seule source de demande peut être définie comme la source de
la demande par défaut que ce soit pour les tickets créés par l'interface
ou ceux créés par les collecteurs.

Catégorie des tickets
---------------------

Un responsable technique et un groupe peuvent être affectés à une
catégorie. Si le paramètre **Assigner automatiquement les tickets au
responsable technique** est activé dans la configuration générale, et
que le ticket n'a pas de technicien ou de groupe associé, ces valeurs
sont positionnées sur celles de la catégorie. Voir [Configurer les
paramètres
centraux](config_common.html "Les paramètres centraux se configurent depuis le menu Configuration > Générale").

CAUTION:

le responsable technique du matériel associé au ticket est prioritaire
sur le responsable technique de la catégorie.

Un lien avec les catégories de la base de connaissances est possible. Si
une catégorie est choisie, le clic sur l'aide
![image](../image/aide.png) de la catégorie du ticket dans un ticket
amène directement à tous les articles de la base de connaissance de
cette catégorie.

**Visible dans l'interface simplifiée** : si activé, cette catégorie de
ticket s'affiche dans la vue simplifié de saisie de ticket.

Catégorie des tâches
--------------------

Intitulé permettant de caractériser les différentes tâches. Cette liste
ne contient par défaut aucune valeur.

Les types de documents
----------------------

Les types de documents autorisés dans GLPI sont paramétrables.
L'application propose un certain nombre de types par défaut, mais il est
possible d'en ajouter en fournissant les informations suivantes :

-   le nom du type de document ;
-   l'extension, par exemple: `.txt` ou `.pdf` ; la détection des
    documents qu'il est permis d'ajouter se base sur cette information ;
-   le nom du fichier pour l'icône du document désiré. Placez les
    fichiers d'icônes dans le répertoire pics/icones sous l'arborescence
    des fichiers d'installation de GLPI ;
-   le type MIME si nécessaire ;
-   l'autorisation de téléchargement de ce type de fichier (oui ou non).

Note: le type de document peut être une expression régulière. Cela
permet par exemple d'autoriser de définir un ensemble de documents
NOMFICHIER.XXXXYYYY où XXXX est un numéro et YYYY la date de l'année
fiscale courante. Dans ce cas précis l'expression régulière pourrait
être /[0-9]+/ pour indiquer toute extension composée exclusivement de
nombres.

Calendrier et Périodes de fermeture
-----------------------------------

Les calendriers utilisés au sein de GLPI sont paramétrables. Ils sont
caractérisés par des périodes d'ouverture (autant que nécessaire par
jour) ainsi que des périodes de fermeture (vacances, jours fériés...).
Ces périodes de fermeture peuvent être récurrentes, c'est à dire quelles
apparaissent tous les ans aux même dates. Ces calendriers sont utilisés
dans les SLAs (voir [Configurer les
SLAs](config_sla.html "Dans GLPI, administrer les SLAs peut se faire à partir du menu Configuration > SLAs."))
et la configuration des entités (voir [Déléguer l'administration par
entité](administration_entity_delegation.html "Délégation de certains paramètres d'administration par entité")).

Valeurs ignorées pour l'unicité
-------------------------------

Il est possible de renseigner, pour chaque type d'objet des valeurs qui
ne doivent pas être prises en compte lors de la vérification de
l'unicité d'un objet en base. Par exemple ne pas utiliser le numéro de
série générique "To Be Filled By OEM" pour vérifier si un ordinateur
existe déjà dans GLPI.

Note: certains plugins apportent certains intitulés supplémentaires, qui
sont paramétrables dans le même menu.

-   **[View History](../glpi/inventory_log.html)**\
     The history is viewed from the tab Historical

**Parent topic:** [Module
Configuration](../glpi/config.html "Module Configuration de GLPI")
