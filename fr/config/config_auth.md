Configurer la gestion d'identité
================================

La manière dont GLPI gère l'authentification et les informations
personnelles des utilisateurs se configure depuis le menu Configuration
\> Authentification .

L'accès d'un utilisateur à GLPI est possible après que ces conditions
aient été vérifiées :

1.  envoi d'informations d'authentification par l'utilisateur ;
2.  existence de l'identifiant de l'utilisateur ;
3.  authentification de l'utilisateur ;
4.  attribution d'habilitations à l'utilisateur.

GLPI utilise sa propre base interne d'utilisateurs. Ceux-ci sont soit
créés depuis l'interface de l'application, soit importés depuis une ou
plusieurs sources externes. Selon le type de source, l'import des
utilisateurs peut se faire soit en masse, soit au fil de l'eau lors de
la tentative de connexion d'un utilisateur pas encore connu de GLPI.

Pour effectuer l'authentification, GLPI fait appel à une base de mots de
passes interne, qui peut être complétée par une ou plusieurs sources
externes d'authentification. L'utilisation de méthodes
d'authentification externes permet de déléguer cette fonctionnalité à
des systèmes tiers assurant la gestion d'identité. Voir [Configurer
l'intégration avec les sources d'authentification
externes](config_common_auth.html "Les paramètres généraux de l'intégration avec des sources externes d'authentification se configurent dans le menu Configuration > Authentification > Configuration Authentification.").

L'attribution des habilitations est décrite dans la section [Attribuer
des habilitations à un
utilisateur](administration_rule_right.html "GLPI dispose d'un moteur d'habilitations dynamiques qui se base sur des sources externes d'authentification. Il est accessible depuis le menu Administration > Règles > Règles d'affectation d'entité et de droits.").

Remarque : La cinématique d'authentification est la suivante :

1.  l'utilisateur entre son identifiant et son mot de passe ;
2.  GLPI vérifie si l'utilisateur est déjà enregistré dans la base. S'il
    ne l'est pas :
    1.  GLPI essaye les méthodes d'authentification les unes après les
        autres : la base interne, puis tous les annuaires LDAP et enfin
        les annuaires de messagerie ;
    2.  lorsque l'authentification est réussie, l'utilisateur est créé
        dans la base interne, ainsi que sa méthode d'authentification ;
    3.  si aucune source n'a pu authentifier l'utilisateur, celui-ci est
        redirigé vers une page lui indiquant que son identifiant ou mot
        de passe est incorrect ;

3.  Si l'utilisateur est déjà présent dans la base interne, ou une fois
    son identifiant créé :
    1.  GLPI tente d'authentifier l'utilisateur en utilisant la dernière
        méthode d'authentification réussie (et uniquement celle-ci) ;
    2.  si l'authentification a échoué, l'utilisateur est redirigé vers
        une page lui indiquant que son identifiant ou mot de passe est
        incorrect ;

4.  Le moteur d'habilitation est lancé avec les informations de
    l'utilisateur :
    1.  si le moteur a donné à celui-ci une ou plusieurs habilitations,
        alors l'utilisateur a accès à GLPI ;
    2.  si l'utilisateur ne se voit attribuer aucune habilitation, alors
        bien qu'étant inscrit dans la base GLPI, il ne peut se connecter
        à l'application.

-   **[Configurer l'intégration avec les sources d'authentification
    externes](../glpi/config_common_auth.html)**\
     Les paramètres généraux de l'intégration avec des sources externes
    d'authentification se configurent dans le menu Configuration \>
    Authentification \> Configuration Authentification .
-   **[Chiffrage des mots de passe dans la base de
    données](../glpi/config_passwords_encrypted.html)**\
     Les mots de passe des accès extérieurs sont chiffrés
-   **[Authentifier des utilisateurs à partir d'annuaires
    LDAP](../glpi/config_auth_ldap.html)**\
     L'interface de GLPI avec les annuaires LDAP se configure depuis le
    menu Configuration \> Authentification \> Annuaire LDAP .
-   **[Configurer la liaison LDAP pour les utilisateurs et les
    groupes](../glpi/config_auth_ldap_usersgroups.html)**\
-   **[Ajouter un nouvel annuaire
    LDAP](../glpi/config_auth_ldap_t_create.html)**\
-   **[Supprimer un annuaire](../glpi/config_auth_ldap_t_delete.html)**\
-   **[Importer et synchroniser depuis un annuaire par
    script](../glpi/scripts_ldap_mass_sync.html)**\
     Un script permet l'import et la synchronisation à partir d'un
    annuaire.
-   **[Authentifier des utilisateurs à partir de serveurs de
    messagerie](../glpi/config_auth_imap.html)**\
     L'interfaçage de GLPI avec des serveurs de messagerie comme source
    d'authentification se configure depuis le menu Configuration \>
    Authentification \> Serveurs de messagerie .
-   **[Ajouter un serveur de
    messagerie](../glpi/config_auth_imap_t_create.html)**\
-   **[Supprimer un serveur de
    messagerie](../glpi/config_auth_imap_t_delete.html)**\
-   **[Configurer les autres méthodes d'authentification
    externe](../glpi/config_auth_other.html)**\
     L'interfaçage de GLPI à des systèmes permettant de faire de
    l'authentification unique se configure depuis le menu Configuration
    \> Authentification \> Autre méthode d'authentification .

**Sujet parent :** [Administrer les contrôles
d'accès](../glpi/access_control_intro.html "Cette partie décrit comment administrer le système de contrôle d'accès qui permet à chaque utilisateur d'accéder à un contexte d'utilisation spécifique.")
