:orphan:

Configurer les actions automatiques
===================================

L'action automatique **watcher** est une action qui surveille
l'exécution correcte des autres actions automatiques. Si une d'entre
elles se retrouve en erreur, une notification sera envoyée. Il faut donc
que le suivi par courriel soit activé (voir `Configurer les
notifications <08_Module_Configuration/04_Notifications/01_Configurer_les_notificationss.rst>`__"))
; les destinataires sont paramétrables dans la notification **Crontask
Watcher** (voir `Gérer les notifications par
entité <08_Module_Configuration/04_Notifications/04_Notifications.rst>`__).

Les différents onglets
----------------------

-  **Action automatique**

   Pour chaque action, il est possible de configurer :

   -  **La fréquence d'exécution** ;

   -  **Le statut** : permet de désactiver si besoin l'action ;

   -  **Le mode d'exécution** :

      -  GLPI : déclenché par la navigation des utilisateurs (par défaut
         lors de l'installation standard)
      -  CLI : plus robuste et plus régulier mais nécessitant une
         configuration système ;

   -  **La plage horaires d'exécution** : permet de désactiver certains
      traitements la nuit par exemple ;

   -  **Le temps en jours de conservation des journaux** (de l'action
      automatique) : qui sont stockés dans la base de données.

   L'interface permet aussi de réinitialiser la date d'exécution et de
   forcer manuellement l'exécution.

   Certaines actions automatiques peuvent avoir des paramètres
   particuliers, comme le maximum de courriels à envoyer à chaque fois
   pour l'action mailqueue. De même les plugins peuvent définir leur
   propres actions automatiques.

-  **Statistiques** Affiche les informations concernant l'exécution de
   cette tâche (nombre d'exécutions, date de début, durées minimaxale,
   maximale, moyenne et totale)

-  **Journaux** Liste les dernières exécution suivant le paramètre
   défini dans l'onglet *Action automatique* (voir ci-dessus). Un lien
   sur la date d'exécution permet d'avoir le détail d'une exécution
   précise.

Les différentes actions
-----------------------

-  **Désactiver une action automatique** : passer le statut à Désactivé
-  **Débloquer une action automatique** : dans certains cas, une cas
   automatiques peut se trouver bloquée (ex. arrêt de la base de données
   pour sauvegarde alors de l'action automatique controlant les
   réplicats est active). Dans ce cas, il suffit de cliquer sur la croix
   à droite du mot "en cours d'exécution"

-  | **`Lancer les actions automatiques en ligne de
     commande <../glpi/config_crontaskcli.html>`__**
   | L'ordonnanceur des tâches de GLPI peut-être appelé de manière
     externe, depuis la ligne de commande, en exécutant le fichier
     front/cron.php.

--------------

**Sujet parent :** `Module
Configuration <08_Module_Configuration/01_Module_Configuration.rst>`__
