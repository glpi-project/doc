Configurer la liaison LDAP pour les utilisateurs et les groupes
===============================================================

Données personnelles et synchronisation des groupes
---------------------------------------------------

**Les liaisons LDAP/GLPI**

Par défaut, elles sont initialisées avec quelques valeurs que l'on
retrouve dans une configuration LDAP classique. Le tableau ci-dessous
montre les correspondances entre les attributs d'une classe
inetOrgPerson et leur équivalent sur Active Directory.

Tableau 1.

Champ

Signification

Valeur LDAP inetOrgPerson

Valeur Active Directory

login name

nom de l'utilisateur

uid

samaccountname

email

adresse de messagerie de l'utilisateur

mail

mail

phone

numéro de téléphone

telephonenumber

telephonenumber

realname

nom

sn

sn

firstname

prénom

givenname

givenname

title

titre de la personne

title

title

type

type de la personne

employeetype

employeetype

language

langue courante de l'utilisateur

preferredlanguage

preferredlanguage

matricule

numéro d'identification de l'utilisateur

employeenumber

Remarque : Le paramètre *language* permet de synchroniser la langue de
l'utilisateur avec l'annuaire. Cette fonctionnalité peut être
intéressante dans une utilisation multilingue. Les formations de langues
acceptés sont de la forme: fr\_FR, fr ou Français. La liste exhaustive
des valeurs acceptées est disponible dans le fichier
*config/define.php*.

Remarque : Il est possible de mapper jusqu'à 4 adresses de messagerie.
La première sera l'adresse par défaut pour l'envoi des notifications.

Avertissement : Le nom des attributs LDAP sera stocké dans la base de
données en minuscule, même s'il a été entré en tenant compte de la
casse.

Conseil : Dans Active Directory, l'authentification d'un utilisateur
peut se faire de deux façons :

-  soit à l'ancienne mode Windows NT en utilisant le champ
   *samaccountname*
-  soit à la mode UPN en utilisant le champ *userprincipalname*.

Remarque : Lorsqu'un utilisateur est supprimé de l'annuaire, il est
possible de configurer GLPI pour effectuer une action (désactiver
l'utilisateur, le mettre à la poubelle, lui enlever ses habilitations).
Cette option de configuration est globale, et définie dans le menu
*Configuration > Authentification > Configuration authentification >
Action lorsqu'un utilisateur est supprimé de l'annuaire LDAP*.

Appartenance des utilisateurs à des groupes
-------------------------------------------

L'appartenance d'un utilisateur à un groupe dans GLPI peut être déduite
de l'annuaire, dont c'est le rôle. L'appartenance d'utilisateur à un
groupe est calculée à l'import de l'utilisateur dans GLPI, à chaque
connexion de l'utilisateur ou lorsque l'on force la synchronisation avec
l'annuaire.

Elle permet, par exemple, de créer dans l'annuaire des groupes de
techniciens, qui se traduiront dans GLPI par des profils particulier
pour ses membres. Les groupes peuvent être :

-  importés depuis l'annuaire LDAP dans GLPI (il faut aller dans
   **Administration > Groupes > Liaison LDAP**) ;
-  créés manuellement dans GLPI en précisant les paramètres LDAP.

En fonction de l'annuaire, l'information de l'appartenance d'un
utilisateur à un groupe est accessible de manière différente. GLPI peut
déduire celle-ci en en cherchant un attribut de l'objet utilisateur
et/ou en en cherchant un attribut d'un groupe.

Configuration d'un groupe
-------------------------

La correspondance entre un groupe de l'annuaire et son pendant dans GLPI
se fait à travers quelques paramètres disponibles dans la fiche d'un
groupe.

Dans le cas où l'on recherche l'appartenance d'un utilisateur à un
groupe dans l'objet utilisateur, les options suivantes sont utilisées.
Le type de recherche indique l'endroit dans lequel GLPI va trouver
l'appartenance. Le filtre pour la recherche des groupes indique le
filtre qui permet de cibler les objets dans lequel l'information sur
l'appartenance se trouve. L'utilisation du DN pour la recherche GLPI
doit chercher le DN complet du groupe ou si l'information récupérée
n'est que son CN.

Dans le cas d'une déduction de l'appartenance à un groupe en recherchant
dans l'objet groupe lui-même, il est nécessaire de remplir les
informations suivantes :

-  **Type de recherche** : endroit où aller trouver l'appartenance à un
   groupe ;
-  **Filtre pour la recherche dans les groupes** : filtre de recherche
   pour les groupes ;
