Annuaires LDAP
==============

GLPI s'interface avec un (ou plusieurs) :term:`Annuaire LDAP` afin d'authentifier les utilisateurs, de contrôler leur accès, de récupérer leurs informations personnelles et d'importer des groupes.

Tous les annuaires compatibles LDAP v3 sont supportés par GLPI. C'est donc aussi le cas pour l':term:`Annuaire Active Directory` de Microsoft. Il n'y a pas de limite quant au nombre d'annuaires renseignés : bien entendu plus le nombre est élevé, plus la recherche d'un nouvel utilisateur à authentifier peut être longue.

Il est possible d'importer et de synchroniser les utilisateurs de 2 manières :

* au fil de l'eau : à la première connexion, l'utilisateur est créé dans GLPI. A chaque login, ses informations personnelles sont synchronisées avec l'annuaire. Dans le cas où les collecteurs sont utilisés, une adresse de messagerie inconnue sera recherchée dans l'annuaire pour créer l'utilisateur associé ;
* en masse : soit via l'interface web de GLPI, soit en utilisant le script fourni ; voir [Importer et synchroniser depuis un annuaire par script](scripts_ldap_mass_sync.html "Un script permet l'import et la synchronisation à partir d'un annuaire.").

.. warning::

   Si aucune configuration LDAP n'est visible (voir un message d'erreur sur cette partie) c'est que le module LDAP pour PHP n'est pas installé. 

   Sous Linux, installer le paquet ldap pour PHP (par exemple *php5-ldap* sur Debian), puis redémarrer le serveur web.

   Sous Windows il faut décommenter dans le fichier *php.ini* (fichier présent dans le répertoire *apache/bin*) la ligne *extension=php\_ldap.dll* puis redémarrer le serveur web.

Le processus d'authentification des utilisateurs est découpé en 3 parties : l'authentification, le contrôle d'accès et enfin la récupération des données personnelles.

Authentification LDAP
---------------------

Lors de la première connexion de l'utilisateur, GLPI va s'adresser à tous les annuaires jusqu'à trouver celui qui contient l'utilisateur. Si l'option permettant d'importer des utilisateurs depuis une source externe est active, alors celui-ci est créé et l'identifiant de la méthode de connexion et le serveur LDAP sont stockés en base de données.

Ensuite, à chaque login l'utilisateur est authentifié sur l'annuaire dont l'identifiant est stocké dans GLPI. Les autres annuaires ne sont pas utilisés : si un utilisateur est désactivé dans l'annuaire qu'il a utilisé jusque là pour se connecter, il ne peut se connecter avec une autre source d'authentification.

Contrôle d'accès
----------------

Le contrôle d'accès est l'attribution d'habilitations à un utilisateur.
Même si un utilisateur est authentifié sur un annuaire il n'est pas forcément habilité à se connecter à GLPI.

Ce mécanisme repose sur l'utilisation de règles d'affectations d'habilitations.

Les différents onglets
----------------------

Annuaire LDAP
~~~~~~~~~~~~~

.. image:: images/ldap.png
   :alt: Annuaire LDAP
   :align: center
   :scale: 50%

.. note::

   Il existe un modèle de pré-configuration Active Directory, qui pré-remplit un certain nombre de champs. Celui-ci a été mis en place afin de faciliter la configuration GLPI-AD.

   Pour le charger, cliquer sur le lien **Active Directory** lors de l'ajout d'un annuaire. Le lien **Valeur(s) par défaut** réinitialise la saisie.

* **serveur par défaut** : si vous avez plusieurs serveurs LDAP de paramétrés, vous ne pouvez définir qu'un seul serveur par défaut. Le fait de choisir ce paramètre le supprime du serveur sur lequel il était précédemment paramétré ;
* **serveur** et **port** : représentant  l'adresse de l'annuaire LDAP ;
* **basedn** : emplacement de l'annuaire à partir duquel les recherches et lectures seront effectuées ;

   .. note::

      Le `basedn` doit être renseigné sous la forme du DN complet de l'utilisateur. Par exemple ``CN=glpiadmin,DC=mondomaine`` si le compte dans l'annuaire pour GLPI est `glpiadmin`.

