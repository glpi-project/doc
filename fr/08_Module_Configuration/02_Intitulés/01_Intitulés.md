Configurer les intitulés
========================

Certaines listes de sélections déroulantes sont paramétrables dans GLPI. La définition des lieux, des statuts de matériels, des catégories de tickets, des noms des logiciels et des constructeurs : en somme, tout ce qui dépend d'une nomenclature propre à un contexte particulier doit être paramétré. Si certains de ces intitulés sont fournis avec une liste par défaut, la plupart des intitulés doivent être déclarés dans l'application.

Par défaut, les intitulés ne peuvent être traduits dans plusieurs langues. Cette fonctionnalité est activable (voir [Onglet Configuration
Affichage](config_common_display.html "Cet onglet permet de personnaliser l'apparence générale de l'application.")) et permet alors de traduire l'ensemble des champs des intitulés.

Les intitulés sont soit une liste de valeurs à plat (simple liste de valeurs), soit une liste arborescente (chaque élément peut avoir des sous-éléments).

La première étape est de sélectionner la liste à modifier. Ensuite on peut ajouter des éléments à la liste, les modifier et les supprimer.

À chaque intitulé est associé un commentaire. Celui-ci est visible depuis les formulaires de GLPI. Il apparaît au survol de l'icône **Aide** ![image](docs/image/aide.png) associée à la liste déroulante.

Il est possible de visualiser tous les types d'intitulés existants en utilisant **voir tous**.

Figure 1. Liste de la totalité des intitulés
![image](docs/image/ListeIntitules.png)
Cette liste peut varier suivant les droits accordés dans le profil.
Les intitulés avec fond plus foncé sont des intitulés globaux alors que les autres peuvent être délégués par entité.

Voyons maintenant chaque partie en détail :

- **[Général](index.php?fr/08_Module_Configuration/02_Intitulés/03_Intitulés_Général.md "La partie Général des intitulés")**

- **[Assistance](index.php?fr/08_Module_Configuration/02_Intitulés/04_Intitulés_Assistance.md "La partie Assistance des intitulés")**

- **Types**
  Quel que soit le type, la liste est une liste de valeurs à plat valable pour toutes les entités.
  Elle permet de définir le nom du type de l'onglet et peut être traduite.

- **Modèles**
  Quel que soit le modèle, la liste est une liste de valeurs à plat valable pour toutes les entités.
  Elle permet de définir le nom du modèle de l'onglet et peut être traduite.

- **Machines virtuelles**
  Quel que soit le sous-intitulé (modèles ou système de virtualisation, état des machines virtuelles), la liste est une liste de valeurs à plat valable pour toutes les entités.
  Elle permet de définir le nom du modèle ou du système de virtualisation ou celui de l'état des machines virtuelles. 
  Seul l'état des machines virtuelles peut être traduit.

- **Gestion**
  ***Rubrique des documents*** :
  Cette liste  est de type arborescente : chaque élément peut avoir des sous-éléments. Elle est valable pour toutes les entités.
  L'onglet *Rubriques des documents* liste des sous-rubriques déjà créées et permet d'en ajouter une nouvelle.

  ***Type de documents*** :
  Cette liste est une liste de valeurs à plat valable pour toutes les entités.
  L'application propose un certain nombre de types par défaut, mais il est
possible d'en ajouter en fournissant les informations suivantes :
  -   le nom du type de document ;
  -   l'extension, par exemple: `.txt` ou `.pdf` ; la détection des     documents qu'il est permis d'ajouter se base sur cette information ;
  -   le nom du fichier pour l'icône du document désiré. Placez les fichiers d'icônes dans le répertoire pics/icones sous l'arborescence des fichiers d'installation de GLPI ;
  -   le type MIME si nécessaire ;
  -   l'autorisation de téléchargement de ce type de fichier (oui ou non).

  ***Remarque :** le type de document peut être une expression régulière. Cela permet par exemple d'autoriser de définir un ensemble de documents NOMFICHIER.XXXXYYYY où XXXX est un numéro et YYYY la date de l'année fiscale courante. Dans ce cas précis l'expression régulière pourrait être /[0-9]+/ pour indiquer toute extension composée exclusivement de nombres.

   Ces 2 variables peuvent être traduites.

- **Outils (Catégories de la base de connaissance)**
  Cette liste  est de type arborescente : chaque élément peut avoir des sous-éléments ce qui facilite la navigation et la recherche. Elle peut être déléguée par entité.
  Dans la fiche d'une catégorie de la base de connaissance, outre le nom de celle-ci, on trouve l'information précisant la catégorie mère (comme enfant de) et si la catégorie peut être visible des sous entités.
  L'onglet *Catégories de la base de connaissance* liste des sous-catégories déjà créées et permet d'en ajouter une nouvelle.
  Une catégorie de la base de connaissance peut être traduite.

- **[Calendrier](index.php?fr/08_Module_Configuration/02_Intitulés/05_Intitulés_Calendrier.md "La partie Calendrier des intitulés")**

- **Systèmes d'exploitation**
  Quel que soit le sous-intitulé, la liste est une liste de valeurs à plat valable pour toutes les entités.
  Seul les sources de mise à jour peuvent être traduites.

- **Réseau**
- **Internet**
- **Logiciel**
- **Utilisateur**
- **Règles d'affectation d'habilitations à un utilisateur**
- **Unicité des champs**
- **Authentifications externes**


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


Valeurs ignorées pour l'unicité
-------------------------------

Il est possible de renseigner, pour chaque type d'objet des valeurs qui
ne doivent pas être prises en compte lors de la vérification de
l'unicité d'un objet en base. Par exemple ne pas utiliser le numéro de
série générique "To Be Filled By OEM" pour vérifier si un ordinateur
existe déjà dans GLPI.

Remarque : certains plugins apportent certains intitulés
supplémentaires, qui sont paramétrables dans le même menu.

-   **[Visualiser l'historique](../glpi/inventory_log.html)**\
     L'historique est visualisé depuis l'onglet Historique

**Sujet parent :** [Module
Configuration](../glpi/config.html "Module Configuration de GLPI")
