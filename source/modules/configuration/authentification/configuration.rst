Sources d'authentification externes
===================================

Ce menu permet de configurer les paramètres généraux de l'intégration avec des sources externes d'authentification.

Afin de pouvoir utiliser ces sources externes d'authentification, il faut au préalable activer les extensions correspondantes dans la configuration de PHP. Il n'y a pas de limite quant au nombre de sources externes configurées dans l'application.

Pour utiliser la capacité de GLPI de créer à la volée des utilisateurs présents dans les sources externes d'authentification, il faut l'activer dans le menu Configuration \> Authentification \> Configuration. 

Figure 1. Menu de la configuration de l'authentification
![image](docs/image/authConfig.png)

Les annuaires LDAP permettent en outre de refuser la création des utilisateurs ne possédant pas d'habilitations. La suppression d'un utilisateur de l'annuaire peut aussi entraîner une action telle que la mise à la corbeille de l'utilisateur, la suppression de ses habilitations ou sa désactivation.
C'est également à ce niveau qu'est paramétré le fuseau horaire de GLPI

Les sources d'authentification externes prises en charges par GLPI sont les suivantes :

-   annuaire LDAP ; voir [Authentifier des utilisateurs à partir d'annuaires LDAP](08_Module_Configuration/09_Authentification/03_Annuaires_LDAP.rst "L'interface de GLPI avec les annuaires LDAP se configure depuis le menu Configuration > Authentification > Annuaires LDAP.");
-   serveur de messagerie ; voir [Authentifier des utilisateurs à partir
    de serveurs de
    messagerie](config_auth_imap.html "L'interfaçage de GLPI avec des serveurs de messagerie comme source d'authentification se configure depuis le menu Configuration > Authentification > Serveurs de messagerie.");
-   serveur CAS ; voir [Configurer les autres méthodes
    d'authentification
    externe](config_auth_other.html "L'interfaçage de GLPI à des systèmes permettant de faire de l'authentification unique se configure depuis le menu Configuration > Authentification > Autre méthode d'authentification.");
-   certificat x509 ; voir [Configurer les autres méthodes
    d'authentification
    externe](config_auth_other.html "L'interfaçage de GLPI à des systèmes permettant de faire de l'authentification unique se configure depuis le menu Configuration > Authentification > Autre méthode d'authentification.");
-   authentification déléguée au serveur web; voir [Configurer les
    autres méthodes d'authentification
    externe](config_auth_other.html "L'interfaçage de GLPI à des systèmes permettant de faire de l'authentification unique se configure depuis le menu Configuration > Authentification > Autre méthode d'authentification.");
