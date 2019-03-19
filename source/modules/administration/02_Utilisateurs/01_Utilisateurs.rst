Administrer les utilisateurs
============================

Il est possible d'ajouter, modifier, supprimer des utilisateurs ou
rechercher et exporter la liste des utilisateurs. La liste des
utilisateurs enregistrés fonctionne de la même façon que la liste des
éléments de l'inventaire.

En plus des informations de l'utilisateur, il est possible de le
désactiver si besoin (champ Actif). Dans ce cas, l'utilisateur n'est
plus sélectionnable dans les menus déroulants des tickets ou de
l'inventaire, mais il conserve ses matériels et tickets associés. Des
dates de validité permettent également de définir la période d'activité
de l'utilisateur ; le compte de l'utilisateur ne sera alors considéré
comme actif qu'après la date de début et/ou avant la date de fin (les 2
valeurs sont optionnelles et peuvent être définies indépendamment).

Une photo peut être associée manuellement ou importée automatiquement
depuis un annuaire (voir `Authentifier des utilisateurs à partir
d'annuaires LDAP <config_auth_ldap.html>`__).

Depuis la liste des utilisateurs, 3 options sont proposées pour
`importer un utilisateur
|image| <07_Module_Administration/02_Utilisateurs/02_Importer_des_utilisateurs.md>`__.

Les différents onglets
----------------------

-  **Onglet "Habilitations"** Permet d'administrer les habilitations
   dont dispose l'utilisateur ; Pour cela, sélectionner l'entité sur
   laquelle les droits doivent être donnés, puis le droit (profil) à
   donner. L'option **Récursif** permet d'associer également le profil à
   toutes les sous-entités de l'entité sélectionnée. Un tableau
   récapitulatif regroupe les droits déjà attribués à cet utilisateur.

-  **Onglet "Groupes"** Liste les groupes associés à l'utilisateur. Ce
   tableau liste le nom du groupe, si le groupe est remonté directement
   depuis un annuaire (dynamique), si l'utilisateur est délégataire ou
   superviseur du groupe.(voir `Gérer les
   groupes <scripts_ldap_mass_sync.html>`__). Si vous avez le droit de
   modifier un utilisateur, vous pouvez également lui affecter un groupe
   depuis cet onglet.

-  **Onglet "Préférences"** Permet l'édition des préférences de
   l'utilisateur. Voir `Gérer ses
   préférences <01-premiers-pas/03_Utiliser_GLPI/04_Gérer_ses_préférences.md>`__.
   Pour modifier les données de cet onglet vous devez avoir les droits
   de modifier la configuration générale.

-  **`Onglet "Eléments
   utilisés" <Les_différents_onglets/Onglet_Eléments.md>`__**
   L'utilisateur est défini dans le champ *Utilisateur* de l'objet ou
   est membre du groupe défini dans le champ *Groupe* de l'objet.

-  **`Onglet "Eléments
   gérés" <Les_différents_onglets/Onglet_Eléments.md>`__** L'utilisateur
   est défini dans le champ *Responsable technique* de l'objet ou est
   membre du groupe défini dans le champ *Groupe technique* de l'objet.

.. include:: ../../onglets/tickets.rst

Pour les utilisateurs, en plus de lister les tickets créés par
l'utilisateur, vous pouvez directement créer un ticket d'incident depuis
cet onglet. Dans ce cas, l'utilisateur sera défini automatiquement comme
Demandeur.

.. include:: ../../onglets/documents.rst

-  **`Onglet
   "Réservations" <Les_différents_onglets/Onglet_Réservations.md>`__**
   Liste les réservations passées, en cours et à venir de l'utilisateur.
   Vous devez avoir le droit de lecture sur l'administration des
   réservations pour voir cet onglet.

-  **Onglet "Synchronisation"** Cet onglet apparaît si vous avez les
   droits "Mise à jour auth et sync" dans votre profil. Il permet de
   changer la méthode d'authentification d'un utilisateur et de forcer
   sa synchronisation.

-  **`Onglet "Liens" <Les_différents_onglets/Onglet_Liens.md>`__** Cet
   onglet liste les liens externes définis pour les utilisateurs.

-  **`Onglet
   "Historique" <Les_différents_onglets/Onglet_Historique.md>`__**

.. include:: ../../onglets/debug.rst

.. include:: ../../onglets/all.rst

Les différentes actions
-----------------------

-  **`Ajouter un
   utilisateur <07_Module_Administration/02_Utilisateurs/02_Importer_un_utilisateur.md>`__**
-  **`Modifier les données d'un
   utilisateur <Les_différentes_actions/Modifier_un_objet.md>`__**
-  **Modifier la méthode d'authentification d'un utilisateur**
   S'effectue depuis l'onglet "Synchronisation" (voir ci-dessus)
-  **`Supprimer un
   utilisateur <Les_différentes_actions/Supprimer_un_objet.md>`__**
-  **`Associer un document à un
   utilisateur <Les_différentes_actions/Lier_un_document_à_un_objet.md>`__**
-  **`Associer un élément à un
   utilisateur <Les_différentes_actions/Onglet_Eléments.md>`__**
-  **`Associer un ticket à un
   utilisateur <Les_différentes_actions/Onglet_Tickets.md>`__**

--------------

**Sujet parent :** `Administrer les contrôles
d'accès <../glpi/access_control_intro.html>`__

**Sujet parent :** `Module
Administration <07_Module_Administration/01_Module_Administration.md>`__

.. |image| image:: docs/image/addUserAll.png

