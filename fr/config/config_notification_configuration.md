Configurer les suivis par courriels et les alertes
==================================================

La configuration générale des notifications se fait depuis le menu
Configuration \> Notifications \> Configurer les suivis par courriels et
les alertes ;

Onglet "Configuration"
----------------------

Les notifications de GLPI sont envoyées par courriel. Il est donc
nécessaire de configurer la connexion à un serveur de messagerie.

Important : Cette page de configuration est accessible aux utilisateurs
possédant la permission *Configuration - écriture.* Par défaut le suivi
par courriel n'est pas activé : un bouton permet rendre utilisable cette
fonctionnalité.

-   **Serveur de messagerie**
    Remarque : Ce menu permet de renseigner les paramètres nécessaires
    au bon fonctionnement des notifications. Une fois la configuration
    générale validée, il est possible de tester celle-ci en cliquant sur
    le bouton : **Tester l'envoi de courriel vers l'administrateur**.
    -   **Utiliser le suivi par courriel** : active ou non la gestion
        des notifications dans GLPI. Cette configuration est globale à
        toute l'application ;
    -   **Ajouter des documents dans les notifications de ticket** :
        permet d'ajouter les liens URL vers les documents attachés à un
        ticket dans les notifications reçues.
    -   **Courriel de l'administrateur** : l'adresse de messagerie de
        l'administrateur général de GLPI. Cette adresse est utilisée
        lorsque l'**Administrateur** est sélectionné en tant que
        destinataire d'une notification ;
    -   **Nom de l'administrateur** : le nom de l'administrateur utilisé
        indique le nom associé au courriel de l'administrateur ;
    -   **Courriel de réponse (si nécessaire)** : adresse de messagerie
        utilisée lorsque l'utilisateur répond à une notification envoyée
        par l'administrateur ;
    -   **Signature des messages** : texte ajouté à la fin de chaque
        notification. Cette valeur est globale, mais peut être adaptée
        pour chaque entité (voir configuration d'une entité) ;
    -   **Adresse web de l'application** : indique le chemin d'accès web
        vers l'application GLPI. Ce paramètre est utilisé, entre autres,
        pour construire des liens vers des objets dans un courriel ;
    -   **Mode d'envoi des courriels** :
        1.  PHP : l'envoi est géré par la fonction mail() de PHP.
            Celle-ci est très souvent bloquée chez les hébergeurs ;
        2.  SMTP : envoi en utilisant le protocole SMTP ;
        3.  SMTP + SSL : envoi en utilisant le protocole SMTP, encapsulé
            dans un tunnel SSL ;
        4.  SMTP + TLS : envoi de courriels plus sécurisé que SMTP + SSL
            ;

    -   **Hôte(s) SMTP**[:Port] (séparateur ;) : nom ou adresse IP du
        serveur de messagerie. Il est possible de spécifier le port en
        ajoutant le caractère "deux points" puis le numéro. Plusieurs
        serveurs peuvent être précisés en les séparant par un point
        virgule ;
    -   **Identifiant (login) SMTP** (optionnel) : l'utilisateur
        autorisé à se connecter au SMTP (laisser vide pour les
        connexions anonymes) ;
    -   **Mot de passe SMTP** (optionnel) : le mot de passe de
        l'utilisateur. Il est possible d'effacer le mot de passe en
        cochant la case **effacer** puis de valider.

Remarque : Les liens inclus dans les courriels utilise comme adresse web
de l'application celle qui est définit dans la configuration générale
(voir [Onglet Configuration
Affichage](config_common_display.html "Cet onglet permet de personnaliser l'apparence générale de l'application.")).

**Sujet parent :** [Configurer les
notifications](../glpi/config_notification.html "Les notifications se configurent depuis le menu Configuration > Notifications ;")
