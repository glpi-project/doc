Autres
++++++

Types
-----

Quel que soit le type, la liste est une liste de valeurs à plat valable pour toutes les entités.

Elle permet de définir le nom du type de l'onglet et peut être traduite.

Modèles
-------

Quel que soit le modèle, la liste est une liste de valeurs à plat valable pour toutes les entités.

Elle permet de définir le nom du modèle de l'onglet et peut être traduite.

Machines virtuelles
-------------------

Quel que soit le sous-intitulé (modèles ou système de virtualisation, état des machines virtuelles), la liste est une liste de valeurs à plat valable pour toutes les entités.

Elle permet de définir le nom du modèle ou du système de virtualisation ou celui de l'état des machines virtuelles. 

Seul l'état des machines virtuelles peut être traduit.

Rubrique des documents
----------------------

Cette liste  est de type arborescente : chaque élément peut avoir des sous-éléments. Elle est valable pour toutes les entités.

L'onglet *Rubriques des documents* liste des sous-rubriques déjà créées et permet d'en ajouter une nouvelle.

Type de documents
-----------------

Cette liste est une liste de valeurs à plat valable pour toutes les entités.

L'application propose un certain nombre de types par défaut, mais il est possible d'en ajouter en fournissant les informations suivantes :

* le nom du type de document ;
* l'extension, par exemple: `.txt` ou `.pdf` ; la détection des     documents qu'il est permis d'ajouter se base sur cette information ;
* le nom du fichier pour l'icône du document désiré. Placez les fichiers d'icônes dans le répertoire pics/icones sous l'arborescence des fichiers d'installation de GLPI ;
* le type MIME si nécessaire ;
* l'autorisation de téléchargement de ce type de fichier (oui ou non).

.. note::

   Le type de document peut être une expression régulière. Cela permet par exemple d'autoriser de définir un ensemble de documents NOMFICHIER.XXXXYYYY où XXXX est un numéro et YYYY la date de l'année fiscale courante. Dans ce cas précis l'expression régulière pourrait être /[0-9]+/ pour indiquer toute extension composée exclusivement de nombres.

Ces 2 variables peuvent être traduites.

Outils (Catégories de la base de connaissance)
----------------------------------------------

Cette liste  est de type arborescente : chaque élément peut avoir des sous-éléments ce qui facilite la navigation et la recherche. Elle peut être déléguée par entité.

Dans la fiche d'une catégorie de la base de connaissance, outre le nom de celle-ci, on trouve l'information précisant la catégorie mère (comme enfant de) et si la catégorie peut être visible des sous entités.

L'onglet *Catégories de la base de connaissance* liste des sous-catégories déjà créées et permet d'en ajouter une nouvelle.

Une catégorie de la base de connaissance peut être traduite.

Systèmes d'exploitation
-----------------------

Quel que soit le sous-intitulé, la liste est une liste de valeurs à plat valable pour toutes les entités.

Seul les sources de mise à jour peuvent être traduites.

Réseaux
-------

Toutes les listes de cette partie sont des listes de valeurs à plat.

Les interfaces réseaux, firmwares et réseaux sont valables pour toutes les entités.

Prises réseaux, domaines et VLAN peuvent être déléguées par entité avec visibilité ou non des sous-entités.

Seules la liste Réseaux peut être traduite.

***Prises réseaux :***
   Une prise réseau peut être liée à un lieu. Dans ce cas, lors de la sélection d'une prise sur un port réseau d'un matériel, seules les prises réseau disponibles du lieu du matériel (et des lieux enfants) apparaissent.
   Si vous souhaitez plusieurs prises pour un même lieu, il est préférable d'effectuer la création via le menu lieu de la partie [Général](08_Module_Configuration/02_Intitulés/03_Intitulés_Général.md)  du menu des intitulés.

Logiciel (catégories des logiciels)
-----------------------------------

Cette liste est de type arborescente : chaque élément peut avoir des sous-éléments. Les valeurs sont définies pour toutes les entités

L'onglet *Catégories de logiciels* liste les sous-catégories et permet d'en ajouter une nouvelle.

Une catégorie de logiciels peut être traduite.

Utilisateur
-----------

Les listes de cette partie sont des listes de valeurs à plat valables pour toutes les entités.

Elles peuvent être traduites.

Règles d'affectation d'habilitations à un utilisateur (Critère LDAP)
--------------------------------------------------------------------

Cette liste est une liste de valeurs à plat valables pour toutes les entités.

Il est également possible d'ajouter un critère LDAP particulier.

Unicité des champs (valeurs ignorées pour l'unicité)
----------------------------------------------------

Cette liste est une liste de valeurs à plat qui peut être déléguée par entité et applicable ou non au sous-entités.

Il est possible de renseigner, pour chaque type d'objet des valeurs qui ne doivent pas être prises en compte lors de la vérification de l'unicité d'un objet en base. 

Par exemple ne pas utiliser le numéro de série générique "To Be Filled By OEM" pour vérifier si un ordinateur existe déjà dans GLPI.

.. note::

   Certains plugins peuvent apporter des intitulés supplémentaires, qui sont paramétrables dans le même menu.

Authentifications externes
--------------------------

La liste est une liste de valeurs à plat valables pour toutes les entités.
