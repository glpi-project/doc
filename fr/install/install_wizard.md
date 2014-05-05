Utiliser l'assistant d'installation
===================================

Utiliser l'assistant d'installation en ligne de GLPI

Pour débuter l'installation, faire pointer le navigateur web sur le
dossier racine de GLPI :
[http://<ADRESSE\_GLPI\>](http://<ADRESSE_GLPI>).

Lors de la première connexion à cette adresse, une procédure
d'installation pas-à-pas débute.

Choix de la langue (Select your language)
-----------------------------------------

La première étape consiste à choisir la langue dans laquelle se
déroulera l'installation. Pour installer en "Français", sélectionner
**Français** puis valider.

Licence
-------

L'utilisation de GLPI est soumise à l'acceptation de la licence
d'utilisation GNU General Public Licence. Cette licence est proposée à
la lecture. Une fois la licence lue et acceptée, valider le formulaire.
Si ce n'est pas le cas, il est impossible d'accéder aux étapes
suivantes.

Début de l'installation : Installation ou mise à jour de GLPI
-------------------------------------------------------------

Cliquer sur **Installation**.

Étape 0 : Vérification de la compatibilité de votre environnement avec l'exécution de GLPI
------------------------------------------------------------------------------------------

Cette étape va vérifier que le système satisfait les pré-requis à
l'installation. Si ce n'est pas le cas, il est impossible d'accéder aux
étapes suivantes et un message d'erreur explicite indique les actions à
réaliser avant d'essayer à nouveau. Si toutes les vérifications ont été
réalisées avec succès, valider le formulaire.

Etape 1 : Configuration de la connexion à la base de données.
-------------------------------------------------------------

Les paramètres de connexion à la base de données sont demandés.

-   **Serveur MySQL** : saisir le chemin réseau d'accès au serveur, par
    exemple : *localhost*, ou *mysql.domaine.tld* ;
-   **Utilisateur MySQL** : saisir le nom d'utilisateur ayant le droit
    de se connecter au serveur MySQL
-   **Mot de passe MySQL** : saisir le mot de passe associé à
    l'utilisateur défini précédemment.

Une fois que ces trois champs sont correctement remplis, valider le
formulaire. Si les paramètres sont invalides, un message d'erreur est
affiché, il faut modifier les paramètres de connexion et essayer à
nouveau.

Etape 2 : Création ou choix de la base de données et initialisation de celle-ci
-------------------------------------------------------------------------------

Une fois la connexion au serveur MySQL établie, il faut créer ou choisir
la base de données destinée à accueillir les données de l'application
GLPI puis l'initialiser.

Deux possibilités :

-   Une base destinée à accueillir les données de GLPI existe déjà :

    Sélectionner cette base dans la liste des bases affichées. Valider
    pour initialiser la base de données.

    ATTENTION :

    Le contenu de la base de données sélectionnée sera détruit lors de
    l'initialisation de celle-ci.

-   Pour créer une nouvelle base de données pour accueillir les données
    de GLPI :

    Sélectionner **Créer une nouvelle base de données**. Saisir le nom
    de la nouvelle base dans le champ texte prévu à cet effet. Valider
    pour créer la base de données.

    Important : Cette étape nécessite que l'utilisateur ait les droits
    nécessaires à la création d'une nouvelle base.

Etape 3 : Initialisation de la base de données.
-----------------------------------------------

Cette étape initialise la base de données avec les valeurs par défaut.
En cas d'erreur, lire attentivement les informations.

Etape 4 : L'installation de GLPI est maintenant terminée.
---------------------------------------------------------

Cette étape présente le récapitulatif de la procédure d'installation et
donne la liste des comptes utilisateurs créés. Lire attentivement ces
informations et valider pour effectuer la première connexion à
l'application.

Conseil : Les comptes utilisateurs par défaut sont les suivants :

*glpi/glpi* pour le compte administrateur

*tech/tech* pour le compte technicien

*normal/normal* pour le compte normal

*post-only/postonly* pour le compte post-only

Avertissement : Il faut bien entendu par la suite supprimer ou modifier
ces comptes par défaut pour des raisons évidentes de sécurité. Veiller
avant la suppression du compte glpi à créer un nouvel utilisateur avec
le profil super-admin.

**Sujet parent :** [Installer l'application
GLPI](../glpi/install.html "Installation de GLPI")
