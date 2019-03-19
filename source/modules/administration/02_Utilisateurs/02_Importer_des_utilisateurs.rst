Importer des utilisateurs
=========================

Depuis la liste des utilisateurs, 3 options sont proposées pour ajouter
un utilisateur |image|.

-  |image| : ouvre un formulaire de création (identique à l'icone
   |image|). Cet icone apparaît si votre profil possède le droit de
   créer un utilisateur.

-  |image| : importer des utilisateurs depuis une source externe. Cet
   icone apparaît si votre profil possède le droit Utilisateur "Ajout
   externe". L'identifiant d'un utilisateur étant connu, GLPI permet de
   rechercher l'utilisateur et d'importer ses informations
   d'authentification depuis une source externe. Une fois l'identifiant
   de connexion de l'utilisateur renseigné, ce dernier est recherché
   dans les annuaires disponibles (bouton Import depuis les annuaires)ou
   dans les autres sources (bouton Import depuis les autres sources).

    Avertissement : si plus d'un utilisateur possède l'identifiant à
    rechercher, alors l'ajout n'est pas effectué.

Il est important de noter que dans le cas d'une authentification sur un
annuaire de messagerie, aucune liste d'utilisateur à importer n'est
disponible.

Les informations personnelles des utilisateurs peuvent être importées,
sous certaines conditions, depuis un annuaire LDAP ; les utilisateurs
importés depuis un serveur de messagerie ne possèdent pas d'informations
personnelles.

-  |image| : importer et synchroniser des utilisateurs depuis un
   annuaire LDAP. Cet icone apparaît si votre profil possède le droit
   Utilisateur "Ajout externe". GLPI offre la possibilité de rechercher
   des utilisateurs de manière avancée dans un annuaire LDAP.
   L'interface est restreinte à la liste d'entités provenant des
   habilitations de la personne connecté sur GLPI. Voir `Administrer les
   profils
   d'utilisateurs <07_Module_Administration/07_Profils/01_Profils.md>`__.
   Une fois l'entité choisie (si GLPI est en mode multi-entités, ou si
   la personne se servant de l'interface possède des habilitations sur
   plusieurs entités), une liste de critères apparaît, basée sur les
   informations personnelles récupérées pour cet annuaire. La syntaxe de
   recherche dans les champs est identique à celle du moteur de
   recherche. Voir
   `Rechercher <01-premiers-pas/03_Utiliser_GLPI/08_Rechercher.md>`__.
   Vous pouvez limiter la recherche aux utilisateurs ajoutés ou modifiés
   dans l'annuaire durant une période donnée en suivant le lien
   **Activer le filtrage par date**.

***Remarques :*** *- Pour être en mesure d'utiliser l'interface
simplifiée, il faut que les paramètres LDAP concernant l'entitéaient été
configués dans Administration > Entité (association d'un annuaire à une
entité) ou avoir défini un annuaire par défaut.* *- Cette option,
couplée à des recherches sur certains critères, permet de contourner la
limite physique d'enregistrement renvoyés par l'annuaire pour une
requête LDAP Voir `Authentifier des utilisateurs à partir d'annuaires
LDAP <config_auth_ldap.html>`__.* *- l'interface simplifiée ne nécessite
pas les droits d'écriture sur les utilisateurs. Un gestionnaire de parc
ou technicien peut donc importer des utilisateurs depuis l'annuaire,
sans avoir accès à ceux-ci après coup. Cette option est par exemple
intéressante dans le cadre d'un centre d'appel, ou d'un annuaire pour
lequel on ne souhaite pas importer les utilisateurs en masse.*

Il est également proposé un **Mode Expert** en suivant le lien à droite
dans le titre du tableau. Ce mode est disponible aux utilisateurs ayant
le droit de mettre à jour la configuration générale ou les entités dans
leurs profils. Contrairement à l'interface simple, aucun filtrage des
résultats par entité n'est effectué : les seuls critères disponibles
sont l'annuaire, le basedn et le filtre de recherche des utilisateurs.

    Avertissement : l'interface avancée est réservée aux administrateurs
    ayant des connaissances du fonctionnement d'un annuaire LDAP et de
    la gestion des utilisateurs GLPI.

Une fois importé depuis un annuaire, GLPI stocke l'identifiant unique
LDAP de l'utilisateur (son distinguedName ou DN), en plus de son
identifiant de connexion. Ceci permet de gérer la mise à jour ce dernier
lorsqu'il n'y a pas de modification du DN. Par exemple, si l'idenfiant
de connexion est l'email, GLPI saura le mettre à jour sans recréer de
nouvel utilisateur lors d'un éventuel changement.

Si une source externe d'authentification est configurée, il devient
possible d'importer et de synchroniser les utilisateurs depuis celle-ci.
Pour la maintenance régulière de la base d'utilisateur, il est conseillé
d'utiliser les automatismes que permettent le script
``ldap_mass_sync.php`` (voir `Importer et synchroniser depuis un
annuaire par script <scripts_ldap_mass_sync.html>`__). Pour la gestion
quotidienne, des mécanismes d'import manuel sont accessibles (voir
ci-dessus).

--------------

**Sujet parent :** `Gérer les
utilisateurs <07_Module_Administration/02_Utilisateurs/01_Utilisateurs.md>`__

.. |image| image:: docs/image/addUserAll.png
.. |image| image:: docs/image/addUser.png
.. |image| image:: docs/image/menu_add.png
.. |image| image:: docs/image/addUserExt.png
.. |image| image:: docs/image/addUserLdap.png

