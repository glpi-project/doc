:orphan:

Configurer les actions automatiques
===================================

Les actions automatiques se configurent depuis le menu Configuration >
Actions automatiques

Pour chaque action, il est possible de configurer :

-  **La fréquence d'exécution** ;
-  **Le statut** : Permet de désactiver si besoin l'action ;
-  **Le mode d'exécution** : Interne (déclenché par la navigation des
   utilisateurs, par défaut lors de l'installation standard) ou Externe
   (plus robuste mais nécessitant une configuration système) ;
-  **La plage horaires d'exécution** : Permet de désactiver certains
   traitements la nuit par exemple ;
-  **Le temps en jours de conservation des journaux** (de l'action
   automatique) : qui sont stockés dans la base de données.

L'interface permet aussi de réinitialiser la date d'exécution, de forcer
l'exécution, de consulter les statistiques et les journaux d'exécution.

L'action automatique **watcher** est une action qui surveille
l'exécution correcte des autres actions automatiques. Si une d'entre
elles se retrouve en erreur, une notification sera envoyée. Il faut donc
que le suivi par courriel soit activé (voir `Configurer les
notifications <config_notification.html>`__) ; les destinataires sont
paramétrables dans la notification **Crontask Watcher** (voir `Gérer les
notifications par entité <config_notification_notifications.html>`__).

-  **`Lancer les actions automatiques en ligne de
   commande <../glpi/config_crontaskcli.html>`__**
   L'ordonnanceur des tâches de GLPI peut-être appelé de manière
   externe, depuis la ligne de commande, en exécutant le fichier
   front/cron.php.

**Sujet parent :** `Module Configuration <../glpi/config.html>`__
