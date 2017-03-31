Prérequis du serveur web
========================

Caractéristiques du serveur web nécessaires pour faire fonctionner GLPI.

Serveur web
-----------

GLPI nécessite un serveur web supportant PHP tels que :

-   Apache 2 ou supérieur ([http://httpd.apache.org](http://httpd.apache.org)) ;
-   Microsoft IIS ([http://www.iis.net](http://www.iis.net)).

PHP
---

GLPI nécessite PHP version 5.4 ou supérieure ([http://www.php.net](http://www.php.net)).

Extensions PHP obligatoires
---------------------------

Les extensions PHP suivantes sont nécessaires au bon fonctionnement de l'application :

-   JSON : support du format de données structuré JSON ;
-   Mbstring : gestion des chaînes de caractères multi-octets ;
-   MySQL : liaison avec la base de données ;
-   Session : support des sessions des utilisateurs.

Extensions PHP facultatives mais recommandées
---------------------------------------------

Les extensions suivantes sont requises pour des fonctionnalités optionnelles de l'application :

-   CLI : utilisation de PHP en ligne de commande pour les actions automatiques ;
-   CURL : pour l'authentification CAS ;
-   DOMXML : pour l'authentification CAS ;
-   GD : génération d'images ;
-   IMAP : utilisation de serveurs de messagerie pour la collecte des tickets ou l'authentification des utilisateurs ;
-   LDAP : utilisation d'un annuaire externe pour l'authentification ;
-   OpenSSL : communication chiffrée.

Configuration PHP
-----------------

Le fichier de configuration de php (*php.ini*) doit être modifié afin de contenir les variables suivantes :

    memory_limit = 64M ; // Valeur minimale
    file_uploads = on ;
    max_execution_time = 600 ; // Préconisé mais non obligatoire
    register_globals = off ;  // Préconisé mais non obligatoire
    magic_quotes_sybase = off ;
    session.auto_start = off ;
    session.use_trans_sid = 0 ; // Préconisé mais non obligatoire

----------------
**Sujet parent :**
[Prérequis nécessaires à l'installation de GLPI](index.php?fr/01-premiers-pas/02_Déployer_GLPI/02_Prérequis/01_Prérequis_nécessaires.md)
