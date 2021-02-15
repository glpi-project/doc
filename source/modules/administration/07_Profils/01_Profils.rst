Administrer les profils d'utilisateurs
======================================

La notion de profil est un pilier dans la configuration de GLPI. C'est
elle qui accrédite les utilisateurs de certains droits, c'est elle qui
permet de sécuriser et d'isoler les données à certains utilisateurs.

Un profil est associé à :

-  Un utilisateur ;
-  Une entité (de manière **récursive** ou **dynamique**).

Pour répercuter les droits liés à ce profil, à toutes les entités filles
de l'entité enregistrée, il faut associer le profil de manière
récursive. C'est là tout le principe de la récursivité.

Il est également possible d'ajouter un profil à un utilisateur sur
plusieurs entités sans lien réel entre elles. Pour ce faire, il suffit
d'ajouter un profil à un utilisateur x fois, x étant le nombre d'entités
à couvrir.

Il est donc possible d'associer des profils différents à un même
utilisateur !

Par défaut, 7 profils sont pré-enregistrés dans GLPI :

-  **Super-Admin** : Ce profil dispose de tous les droits ! >Important :
   si le profil super-admin est supprimé ou si l'\ **interface
   simplifiée** est associée à ce profil, l'accès à la configuration de
   GLPI peut être définitivement perdue.

-  **Admin** : Ce profil dispose de droits d'administration sur
   l'intégralité de GLPI. Certaines restrictions lui sont appliquées au
   niveau de la configuration des règles, des entités ainsi que d'autres
   rubriques pouvant altérer le comportement de GLPI.

-  **Superviseur** : Ce profil reprend les éléments du profil Technicien
   en y ajoutant des élément permettant la gestion d'une équipe et son
   organisation (attribution de tickets...).

-  **Technicien** : Ce profil correspond à celui utilisé pour un
   technicien de maintenance. Il a accès à l'inventaire en lecture et au
   helpdesk afin de traiter des tickets.

-  **Hotliner** : Ce profile correspond à celui que l'on pourrait donner
   pour un service de Hotline. Il permet de saisir des tickets et de les
   suivre mais pas d'en être en charge comme peut l'être un technicien.

-  **Observer** : Ce profil dispose de droits de lecture sur toutes les
   données d'inventaire et de gestion. Au niveau de l'assistance, il
   pourra déclarer un ticket ou s'en voir attribuer mais ne pourra
   administrer cette rubrique (*attribuer un ticket, voler un
   ticket...).*

-  **Self-Service** : Ce profil est le plus limité. C'est d'ailleurs le
   seul à disposer d'une interface différente, `l'\ **interface
   simplifiée**, en opposition à l'\ **interface
   standard** <01-premiers-pas/03_Utiliser_GLPI/06_Interface_standard_et_interface_simplifiée.rst>`__.
   Il pourra cependant déclarer un ticket, y ajouter un suivi, consulter
   la FAQ ou encore réserver un matériel. Ce profil est enregistré comme
   profil par défaut.

Explication des droits
----------------------

Une fois le profil créé, il sera possible d'établir les droits sur les
différentes fonctionnalités de GLPI. 7 onglets correspondants aux
différents menus de GLPI sont alors disponibles pour gérer cet ensemble
de droits (voir ci-dessous).

Les différents droits d'un objet sont listés sur la ligne de son nom.
Pour activer un droit il suffit de cocher la case correspondante (et
inversement pour supprimer un droit).

    Attention : Aucune déduction de droit n'est faite ; par exemple,
    pour pouvoir modifier un objet vous devez également donner le droit
    de lecture.

Droits après migration: La migration reprend intégralement vos anciens
droits, quel que soit l'objet et active les valeurs correspondantes dans
le nouveau système.

Vos anciens droits d'écriture sont transformés en Lecture, Mettre à
jour, Créer, Supprimer et Purge pour la majorité des objets, à charge
pour vous de les affiner si besoin.

Pour d'autres, les droits sont regroupés par objet (par exemple, les
droits FAQ sont des droits de l'objet Base de connaissance).

Avant de voir, onglet par onglet, les droits spécifiques, il y a
certains droits qui sont quasiment standard pour tous les objets :

-  ***Lecture*** : permet la visualisation d'un objet (c'est d'ailleurs
   souvent ce droit qui affiche ou non l'objet dans les différents
   menus)
-  ***Mettre à jour*** : permet de modifier les données d'un objet
-  ***Créer*** : permet d'ajouter un nouvel élément du type de l'objet
-  ***Supprimer*** : permet de placer l'objet dans la corbeille. Si ce
   droit n'est pas présent, cela signifie que l'objet n'a pas de
   corbeille.
-  ***Purge*** : supprime l'objet de la corbeille et donc définitivement
   de la base de données. Vous pouvez donc affiner vos droits entre la
   suppression temporaire (mise à la corbeille) et la suppression
   définitive (purge de la corbeille)
-  ***Lecture notes*** : permet de visualiser l'onglet Notes, si l'objet
   en possède un
-  ***Mise à jour notes*** : permet de modifier le contenu d'une note ou
   de la supprimer

Les différents onglets
----------------------

Remarque : L'affichage de la gestion des profils est fonction du profil
dont l'utilisateur connecté dépend. Il peut donc varier selon le profil.

-  **Onglet "Parc"** Les éléments du menu ***Parc*** bénéficient des 7
   droits standard (voir ci dessus) |image|
   Droit ***Internet*** :

   -  champ IP d'un port réseau
   -  association ou dissociation d'un nom réseau à un port réseau
   -  partie Internet des intitulés (Réseaux IP, domaine internet,
      réseaux wifi, noms réseaux)

-  **`Onglet
   "Assistance" <07_Module_Administration/07_Profils/02_Onglet_Assistance.rst>`__**
   Cet onglet gère les droits sur les tickets, les suivis, les tâches,
   les validations, les associations, les problèmes et les changements.
   Il gère également la visibilité des statistiques et des plannings
   ainsi que l'affectation d'un gabarit au profil.

-  **`Onglet "Cycle de
   vie" <modules/assistance/lifecyclematrix>`__**
   Droits sur le processus de changement de statut d'un ticket, d'un
   problème et d'un changement.

