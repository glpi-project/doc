Configurer les suivis par courriels et les alertes
==================================================

Les notifications de GLPI sont envoyées par courriel. Il est donc nécessaire de configurer la connexion à un serveur de messagerie.

>Important : Cette page de configuration est accessible aux utilisateurs possédant le droit de mettre à jour la configuration générale. Par défaut le suivi par courriel n'est pas activé.

![image](docs/image/configurationNotification.png)

Notification
------------
- **Activer le suivi par courriel** : permet d'activer le serveur de messagerie pour toutes les notifications y compris les alertes ; 
- **Ajouter des documents dans les notifications de ticket** : permet d'ajouter les liens URL vers les documents attachés à un ticket dans les notifications reçues.
  ***Remarque :** Les liens inclus dans les courriels utilisent comme adresse web de l'application celle qui est définit dans la configuration générale (voir [Onglet Configuration
Affichage](config_common_display.html "Cet onglet permet de personnaliser l'apparence générale de l'application.")).*

Ces 2 valeurs sont globales pour toutes les entités.

- **Courriel de l'administrateur** : adresse de messagerie de l'administrateur général de GLPI. Cette adresse est utilisée lorsque l'**Administrateur** est sélectionné en tant que destinataire d'une notification. C'est également cette adresse qui enverra les notifications émanant de GLPI. 
- **Nom de l'administrateur** : nom associé au courriel de l'administrateur ;
- **Courriel de réponse (si nécessaire)** : adresse de réponse à une notification émanant de GLPI. Dans le cas de l'utilisateur d'un collecteur de courriels, il est important de mettre l'adresse de ce collecteur afin que les réponses puissent être considérées comme nouveau suivi.
- **Nom de réponse (si nécessaire** : nom associé au courriel de réponse ;
- **Signature des messages** : texte ajouté à la fin de chaque notification. 

Ces 5 valeurs sont globales, mais peuvent être adaptées pour chaque entité (voir [configuration d'une entité](07_Module_Administration/04_Entités.md)).


Serveur de messagerie
---------------------
-  **Mode d'envoi des courriels** :
   1.  PHP : l'envoi est géré par la fonction mail() de PHP. Celle-ci est très souvent bloquée chez les hébergeurs ;
   2.  SMTP : envoi en utilisant le protocole SMTP ;
   3.  SMTP + SSL : envoi en utilisant le protocole SMTP, encapsulé dans un tunnel SSL ;
   4.  SMTP + TLS : envoi de courriels plus sécurisé que SMTP + SSL ;

-  **Hôte SMTP** : nom ou adresse IP du serveur de messagerie. Plusieurs serveurs peuvent être précisés en les séparant par un point virgule ;

-  **Port** : Numéro du port SMTP ; 

-  **Identifiant SMTP** (optionnel) : login de l'utilisateur autorisé à se connecter au SMTP (laisser vide pour les connexions anonymes) ;
    
-  **Mot de passe SMTP** (optionnel) : le mot de passe de l'identifiant défini ci-dessus. Il est possible d'effacer le mot de passe en cochant la case **effacer** puis de valider.


***Remarque :** Une fois que tous les paramètres nécessaires au bon fonctionnement des notifications sont enregistrés,  il est possible de tester la configuration en cliquant sur  le bouton : **Envoyer un courriel de test à l'administrateur**.*
 

--------
**Sujet parent :** [Configurer les notifications]((08_Module_Configuration/04_Notifications/01_Notifications.md) "Les notifications se configurent depuis le menu Configuration > Notifications")
