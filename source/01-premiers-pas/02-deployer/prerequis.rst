Pré-requis
==========

GLPI utilise les technologies suivantes :

* PHP pour le langage ;
* MySQL pour la base de données ;
* HTML pour les pages web ;
* CSS pour les feuilles de style ;
* CSV, PDF et SLK pour les exports de données ;
* AJAX pour les éléments dynamiques de l’interface ;
* SVG et PNG pour les images et les graphiques ;
* ...

Serveur web
-----------

Caractéristiques du serveur web nécessaires pour faire fonctionner GLPI.

Serveur web
^^^^^^^^^^^

GLPI nécessite un serveur web supportant PHP tels que :

* Apache 2 ou supérieur (http://httpd.apache.org) ;
* Nginx (http://nginx.org/);
* Microsoft IIS (http://www.iis.net).

PHP
^^^

GLPI 9.2 nécessite `PHP <http://php.net>`_ version 5.6 ou supérieure.

Extensions obligatoires
+++++++++++++++++++++++

Les extensions PHP suivantes sont nécessaires au bon fonctionnement de l'application :

* CURL : pour l'authentification CAS ;
* Fileinfo : pour obtenir des informations sur des fichiers
* GD : génération d'images ;
* JSON : support du format de données structuré JSON ;
* Mbstring : gestion des chaînes de caractères multi-octets ;
* MySQL : liaison avec la base de données ;
* Session : support des sessions des utilisateurs.
* Zlib : fonctions de sauvegarde et restauration de la base de données

Extensions facultatives
+++++++++++++++++++++++

.. note::

   Bien que ces extensions soient facultatives, nous vous conseillons tout de même de les installer.

Les extensions suivantes sont requises pour des fonctionnalités optionnelles de l'application :

* CLI : utilisation de PHP en ligne de commande pour les actions automatiques ;
* DOMXML : pour l'authentification CAS ;
* IMAP : utilisation de serveurs de messagerie pour la collecte des tickets ou l'authentification des utilisateurs ;
* LDAP : utilisation d'un annuaire externe pour l'authentification ;
* OpenSSL : communication chiffrée.

Configuration
+++++++++++++

Le fichier de configuration de php (``php.ini``) doit être modifié afin de respecter les variables suivantes :

.. code-block:: ini

    memory_limit = 64M ;        // Valeur minimale
    file_uploads = on ;
    max_execution_time = 600 ;  // Préconisé mais non obligatoire
    register_globals = off ;    // Préconisé mais non obligatoire
    magic_quotes_sybase = off ;
    session.auto_start = off ;
    session.use_trans_sid = 0 ; // Préconisé mais non obligatoire

Base de données
---------------

.. warning::

   Actuellement, seuls les serveurs de base de données MySQL et MariaDB sont supportés par GLPI (moteur MyISAM).

Pour fonctionner, GLPI nécessite un `serveur de base de données MySQL <http://mysql.fr>`_ de version supérieure ou égale à 5.1.

.. note::

   Nous recommandons d'utiliser la version 5.5.x, pour de meilleurs meilleures performances.


