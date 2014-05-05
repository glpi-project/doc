Ajouter un serveur de messagerie
================================

Ajouter un serveur de messagerie comme nouvelle source
d'authentification

1.  Se connecter à GLPI ;
2.  Aller dans le menu Configuration \> Authentification \> Serveurs de
    messagerie ;
3.  Cliquer sur le "+" situé dans le menu horizontal ;
4.  Compléter les différents champs de la fiche vierge :
    1.  le nom du serveur est celui qui sera affiché dans GLPI ;

~~~~ {.codeblock}
Serveur de messagerie pour Exemple France
~~~~

    2.  le domaine de messagerie est ce qui suit l'arobase dans une
        adresse de messagerie ; pour un courriel de type
        courriel@exemple.fr :

~~~~ {.codeblock}
exemple.fr
~~~~

    3.  le nom pleinement qualifié du serveur ;

~~~~ {.codeblock}
imap.exemple.com
~~~~

    4.  les paramètres optionnels de connexion au serveur : port et
        options de connexion telles que IMAP ou POP, SSL, TLS,
        VALIDATE-CERT ou NO-VALIDATE-CERT et dossier de messagerie.

~~~~ {.codeblock}
993, IMAP, SSL, TLS, NO-VALIDATE-CERT, INBOX
~~~~

    Les champs qui ne sont pas nécessaires à la connexion au serveur de
    messagerie sont laissés vides.
5.  Valider. Le serveur de messagerie est créé dans GLPI.
6.  Vérifier la chaîne de connexion qui apparaît dorénavant. Celle-ci
    est le format interne utilisé par GLPI pour se connecter au serveur
    de messagerie.
7.  Tester la connexion à l'aide du formulaire Test de connexion au
    serveur de messagerie. Entrer un identifiant et mot de passe de
    messagerie et valider. GLPI indique si les paramètres ont permis la
    connexion à la boîte de messagerie.

Le serveur de messagerie ainsi créé est désormais utilisable par GLPI
pour authentifier des utilisateurs.

**Parent topic:** [Configurer la gestion
d'identité](../glpi/config_auth.html "La manière dont GLPI gère l'authentification et les informations personnelles des utilisateurs se configure depuis le menu Configuration > Authentification.")
