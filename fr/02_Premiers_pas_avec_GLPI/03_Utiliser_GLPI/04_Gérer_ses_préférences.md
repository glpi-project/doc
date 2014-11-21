Gérer ses préférences
=====================

Les préférences utilisateur se modifient depuis le menu Préférences.

Chaque utilisateur authentifié a la possibilité de modifier ses préférences.

Ce menu ***Préférences*** se situe tout en haut et à droite de l'interface, à partir de n'importe quelle page.

Onglet Principal
----------------
L'utilisateur peut ici modifier les informations personnelles usuelles : nom de famille, prénom, adresse de messagerie, numéros de téléphone, lieu et langue.

***Remarque :** Certains champs ne sont pas modifiables s'ils proviennent d'un annuaire LDAP.*

Il peut ajouter des adresses de messagerie et sélectionner l'adresse par défaut, qui sera utilisée pour  l'envoi des notifications.

Il peut aussi spécifier certains comportements par défaut de l'application, comme le profil et l'entité sélectionnés par défaut lors de la connexion à l'interface. Voir [Administrer les profils d'utilisateurs](administration_profile.html "Dans GLPI, administrer les profils peut se faire à partir du menu Administration > Profils.") et [Administrer les entités](index.php?fr/07_Module_Administration/04_Entités.md "Dans GLPI, administrer les entités peut se faire à partir du menu Administration > Entités.").
Il peut également désactiver les notifications pour les actions qu'il réalise.

L'utilisateur expérimenté peut aussi choisir de sortir du mode d'utilisation normal de l'application :

-   Dans le mode debug, GLPI affiche les erreurs, toutes les valeurs des variables, les requêtes SQL... Il est utile d'activer ce mode en cas de dysfonctionnement de GLPI. Un maximum d'informations peuvent ainsi être communiquées aux développeurs du projet GLPI. Ce mode permet également d'avoir des informations supplémentaires sur différents objets dans un onglet spécifique (notifications...).

Onglet Personnalisation
----------------------
Cet onglet permet de modifier les préférences générales d'affichage appliqué à un utilisateur donné. Ces paramètres sont prioritaires sur ceux définis dans la configuration générale.

![image](docs/image/pref-personnalisation.png)
- **Langue** : langue d'affichage de l'utilisateur
- **Nombre de résultats par page** : nombre d'éléments affichés dans la liste des objets
- **Limite par défaut du nombre de caractères dans les listes déroulantes** : nombre de caractères par liste => A REVOIR NE SEMBLE PLUS FONCTIONNER
- **Afficher le nom complet pour le choix des intitulés arborescents** : affichage des éléments de la liste sous forme arborescente ou non
- **Montrer les ID GLPI** : ajoute l'ID de l'élément à la suite de son nom
- **Notifications pour mes changements** : recevoir les notifications pour les actions que l'utilisateur à réalisées
- **Police pour l'export PDF** : police utilisée lors de la génération des fichiers PDF afin de l'adapter au jeu de caractères utilisé 
- **Après la création, aller à l'élément créé** : après la création d'un élément, permet de paramétrer comment l'utilisateur est redirigé (vers l'élément créé ou vers le formulaire de création). Ce paramètre peut être très utile en cas de nombreuses saisies successives d'un même objet.
- **Format des dates** : format d'affichage de toutes les dates
- **Format des nombres** : format d'affichage de tous les nombres
- **Ordre d'affichage du nom complet** : permet de choisir l'ordre n'affiches des nom et prénom d'un utilisateur
- **Afficher les compteurs dans les onglet** : permet de visualiser directement depuis le nom de l'onglet s'il contient ou non des éléments
- **Délimiteur CSV** : délimiteur utilisé au moment des exports
- **Résultats à afficher sur la page d'accueil** : concerne le contenu des tableaux concernant les tickets, les problèmes et les changements. Si ce paramètre est mis à 0, seuls les titres de tableaux apparaitront mais vous pourrez accéder à leur contenu respectif en cliquant sur le nom du tableau (principe identique si le nombre défini est inférieur au nombre d'éléments)
- **Garder les composants à la suppression définitive d'un élément** : si un élément ayant des composants est purgé de la corbeille, conservation ou non des composants liés.

![image](docs/image/pref-assistance.png)
- **Suivis privés par défaut** : présélectionne le champ Privé d'un suivi. 
- **Tâches privées par défaut** : présélectionne le champ Privé d'une tâche
- **Pré-sélection comme technicien lors de la création de ticket** : la personne connectée sera automatique assigné au ticket. Cette variable n'est paramétrable que si l'utilisateur à le droit d'être en charge d'un ticket.
- **Montrer les nouveaux tickets sur la page d'accueil** : Si vous avez également le droit de voir tous les tickets, un tableau listant tous les tickets au statut Nouveau s'affichera dans l'onglet *Vue globale* de l'accueil
- **Source par défaut des demandes** : valeur du champ dans un ticket
- **Rafraichissement automatique de la liste des tickets (minutes)** : je paramètre peut être utilise pour un technicien travaillant continuellement depuis a liste des tickets

![image](docs/image/pref-cle.png)
La section **Clé d'accès distant** permet de régénérer la clé de sécurité utilisée pour accéder aux flux privés offerts par GLPI.
Actuellement les flux ICAL et WEBCAL du planning sont protégés par cette clé de sécurité qui est intégrée à l'url.

![image](docs/image/pref-duedatee.png)

-------
**Sujet parent :** [Utiliser GLPI](index.php?fr/02_Premiers_pas_avec_GLPI/03_Utiliser_GLPI/01_Utiliser_GLPI.md)
