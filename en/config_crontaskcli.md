Lancer les actions automatiques en ligne de commande
====================================================

L'ordonnanceur des tâches de GLPI peut-être appelé de manière externe,
depuis la ligne de commande, en exécutant le fichier front/cron.php.

Dans les exemples ci-dessous PHP doit être remplacé par le chemin vers
l'exécutable php (version 5) et GLPI par le chemin d'installation de
GLPI.

**Sélection des actions**

Les actions sélectionnées pour exécution seront celles vérifiant les
critères suivants :

-   Statut : Programmé
-   Mode d'exécution : CLI
-   Heure courante dans la plage horaire d'exécution
-   Date de prochaine exécution atteinte
-   Pas de verrou

Les actions de GLPI sont prioritaires sur les actions des plugins. Les
actions seront sélectionnées dans l'ordre de date de prochaine
exécution.

**Gestion des verrous**

La présence du fichier GLPI/files/\_cron/all.lock verrouille toutes les
actions.

La présence d'un fichier GLPI/files/\_cron/*nom*.lock verrouille
l'action *nom*.

**Appel simple :**

Ex : PHP GLPI/front/cron.php

Le nombre configuré d'actions, parmi la sélection, sera exécuté
successivement. (Voir [Configuration /
Système](config_common_sysinfo.html "Cet onglet permet de visualiser un résumé des informations sur les capacités du serveur web et de définir les informations de journalisation et d'erreurs à enregistrer ainsi que la politique des mots de passe à appliquer.")).

**Appel avec surcharge de la configuration**

Ex: PHP GLPI/front/cron.php 5

Le nombre choisi d'actions, parmi la sélection, sera exécuté
successivement.

**Lancement d'une action spécifique**

Ex : PHP GLPI/front/cron.php mailgate

L'action choisie, si elle fait partie de la sélection, sera exécutée.

Il est aussi possible d'indiquer le nom de plusieurs actions.

**Exécution forcée d'une action spécifque**

Ex : PHP GLPI/front/cron.php --force mailgate

L'action choisie, sans tenir compte des critères de sélection, si elle
n'est pas déjà en cours d'exécution, sera lancée.

**Exécution en mode debug**

Dans l'interace graphique, le mode debug est une préférence utilisateur.

En ligne de commande, l'ajout de l'option --debug permet d'activer ce
mode, et d'afficher les erreurs PHP.

**Automatisation sous Linux**

Le lancement régulier peut-être programmé soit dans une crontab système
(ex, fichier /etc/cron.d/glpi), en remplaçant *apache* par le nom de
l'utilisateur adapté (*www-data*sous debian et dérivé)

\*/2 \* \* \* \* apache PHP GLPI/front/cron.php

soit dans la crontab de l'utilisateur apache

\*/2 \* \* \* \* PHP GLPI/front/cron.php

Voir la page de manuel de crontab pour une description détaillée du
contenu de ce fichier

**Parent topic:** [Configurer les actions
automatiques](../glpi/config_crontask.html "Les actions automatiques se configurent depuis le menu Configuration > Actions automatiques")