* **DN du compte** : identifiant de connexion à l'annuaire LDAP (dans le cas d'un accès non anonyme) ;
* **Mot de passe du compte** : mot de passe correspondant (dans le cas d'un accès non anonyme). Il est possible d'effacer le mot de passe en cochant la case **effacer** puis de valider ;
* **filtre de connexion** : permet de restreindre la recherche de personnes dans l'annuaire. Par exemple, si seul un ensemble restreint de personnes de l'annuaire ont le droit de se connecter à GLPI, il faut mettre en place une condition pour restreindre la recherche à ces personnes.

   On peut citer les exemples de filtres suivants :

   * un filtre classique LDAP peut être : ``(objectclass=inetOrgPerson)``
   * pour Active Directory utiliser le filtre suivant, qui ne renvoie que les utilisateurs non désactivés (car les machines sont aussi  considérées comme des utilisateurs par AD) : ``(&(objectClass=user)(objectCategory=person)(!(userAccountControl:1.2.840.113556.1.4.803:=2)))``

    Il faut noter que ce filtre est automatiquement rempli lorsque le modèle de pré-configuration Active Directory est sélectionné.

* **Champ de l'identifiant** : nom du champ dans l'annuaire LDAP correspondant à l'identifiant de l'utilisateur (par exemple, ``uid`` sur un annuaire LDAP, ``samaccountname`` sur un annuaire AD) ;
* **Champ de synchronisation** : nom du champ utilisé pour la synchronisation. Ce champ doit identifier de manière unique l'utilisateur, il permet de prendre en compte le cangement de login (par exemple ``employeeuid`` sur un LDAP ou ``objectguid`` pour un AD).

.. warning::

   Ne pas oublier d'activer votre annuaire et de le définir l'annuaire par défaut si vous avez plusieurs annuaires

**Base DN et utilisateur authentifié**

Attention, le *rootdn* et le *basedn* doivent être écrits sans espaces après les virgules. De plus, la casse est importante.

Exemple de rootdn :

* ``cn=Admin, ou=users, dc=mycompany`` : incorrect
* ``cn=Admin,ou=users,dc=mycompany`` : correct

Pour Active Directory, si on utilise le `userprincipalname` au lieu du `samaccountname` on peut avoir un `rootdn` sous la forme `prenom.nom@domaine.fr`.

Les paramètres à entrer sont très simples, par exemple :

* hôte : `ldap.mycompany.fr`
* basedn : `dc=mycompany,dc=fr`

Et cela doit suffire si la recherche anonyme est permise. Dans le cas contraire, et si tous les utilisateurs ne sont pas positionnés au sein
du même DN, il vous faut spécifier le DN d'un utilisateur autorisé et son mot de passe : rootdn/Pass. Pour Active Directory, il est
obligatoire de renseigner un compte qui a le droit de s'authentifier sur le domaine.

En tentant de se connecter à l'annuaire grâce à un browser LDAP, il est possible de tester ces paramètres. Il en existe beaucoup, mais on peut
citer :

* *LdapBrowser Editor* (logiciel libre écrit en Java, et donc multi-plateforme)
* *ADSIedit* pour Active Directory. Cet outil se trouve sur les supports tools/outils supplémentaires du CD d'installation de Windows Server.

.. note::

   Si certains des utilisateurs ont des restrictions de connexion à certaines machines configurées dans leur profil AD, l'erreur suivante est possible lors d'une tentative de login sur la page d'accueil de GLPI : **Utilisateur non trouvé ou plusieurs utilisateurs identiques trouvés**. La solution consiste à ajouter le serveur hébergeant l'AD à la liste des PC sur lesquels l'utilisateur peut se connecter.

Tester
~~~~~~

Permet de tester la configuration définie dans l'onglet Annuaire LDAP.

Le message **Test de connexion réussi** indique que GLPI a pu se connecter à l'annuaire LDAP avec les informations renseignées (hôte, port, compte utilisateur).

Il reste désormais à importer les utilisateurs. Pour cela, il faut bien vérifier les autres paramètres (filtre de connexion, champs de login, etc).

Utilisateurs
~~~~~~~~~~~~

Permet de configurer comment va être effectué le lien entre les champs de l'annuaire et ceux de GLPI. Pour chaque champ de GLPI (nom, prénom, image...) est associé un champ de l'annuaire.

.. image:: images/ldap-users.png
   :alt: Configuration LDAP des utilisateurs
   :align: center
   :scale: 50%

Groupes
~~~~~~~

Permet de configurer la méthode de stockage des groupes au niveau de l'annuaire.

.. image:: images/ldap-groups.png
   :alt: Configuration LDAP des groupes
   :align: center
   :scale: 50%

Informations avancées
~~~~~~~~~~~~~~~~~~~~~

.. image:: images/ldap-users.png
   :alt: Configuration LDAP des utilisateurs
   :align: center
   :scale: 50%

Dans le cas où l'heure de la machine hébergeant l'annuaire LDAP n'est
pas dans le même fuseau horaire que celui de GLPI, il faut modifier la
variable **Fuseau horaire** afin d'ajuster le délai : en effet, cela
peut provoquer des résultats erronés dans la liste des utilisateurs à
synchroniser.

**Connexion LDAP sécurisée**

GLPI gère la connexion sécurisée à un annuaire LDAP à travers une
connexion SSL (aussi appelé LDAPS). Il suffit de rajouter devant le nom
de l'hôte (ou son IP) *ldaps://*. Ainsi que de changer le port (par
défaut 636). Par exemple l'accès en LDAPS en local donnera : *Hôte :
ldaps://127.0.0.1 Port : 636*

