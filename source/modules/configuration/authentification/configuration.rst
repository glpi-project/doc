Configure external authentication
=================================

Ce menu permet de configurer les paramètres généraux de l'intégration avec des sources externes d'authentification.

Afin de pouvoir utiliser ces sources externes d'authentification, il faut au préalable activer les extensions correspondantes dans la configuration de PHP. Il n'y a pas de limite quant au nombre de sources externes configurées dans l'application.

Pour utiliser la capacité de GLPI de créer à la volée des utilisateurs présents dans les sources externes d'authentification, il faut l'activer dans le menu Configuration \> Authentification \> Configuration. 

Figure 1. Menu de la configuration de l'authentification
![image](docs/image/authConfig.png)

Les annuaires LDAP permettent en outre de refuser la création des utilisateurs ne possédant pas d'habilitations. La suppression d'un utilisateur de l'annuaire peut aussi entraîner une action telle que la mise à la corbeille de l'utilisateur, la suppression de ses habilitations ou sa désactivation.
C'est également à ce niveau qu'est paramétré le fuseau horaire de GLPI

External authentication sources that can be used inside GLPI are:

*  :doc:`LDAP directories <ldap>`;
*  :doc:`emails servers <imap>`;
*  :ref:`CAS server <auth_cas>`;
*  :ref:`x509 certificate <auth_x509>`;
*  :ref:`delegate authentication to web server <auth_other>`;
