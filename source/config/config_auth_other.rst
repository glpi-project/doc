:orphan:

Configurer les autres méthodes d'authentification externe
=========================================================

L'interfaçage de GLPI à des systèmes permettant de faire de
l'authentification unique se configure depuis le menu Configuration >
Authentification > Autre méthode d'authentification .

GLPI permet de déléguer l'authentification des utilisateurs à des
systèmes externes afin d'obtenir une authentification unique (SSO pour
Single Sign On).

Dans ce cadre, le moteur de contrôle d'accès sera appliqué afin de
savoir s'ils ont au moins une habilitation. Si au moins un annuaire LDAP
est configuré, GLPI fera des requêtes sur l'annuaire (comme dans le
mécanisme standard d'authentification). Si l'utilisateur se connectant
n'est pas encore connu dans l'application, tous les annuaires seront
testés afin de réaliser l'import.

Serveur central d'authentification (CAS)
----------------------------------------

La configuration du serveur CAS est composée de l'adresse du serveur
d'authentification et de son port (par défaut 443). Un répertoire de
base peut être spécifié si besoin. L'adresse web de retour à la
déconnexion permet de rediriger l'utilisateur vers une page spécifique
lorsque celui-ci se déconnecte de GLPI.

Important : une fois activée, chaque authentification est redirigée vers
le serveur CAS. Afin de pouvoir se connecter avec un utilisateur local
(donc défini et authentifié sur la base GLPI), il faut se connecter en
ajoutant ?noAUTO=1 à l'URL.

Remarque : L'extension CURL ou DOMXML du parseur PHP est nécessaire pour
l'authentification CAS.

Authentifier les utilisateurs par certificat x509
-------------------------------------------------

La variable Attribut adresse de messagerie pour x509 indique à GLPI de
rechercher la valeur de cet attribut dans la variable de requête HTTP
nommée SSL\_CLIENT\_S\_DN, passée par le système d'authentification.

Il est possible de restreindre les valeurs acceptées pour les champs O,
OU et CN du certificat client. Afin de spécifier plusieurs valeurs pour
chaque champ, il suffit de séparer celles-ci par le symbole *$*.

Autres authentifications automatiques
-------------------------------------

GLPI peut se baser sur d'autres systèmes externes pour authentifier les
utilisateurs, comme par exemple :

-  une authentification basique Apache
-  une authentification sur domaine Windows
-  une authentification provenant d'un serveur d'authentification comme
   LemonLDAP::NG, Shibboleth...

Le fonctionnement est simple : lorsque l'utilisateur désire accéder à
GLPI, celui-ci vérifie la présence d'une variable dans les entêtes HTTP.
Si celle-ci est présente, l'authentification est supposée effectuée. On
peut mapper les *données transmises par le système d'authentification*
avec les *champs du compte utilisateur de GLPI* (nom, prénom, email,
langue...). Pour finir, les contrôles d'habilitations sont réalisés. Une
option permet de supprimer le domaine de l'utilisateur de la variable
avant contrôle d'accès.

Remarque : La liste des valeurs possibles pour les entêtes est
configurable : les plus communes sont fournies mais il est possible d'en
ajouter, voir `Configurer les intitulés <config_dropdown.html>`__.

**Sujet parent :** `Configurer la gestion
d'identité <../glpi/config_auth.html>`__