-  **Utiliser le DN pour la recherche** : recherche de l'appartenance à
   un groupe en utilisant le DN de l'utilisateur ou pas ;
-  **Attribut utilisateur indiquant ses groupes** : dans quel attribut
   du groupe recherche l'utilisateur ;
-  **Attribut des groupes contenant les utilisateurs** : dans quel
   attribut de l'utilisateur recherche l'appartenance à un groupe.

**Exemples de groupes**

Dans un annuaire LDAP classique, il faudra choisir laquelle des 2
méthodes est adaptée en fonction des objets utilisés :

-  recherche dans un groupe (par exemple un *groupOfNames*) ;
-  recherche dans un utilisateur (si on utilise son propre type d'objet
   par exemple).

Dans un annuaire Active Directory, il est possible de rechercher des 2
manières :

-  Dans un utilisateur on cherche le DN du groupe dans l'attribut
   *memberOf* ;
-  Dans un groupe on cherche le DN de l'utilisateur dans l'attribut
   *member*.

Remarque : Le paramètre de configuration **Utiliser le DN pour la
recherche** est important. Par défaut il est sur “Oui”, mais il y a des
cas où il doit être mis à “non”. Par exemple, lors de l'utilisation d'un
objet *posixGroup*, on ne stocke pas le DN de l'utilisateur mais juste
son uid.

Remarque : Un objet groupe doit forcément contenir un attribut CN, qui
sera utilisé comme nom du groupe dans GLPI. En particulier, une OU n'est
pas un groupe !

Exemple de configuration avec un annuaire OpenLDAP dans lequel
l'association des utilisateurs aux groupes est renseignée dans les
groupes avec l'attribut multi-valué memberUid :

-  **Type de recherche** : Dans les groupes ;
-  **Filtre pour la recherche dans les groupes** :
   *(objectClass=posixGroup)* ;
-  **Attribut des groupes contenant les utilisateurs** : *memberuid* ;

**Cas particulier : faire correspondre un groupe GLPI avec une "OU LDAP"
(Organizational Unit)**

Il est possible d'affecter un utilisateur dans un groupe en analysant
l'OU du user, présente dans son DN. Pour ce faire il faut indiquer, dans
la configuration de l'annuaire :

-  **Type de recherche** : “dans les utilisateurs” ou “Utilisateurs et
   groupes” ;
-  **Attribut utilisateur indiquant ses groupes**: indiquer “dn”.

Dans la définition du groupe :

-  **Attribut utilisateur indiquant ses groupes** : indiquer “ou” ;
-  **Valeur LDAP** : indiquer l'ou que vous désirez (respectez bien la
   casse !).

Remarque :

Outre la bonne configuration de l'authentification externe, il faut
s'assurer que l'utilisateur configuré dans GLPI pour lire les
informations de l'AD possède des droits en lecture de la propriété
memberOf sur les objets Users de l'AD.

Ajout de cette possibilité :

-  Ouvrir les propriétés de la racine (On peut restreindre à une OU) de
   son annuaire dans ADSI Edit (ici DC=mondomaine,DC=fr) ;
-  Aller dans les propriétés avancées de sécurité. Ajouter l'utilisateur
   GLPI comme suit :

.. figure:: ../image/ad_ldap_group.png
   :alt: image

   image

Automatiser l'import via un script
----------------------------------

Pour importer les nouveaux comptes AD dans GLPI, on peut utiliser le
script d'import automatique GLPI ainsi qu'une tâche planifiée du système
d'exploitation. Le script d'import est présent dans le dossier script de
GLPI (*ldap\_mass\_sync.php*).

**Les arguments du script**

Le script a besoin d'arguments pour fonctionner (l'identifiant du
serveur et l'action à effectuer).

L'identifiant du serveur se trouve dans l'entête du formulaire du
serveur LDAP dans **Configuration >Authentification > Annuaire LDAP**.

Pour l'action, 3 choix sont disponibles : 1 pour synchroniser et 0 pour
importer et 2 pour tout resynchroniser, même si aucune modification ne
s'est produite.

**Tache planifiée Windows**

-  Création d'un fichier BAT :

.. code:: codeblock

    REM Placer vous dans le dossier ou se trouve le script

    REM Go to the folder where is the script.

    cd “C:\xampp\htdocs\glpi\scripts”

    REM Exécuter php.exe avec le script

    REM Run php.exe and launch script

    “C:\xampp\php\php.exe” ldap_mass_sync.php –server_id=2 action=0 

-  Ensuite création d'une tache planifiée Windows.

**Sujet parent :** `Configurer la gestion
d'identité <../glpi/config_auth.html>`__
