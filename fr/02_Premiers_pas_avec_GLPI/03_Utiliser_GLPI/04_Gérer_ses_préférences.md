Gérer ses préférences
=====================

Les préférences utilisateur se modifient depuis le menu Préférences.

Chaque utilisateur authentifié a la possibilité de modifier ses préférences.

Ce menu ***Préférences*** se situe tout en haut et à droite de l'interface, à partir de n'importe quelle page.

Onglet Principal
----------------
L'utilisateur peut ici modifier les informations personnelles usuelles : nom de famille, prénom, adresse de messagerie, numéros de téléphone, lieu et langue.

Remarque : Certains champs ne sont pas modifiables s'ils proviennent d'un annuaire LDAP.

Il peut ajouter des adresses de messagerie et sélectionner l'adresse par défaut, qui sera utilisée pour  l'envoi des notifications.

Il peut aussi spécifier certains comportements par défaut de l'application, comme le profil et l'entité sélectionnés par défaut lors de la connexion à l'interface. Voir [Administrer les profils
d'utilisateurs](administration_profile.html "Dans GLPI, administrer les profils peut se faire à partir du menu Administration > Profils.") et [Administrer les entités](index.php?fr/07_Module_Administration/04_Entités.md "Dans GLPI, administrer les entités peut se faire à partir du menu Administration > Entités.").
Il peut également désactiver les notifications pour les actions qu'il réalise.

L'utilisateur expérimenté peut aussi choisir de sortir du mode d'utilisation normal de l'application :

-   Dans le mode debug, GLPI affiche les erreurs, toutes les valeurs des variables, les requêtes SQL... Il est utile d'activer ce mode en cas de dysfonctionnement de GLPI. Un maximum d'informations peuvent ainsi être communiquées aux développeurs du projet GLPI. Ce mode permet également d'avoir des informations supplémentaires sur différents objets dans un onglet spécifique (notifications...).

Onglet Personnalisation
----------------------
Cet onglet permet de modifier les préférences générales d'affichage appliqué à un utilisateur donné.

-   Le nombre d'éléments à afficher par page de recherche et dans les
    listes peut être défini. La valeur indiquée ici ne peut dépasser la
    valeur maximale définie dans les options générales d'affichage.
-   Les listes déroulantes peuvent être affichées soit sous forme
    arborescente, soit à plat.
-   Les identifiants GLPI (ID) des objets, masqués par défaut, peuvent
    être affichés.
-   Le nombre d'éléments visibles à la sélection d'un onglet peut être
    activé. Cela permet de déterminer rapidement l'existence ou non
    d'une information liée à l'objet courant.
-   Les préférences d'affichage liées à la localisation se configurent
    ici : format des dates, format des nombres et ordre d'affichage des
    noms et prénoms, langue ainsi que le délimiteur CSV utilisé au
    moment des exports.
-   Le fait pour l'utilisateur de recevoir des notifications pour les
    actions qu'il réalise.
-   La font utilisée pour l'export PDF pour qu'elle soit adaptée au jeu
    de charactères utilisé.
-   A la création d'un élément, comment l'utilisateur est redirigé (vers
    l'élément créé ou vers le formulaire de création).

La section Assistance permet de modifier le comportement de la partie
assistance :

-   valeurs par défaut pour les nouveaux tickets (par exemple
    pré-sélection de l'utilisateur comme technicien lors de la création
    d'un ticket) et suivis,
-   choix de l'affichage des nouveaux tickets
-   rafraîchissement automatique de la liste des tickets.
-   couleurs de priorités utilisées dans l'interface

La section **Clé d'accès distant** permet de régénérer la clé de
sécurité utilisée pour accéder aux flux privés offerts par GLPI.
Actuellement les flux ICAL et WEBCAL du planning sont protégés par cette
clé de sécurité qui est intégrée à l'url.


-------
**Sujet parent :** [Utiliser GLPI](index.php?fr/02_Premiers_pas_avec_GLPI/03_Utiliser_GLPI/01_Utiliser_GLPI.md)
