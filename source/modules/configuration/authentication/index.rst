Authentication
==============

C'est ici que GLPI gère l'authentification et les informations personnelles des utilisateurs.

L'accès d'un utilisateur à GLPI est possible après que ces conditions aient été vérifiées :

#. envoi d'informations d'authentification par l'utilisateur ;
#. existence de l'identifiant de l'utilisateur ;
#. authentification de l'utilisateur ;
#. attribution d'habilitations à l'utilisateur.

GLPI utilise sa propre base interne d'utilisateurs. Ceux-ci sont soit créés depuis l'interface de l'application, soit importés depuis une ou plusieurs sources externes. Selon le type de source, l'import des utilisateurs peut se faire soit en masse, soit au fil de l'eau lors de la tentative de connexion d'un utilisateur non encore connu de GLPI.

Pour effectuer l'authentification, GLPI fait appel à une base de mots de passes interne, qui peut être complétée par une ou plusieurs sources externes d'authentification. L'utilisation de méthodes d'authentification externes permet de déléguer cette fonctionnalité à des systèmes tiers assurant la gestion d'identité. Voir [Configurer l'intégration avec les sources d'authentification
externes](08_Module_Configuration/09_Authentification/02_Configuration.rst) "Les paramètres généraux de l'intégration avec des sources externes d'authentification se configurent dans le menu Configuration > Authentification > Configuration.").

L'attribution des habilitations est décrite dans la section [Attribuer des habilitations à un utilisateur](07_Module_Administration/05_Règles/03_Habilitations_utilisateur.rst) "GLPI dispose d'un moteur d'habilitations dynamiques qui se base sur des sources externes d'authentification. Il est accessible depuis le menu Administration > Règles > Règles d'affectation d'habilitation à un utilisateur.").

.. note::

   La cinématique d'authentification est la suivante :

   #. l'utilisateur entre son identifiant et son mot de passe ;
   #. GLPI vérifie si l'utilisateur est déjà enregistré dans la base. S'il ne l'est pas :

      #. GLPI essaye les méthodes d'authentification les unes après les autres : la base interne, puis tous les annuaires LDAP et enfin les annuaires de messagerie ;
      #. lorsque l'authentification est réussie, l'utilisateur est créé dans la base interne, ainsi que sa méthode d'authentification ;
      #. si aucune source n'a pu authentifier l'utilisateur, celui-ci est redirigé vers une page lui indiquant que son identifiant ou mot de passe est incorrect ;

   #. Si l'utilisateur est déjà présent dans la base interne, ou une fois son identifiant créé :

      #. GLPI tente d'authentifier l'utilisateur en utilisant la dernière méthode d'authentification réussie (et uniquement celle-ci) ;
      #. si l'authentification a échoué, l'utilisateur est redirigé vers une page lui indiquant que son identifiant ou mot de passe est incorrect ;

   #. Le moteur d'habilitation est lancé avec les informations de l'utilisateur :

      #.  si le moteur a donné à celui-ci une ou plusieurs habilitations, alors l'utilisateur a accès à GLPI ;
      #.  si l'utilisateur ne se voit attribuer aucune habilitation, alors bien qu'étant inscrit dans la base GLPI, il ne peut se connecter à l'application.


Afin de pouvoir utiliser ces sources externes d'authentification, il
faut au préalable activer les extensions correspondantes dans la
configuration de PHP. Il n'y a pas de limite quant au nombre de sources
externes configurées dans l'application.

Pour utiliser la capacité de GLPI de créer à la volée des utilisateurs
présents dans les sources externes d'authentification, il faut l'activer
dans le menu **Configuration > Authentification**.
Les annuaires LDAP permettent en outre de refuser la
création des utilisateurs ne possédant pas d'habilitations. La
suppression d'un utilisateur de l'annuaire peut aussi entraîner une
action telle que la mise à la corbeille de l'utilisateur, la suppression
de ses habilitations ou sa désactivation.


-   **[Importer et synchroniser depuis un annuaire par
    script](../glpi/scripts_ldap_mass_sync.html)**\
    Un script permet l'import et la synchronisation à partir d'un
    annuaire.


.. toctree::
   :maxdepth: 1

   configuration
   ldap
   imap
   other
