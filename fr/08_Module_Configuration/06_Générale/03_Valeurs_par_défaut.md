Valeurs par défaut
==================

Cet onglet permet de définir les préférences d'affichage appliquées par défaut à GLPI. Elles peuvent être modifiées par les utilisateurs dans leur session (voir [Gérer ses préférences](index.php?fr/02_Premiers_pas_avec_GLPI/03_Utiliser_GLPI/04_Gérer_ses_préférences.md)).

Personnalisation
----------------
![image](docs/image/personnalisation.png)

- **Langue** : langue d'affichage de GLPI.

- **Nombre de résultats par page** : nombre d'éléments affichés dans la liste des objets. La valeur indiquée ici ne peut dépasser la valeur maximale définie dans les options générales d'affichage.

- **Limite par défaut du nombre de caractères dans les listes déroulantes** : nombre de caractères par liste.

- **Afficher le nom complet pour le choix des intitulés arborescents** : affichage des éléments de la liste sous forme arborescente ou à plat.

- **Montrer les ID GLPI** : ajoute l'ID de l'élément à la suite de son nom.

- **Notifications pour mes changements** : recevoir les notifications pour les actions que l'utilisateur connecté à réalisées. Ce paramètre ne s'applique pas pour la création d'un ticket pour laquelle la notification est systématiquement envoyée (preuve de création).

- **Police pour l'export PDF** : police utilisée lors de la génération des fichiers PDF afin de l'adapter au jeu de caractères utilisé. 

- **Après la création, aller à l'élément créé** : après la création d'un élément, permet de paramétrer comment l'utilisateur est redirigé (vers l'élément créé ou vers le formulaire de création). Ce paramètre peut être très utile en cas de nombreuses saisies successives d'un même objet.

- **Format des dates** : format d'affichage de toutes les dates.

- **Format des nombres** : format d'affichage de tous les nombres.

- **Ordre d'affichage du nom complet** : permet de choisir l'ordre n'affiches des nom et prénom d'un utilisateur

- **Afficher les compteurs dans les onglet** : permet de visualiser directement depuis le nom de l'onglet s'il contient ou non des éléments.

- **Délimiteur CSV** : délimiteur utilisé au moment des exports.

- **Résultats à afficher sur la page d'accueil** : concerne le contenu des tableaux concernant les tickets, les problèmes et les changements. Si ce paramètre est mis à 0, seuls les titres de tableaux apparaitront mais vous pourrez accéder à leur contenu respectif en cliquant sur le nom du tableau (principe identique si le nombre défini est inférieur au nombre d'éléments).

- **Garder les composants à la suppression définitive d'un élément** : si un élément ayant des composants est purgé de la corbeille, conservation ou non des composants liés.

Assistance
----------
![image](docs/image/pref_assistance.png)

Les paramètres sont applicables à tous les objets du menu ***Assistance***.

- **Suivis privés par défaut** : pré-sélectionne le champ Privé d'un suivi.

- **Tâches privées par défaut** : pré-sélectionne le champ Privé d'une tâche.

- **Etat des tâches par défaut** : pré-sélection de l'état.

- **Pré-sélection comme technicien lors de la création de ticket** : la personne connectée sera automatique assigné au ticket. Cette variable n'est paramétrable que si l'utilisateur à le droit d'être en charge d'un ticket.

- **Couleurs des priorités** : utilisé dans l'interface depuis la liste des objets pour une meilleure visibilité .

- **Montrer les nouveaux tickets sur la page d'accueil** : si vous avez également le droit de voir tous les tickets, un tableau listant tous les tickets au statut Nouveau s'affichera dans l'onglet *Vue globale* de l'accueil.

- **Source par défaut des demandes** : valeur du champ dans un ticket.

- **Rafraichissement automatique de la liste des tickets (minutes)** : ce paramètre peut être utilise pour un technicien travaillant continuellement depuis a liste des tickets.

Progression liée à la date d'échéance
-------------------------------------
![image](docs/image/pref-duedate.png)

Permet de définir les couleurs qui seront appliquées dans la barre de progression d'un objet. 
Ces différents états dépendent des seuils paramétrés en pourcentage, en heures ou en jours.

---------
**Sujet parent :** [Gérer ses préférences](index.php?fr/02_Premiers_pas_avec_GLPI/03_Utiliser_GLPI/04_Gérer_ses_préférences.md)

**Sujet parent :** [Configurer les paramètres centraux](index.php?fr/08_Module_Configuration/06_Générale/01_Configurer_les_paramètres_centraux.md)
