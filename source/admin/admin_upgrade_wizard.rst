:orphan:

Utiliser l'assistant de mise à jour
===================================

ooMettre à jour GLPIdddd

Lancement de la mise à jour
---------------------------

Pour débuter la mise à jour, faire pointer le navigateur web sur le
dossier racine de GLPI : `http:// <http://%3CADRESSE_GLPI%3E>`__.

Une procédure de mise à jour pas-à-pas démarre.

Choix de la langue (Select your language)
-----------------------------------------

La première étape consiste à choisir la langue dans laquelle se
déroulera l'installation. Pour une installation en "Français"
sélectionner Français puis valider.

Licence
-------

L'utilisation de GLPI est soumise à l'acceptation de la licence
d'utilisation GNU General Public Licence. Cette licence est proposée à
la lecture. Une fois la licence lue et acceptée, valider le formulaire.
Si ce n'est pas le cas, il est impossible d'accéder aux étapes
suivantes.

Début de l'installation : Installation ou mise à jour de GLPI
-------------------------------------------------------------

Cliquer sur Mise à jour.

Étape 0 : Vérification de la compatibilité de votre environnement avec l'exécution de GLPI
------------------------------------------------------------------------------------------

Cette étape va vérifier que le système satisfait les pré-requis à
l'installation. Si ce n'est pas le cas, il est impossible d'accéder aux
étapes suivantes et un message d'erreur explicite indique les actions à
réaliser avant d'essayer à nouveau. Si toutes les vérifications ont été
réalisées avec succès, valider le formulaire.

Etape 1 : Configuration de la connexion à la base de données.
-------------------------------------------------------------

Cette étape n'est présentée que si le fichier de configuration
(\*config/config\\\_db.php\*) n'est plus présent.

Les paramètres de connexion à la base de données sont demandés.

-  Serveur MySQL : saisir le chemin réseau d'accès au serveur. Par
   exemple : localhost, ou mysql.domaine.tld ;
-  Utilisateur MySQL : saisir le nom d'utilisateur ayant le droit de se
   connecter au serveur MySQL. Par exemple glpidbuser ;
-  Mot de passe MySQL : saisir le mot de passe associé à l'utilisateur
   défini précédemment.

Une fois que ces trois champs sont correctement remplis, valider le
formulaire. Si les paramètres sont invalides, un message d'erreur est
affiché, modifier les paramètres de connexion et essayer à nouveau.

Etape 2 : Sélection de la base de données
-----------------------------------------

Cette étape n'est présentée que si le fichier de configuration
(config/config\\\_db.php) n'est plus présent.

Une fois la connexion au serveur MySQL établie, il faut choisir la base
de données destinée à accueillir l'application GLPI, et la mettre à
jour.

Etape 3 : Migration de la base de données.
------------------------------------------

Cette étape effectue la mise à jour de la base de données. En cas
d'erreur, lire attentivement les informations. En fonction de la version
de GLPI à mettre à jour, un certain nombre d'écrans intermédiaires
seront proposés. Répondre aux questions posées en fonction de
l'organisation. L'assistant de mise à jour propose ensuite de procéder à
la mise à jour de l'ancien contenu de la base de données. Après avoir
cliqué sur Continuer, une barre de progression apparaît sur l'écran.

Important : Selon la taille de la base de données, cette procédure peut
être très longue (plusieurs minutes, voir plusieurs heures pour des
bases de plusieurs giga-octets). De même, il est possible que la barre
de progression reste un certain temps à 0% sans que cela ne soit le
symptôme d'un dysfonctionnement.

Etape 4 : La mise à jour de GLPI est maintenant terminée.
---------------------------------------------------------

Cette étape présente le récapitulatif de la procédure de mise à jour.
Lire attentivement ces informations et valider pour se connecter à
l'application.

**Sujet parent :** `Mettre à jour
GLPI <../glpi/admin_upgrade.html%20%22Il%20est%20nécessaire%20de%20mettre%20à%20jour%20régulièrement%20GLPI%20pour%20bénéficier%20des%20correctifs%20de%20sécurité%20et%20des%20nouvelles%20fonctionnalités.%22>`__
