Utiliser les balises pour personnaliser les notifications
=========================================================

GLPI fournit un ensemble de balises pour construire un modèle de
notification.

Une balise est de la forme \#\#balise\#\# :

-   \#\#champ\#\# : affiche la valeur d'un champ provenant de la base de
    données
-   \#\#lang.champ\#\# : affiche la chaîne provenant du fichier de
    langue associé à un champ

Remarque : Les balises fournissant des liens sont adaptés à
l'utilisateur en fonction de son mode d'authentification à GLPI. En
particulier, un utilisateur sans connexion ne se verra pas proposé les
liens.

Pour un ticket \#\#lang.title\#\# affiche le libellé "Nom" alors que
\#\#title\#\# affiche le nom du ticket.

Il existe 3 types de balises :

1.  simple
2.  condition IF/ELSE/THEN
3.  boucles FOREACH

-   **Balise simple**

Elle permet d'afficher une chaîne de langue ou la valeur d'un champ.

-   **Balise de condition**

\#\#reservation.end\#\# indique que l'on veut afficher la date de fin
d'une réservation.

Elle permet de réaliser un branchement conditionnel : test de la
présence d'une valeur pour un champ ou test d'une valeur particulière
pour celui-ci.

La syntaxe de la balise est la suivante :

-   IF simple : \#\#IFnomduchamp\#\# action pour le IF
    \#\#ENDIFnomduchamp\#\#
-   IF/ELSE : \#\#IFnomduchamp\#\# action pour le IF
    \#\#ENDIFnomduchamp\#\# \#\#ELSEnomduchamp\#\# action pour le ELSE
    \#\#ENDELSEnomduchamp\#\#

Pour tester si un ticket est attribué à un utilisateur :
\#\#IFticket.assigntouser\#\# ... \#\#ENDIFticket.assigntouser\#\#

Pour afficher des informations spécifiques si le statut d'une validation
est à "en attente" : \#\#IFvalidation.storestatus=waiting\#\# ...
\#\#ENDIFvalidation.storestatus\#\#

-   **Balise de boucle**

Elle permet de réaliser des énumérations sur des listes de valeurs
telles qu'une liste de tickets, ou une liste de contrats expirés.

La syntaxe est la suivante :

-   Boucle simple listant tous les éléments : \#\#FOREACHenumeration\#\#
    \#\#ENDFOREACHenumeration\#\# ou \#\#FOREACH enumeration\#\#
    \#\#ENDFOREACH enumeration\#\# ;
-   Boucle de lecture du premier élément de la liste : \#\#FOREACH FIRST
    enumeration\#\# \#\#ENDFOREACH enumeration\#\# ;
-   Boucle de lecture du dernier élément de la liste : \#\#FOREACH LAST
    enumeration\#\# \#\#ENDFOREACH enumeration\#\# ;
-   Boucle listant les 10 premiers éléments de l'énumération :
    \#\#FOREACH FIRST 10 enumeration\#\# \#\#ENDFOREACH enumeration\#\#.

Important : il n'est pas possible d'imbriquer 2 balises mais il est
possible de placer des balises IF dans des FOREACH.

**Sujet parent :** [Configurer les
notifications](../glpi/config_notification.html "Les notifications se configurent depuis le menu Configuration > Notifications ;")