-  **Onglet "Gestion"** Les éléments du menu ***Gestion*** bénéficient
   des 7 droits standard (voir ci dessus). |image| Petite particularité
   pour les droits sur les ***informations financières*** : Ce droit
   sert également pour les objets ayant des informations financières.
   Par exemple vous ne pourrez pas purger un ordinateur ayant des
   informations financières si vous n'avez pas le droit Purge sur les
   informations financières.

-  **`Onglet
   "Outils" <07_Module_Administration/07_Profils/03_Onglet_Outils.rst>`__**
   Cet onglet gère les droits sur les notes, les flux RSS, les
   marques-pages publics, les rapports, les réservations, la base de
   connaissance ainsi que les projets et les tâches d'un projet.

-  **`Onglet
   "Administration" <07_Module_Administration/07_Profils/04_Onglet_Administration.rst>`__**

-  **`Onglet
   "Configuration" <07_Module_Administration/07_Profils/05_Onglet_Configuration.rst>`__**

-  **Onglet "Utilisateurs"** Liste des entités dans lesquelles ce profil
   est attribué. Pour voir les utilisateurs correspondant, il suffit de
   cliquer sur l'entité concernée. *"D"* signifie que les droits ont été
   attribués dynamiquement *"R"* signifie que les droits sont récursifs
   depuis l'entité d'affectation

-  **`Onglet
   "Historique" <Les_différents_onglets/Onglet_Historique.rst>`__**
   L'historique est visualisé depuis l'onglet *Historique*

-  **`Onglet "Tous" <Les_différents_onglets/Onglet_Tous.rst>`__** Pour un
   élément, toutes les informations sont affichées sur une seule page.

Les différentes actions
-----------------------

-  **`Ajouter un
   profil <Les_différentes_actions/Créer_un_nouvel_objet.rst>`__** Les
   champs à renseigner sont :

   -  Nom
   -  Profil par défaut : Lorsque ce champ est coché, tout utilisateur
      créé ou importé se verra associé le profil en question.

       Important : Si plus d'un profil est enregistré comme profil par
       défaut, le premier enregistré fera autorité sur tous les autres.

   -  Choix de l'interface : `standard ou
      simplifiée <01-premiers-pas/03_Utiliser_GLPI/06_Interface_standard_et_interface_simplifiée.rst>`__

   -  Modifier son mot de passe Lorsque ce champ est coché, les
      utilisateurs ayant ce profil auront la possibilité de modifier
      leur mot de passe depuis le lien **Préférences**.

       Important : Si l'authentification par Annuaire est activée, un
       utilisateur perdra sa capacité à modifier son mot de passe, de
       même pour tout autre donnée liée à l'annuaire.

   -  Formulaire de création de tickets à la connexion Lorsque ce champ
      est coché, les utilisateurs ayant ce profil seront redirigés sur
      la page de création des tickets au lieu de la page d'accueil.

-  **`Voir un
   profil <Les_différentes_actions/Visualiser_un_objet.rst>`__**
-  **`Modifier un
   profil <Les_différentes_actions/Modifier_un_objet.rst>`__**
-  **`Supprimer un
   profil <Les_différentes_actions/Supprimer_un_objet.rst>`__**

--------------

**Sujet parent :** `Module
Administration <07_Module_Administration/01_Module_Administration.rst>`__.

**Sujet parent :** `Administrer les contrôles
d'accès <../glpi/access_control_intro.html>`__

.. |image| image:: /image/parc.png
.. |image| image:: /image/gestion.png

