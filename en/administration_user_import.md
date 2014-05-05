Importer des utilisateurs depuis une source externe
===================================================

Si une source externe d'authentification est configurée, il devient
possible d'importer et de synchroniser les utilisateurs depuis celle-ci.
Pour la maintenance régulière de la base d'utilisateur, il est conseillé
d'utiliser les automatismes que permettent le script
ldap\_mass\_sync.php (voir [Importer et synchroniser depuis un annuaire
par
script](scripts_ldap_mass_sync.html "Un script permet l'import et la synchronisation à partir d'un annuaire.")).
Pour la gestion quotidienne, des mécanismes d'import manuel sont
accessibles depuis le menu Administration \> Utilisateurs .

Ajouter directement un utilisateur d'une source externe
-------------------------------------------------------

L'identifiant d'un utilisateur étant connu, GLPI permet de rechercher
l'utilisateur et d'importer ses informations d'authentification depuis
une source externe. Cette fonctionnalité se trouve dans la page Ajouter
directement un utilisateur d'une source externe, accessible depuis le
menu Administration \> Utilisateurs \> Depuis une source externe . Une
fois l'identifiant de connexion de l'utilisateur renseigné, ce dernier
est recherché dans les annuaires disponibles (bouton Ajouter annuaire
LDAP) ou dans les autres sources (bouton Ajouter autre).

Attention: si plus d'un utilisateur possède l'identifiant à rechercher,
alors l'ajout n'est pas effectué.

Les informations personnelles des utilisateurs peuvent être importées,
sous certaines conditions, depuis un annuaire LDAP ; les utilisateurs
importés depuis un serveur de messagerie ne possèdent pas d'informations
personnelles.

Il est important de noter que dans le cas d'une authentification sur un
annuaire de messagerie, aucune liste d'utilisateur à importer n'est
disponible.

Importer en masse des utilisateurs depuis un annuaire LDAP
----------------------------------------------------------

GLPI offre la possibilité de rechercher des utilisateurs de manière
avancée dans un annuaire LDAP. Ceci se fait depuis la page Import en
masse d'utilisateurs d'un annuaire LDAP , disponible depuis le menu
Administration \> Utilisateurs \> Liaison annuaire LDAP \> Importation
de nouveaux utilisateurs . L'interface est accessible aux profils ayant
le droit Ajout d'utilisateur depuis une source externe en écriture et
restreinte à la liste d'entité provenant des habilitation de la personne
connecté sur GLPI. Voir [Manage user's
profiles](administration_profile.html "In GLPI, profiles are managed from the menu Administration > Profiles.").

Une fois l'entité choisie (si GLPI est en mode multi-entités, ou si la
personne se servant de l'interface possède des habilitation sur
plusieurs entités), une liste de critères apparaît, basée sur les
informations personnelles récupérées pour cet annuaire.

La syntaxe de recherche dans les champs est identique à celle du moteur
de recherche. Voir
[Rechercher](navigate_search.html "Rechercher des informations dans GLPI").

Pour limiter la recherche aux utilisateurs ajoutés ou synchronisés dans
l'annuaire depuis plus ou moins d'un certain nombre de jours ou de mois,
suivre le lien Activer le filtrage par date et sélectionner les dates et
heures de début et/ou de fin.

Note: Cette option, couplée à des recherches sur certains critères,
permet de contourner la limite physique d'enregistrement renvoyés par
une requête LDAP par l'annuaire. Voir [Authentifier des utilisateurs à
partir d'annuaires
LDAP](config_auth_ldap.html "L'interface de GLPI avec les annuaires LDAP se configure depuis le menu Configuration > Authentification > Annuaire LDAP.").

Une interface avancée est disponible aux utilisateurs ayant le droit de
configuration ou le droit de gérer les entités dans leurs profils.
Contrairement à l'interface simple, aucun filtrage des résultats par
entité n'est effectué : les seuls critères disponibles sont l'annuaire,
le basedn et le filtre de recherche des utilisateurs. Voir [Manage
user's
profiles](administration_profile.html "In GLPI, profiles are managed from the menu Administration > Profiles.").

Note: l'interface simplifiée ne nécessite pas les droits d'écriture sur
les utilisateurs. Un gestionnaire de parc ou technicien peut donc
importer des utilisateurs depuis l'annuaire, sans avoir accès à ceux-ci
après coup. Cette option est par exemple intéressante dans le cadre d'un
centre d'appel, ou d'un annuaire pour lequel on ne souhaite pas importer
les utilisateurs en masse.

Note: pour être en mesure d'utiliser l'interface simplifiée, il faut
configurer les paramètres LDAP concernant l'entité dans Administration
\> Entité (association d'un annuaire à une entité) ou avoir défini un
annuaire par défaut.

Attention: l'interface avancée est réservée aux administrateurs ayant
des connaissances du fonctionnement d'un annuaire LDAP et de la gestion
des utilisateurs GLPI.

Une fois importé depuis un annuaire, GLPI stocke l'identifiant unique
LDAP de l'utilisateur (son distinguedName ou DN), en plus de son
identifiant de connexion. Ceci permet de gérer la mise à jour ce dernier
lorsqu'il n'y a pas de modification du DN. Par exemple, si l'idenfiant
de connexion est l'email, GLPI sera le mettre à jour sans recréer de
nouvel utilisateur lors d'un éventuel changement.