**Limite du nombre d'enregistrement retournés (sizelimit)**

Il existe souvent deux limites sur le nombre maximum d'enregistrements
retournés par une requête LDAP :

* la limite du client (définie par exemple sur Debian/Ubuntu dans ``/etc/ldap/ldap.conf``)
* la limite imposée par le serveur : si la limite définie par le client est supérieure à la limite serveur, c'est cette dernière qui prend le dessus.

.. warning::

   Si la limite est atteinte l'option de comportement lors de la suppression d'un utilisateur de l'annuaire ne peut fonctionner. De plus, GLPI affichera un message d'avertissement lors d'un import ou d'une synchronisation.

Avec PHP 5.4 ou supérieur, il est désormais possible de contourner la limitation du sizelimit en activant, dans l'onglet *Informations
avancées*, la **pagination des résultats**. Dans ce mode, PHP va requêter l'annuaire autant de fois que nécessaire et par tranche de X
résultats jusqu'à ce que l'ensemble des enregistrements soient renvoyés.

L'option **Taille des pages** permet d'ajuster cette valeur de même que **nombre maximum de résultats** définit la limite d'enregistrement à ne
pas dépasser lors d'une requête LDAP (afin par exemple d'éviter une erreur indiquant que PHP demande plus de mémoire que ce qui lui est
alloué).

.. note::

   Sur un annuaire OpenLDAP la limite par défaut est à 500 enregistrements, sur un Active Directory elle est de 1000.

   Sur un Active directory il est possible de modifier la valeur du `MaxPageSize` grâce aux commandes suivantes (attention cette modification est globale à tout l'annuaire) :

   .. code-block::

      C:> ntdsutil
      ntdsutil: ldap policies
      ldap policy: connections
        server connections: connect to server 192.168.1.1 ( here a few messages regarding connectivity are displayed)
      server connections : q
      ldap policy : show values ( here we will see all the values including MaxPageSize which is 1000 currently)
      ldap policy : set maxpagesize to 5000
      ldap policy : commit changes
      ldap policy : q
      ntdsutil : q

Réplicats
~~~~~~~~~

Si un annuaire LDAP n'est pas accessible, les utilisateurs ne pourront plus se connecter à GLPI.

Afin d'éviter cette situation, des réplicats peuvent être déclarés : ils partagent la même configuration que le serveur qu'ils répliquent, mais sont disponibles à une adresse différente.

L'utilisation des réplicats se fait uniquement dans le cas d'une perte de connexion à l'annuaire maître. L'ajout de réplicats se fait dans la fiche d'un annuaire, en renseignant un **nom** qui sera affiché dans GLPI, ainsi qu'un **nom d'hôte** et un **port**. Il n'y a pas de limite quant au nombre d'annuaires répliqués.

.. include:: ../../onglets/historique.rst

.. include:: ../../onglets/all.rst

Les différentes actions
-----------------------

Les annuaires LDAP ne proposent pas d'actions spécifiques, se reporter aux :doc:`actions communes <../generalites/actions>`.
