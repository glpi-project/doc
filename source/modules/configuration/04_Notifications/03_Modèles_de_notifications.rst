Configuration des modèles de notifications
==========================================

Un modèle est un objet global de GLPI qui définit toutes les données
relatives au format et formatage d'une notification.

La création d'un modèle est une opération complexe, qui impacte les
utilisateurs. C'est pourquoi cet objet est créé et géré par des
administrateurs (permission *Mettre à jour* de la *Configuration
générale*). De plus un modèle n'est pas lié à une entité, ce qui veut
dire qu'il n'est pas possible de déléguer sa gestion à un administrateur
d'une sous-entité.

Un modèle reflète une communication auprès d'un utilisateur et peut être
disponible dans plusieurs langues grâce à un mécanisme de traduction :
l'utilisation de balises (c'est-à-dire des marqueurs indépendants de la
langue utilisée) permet de créer une traduction générique, disponible
pour toutes les langues de GLPI.

GLPI vient avec un ensemble de modèles pré-définis pour toutes les
notifications (tickets, réservations, informations financières,
cartouches, consommables, licences, synchronisation MySQL...).

Les différents onglets
----------------------

-  **Onglet "Modèles de notifications"**

   -  **Nom** : nom du modèle ;
   -  **Type** : indique à quel type d'objet le modèle se rapporte. Un
      modèle est lié à un et un seul type d'objet ;
   -  **Commentaires** : information supplémentaire en rapport avec le
      modèle en cours d'édition.
   -  **CSS :**\ feuille de style utilisée pour le modèle en HTML.

-  **Onglet "Traductions"** C'est dans cet onglet que vous allez définir
   le contenu de votre notification. Il liste les différents
   notifications défnies par langue et permet d'ajouter une nouvelle
   langue. ***Remarque :** une traduction par défaut est applicable à
   toutes les langues de GLPI n'ayant pas leur propre traduction*.

-  **`Onglet
   "Historique" <Les_différents_onglets/Onglet_Historique.rst>`__**
   L'historique est visualisé depuis l'onglet *Historique*

-  **`Onglet "Tous" <Les_différents_onglets/Onglet_Tous.rst>`__** Pour un
   élément, toutes les informations sont affichées sur une seule page.

Les différentes actions
-----------------------

-  **`Ajouter un nouveau modèle de
   notification <Les_différentes_actions/Créer_un_nouvel_objet.rst>`__**
-  **`Voir un nouveau modèle de
   notification <Les_différentes_actions/Visualiser_un_objet.rst>`__**
-  **`Modifier un nouveau modèle de
   notification <Les_différentes_actions/Modifier_un_objet.rst>`__**
-  **`Supprimer un nouveau modèle de
   notification <Les_différentes_actions/Supprimer_un_objet.rst>`__**
-  **Ajouter une nouvelle traduction** Une traduction représente la
   disponibilité d'un modèle dans une langue donnée. En fonction de
   celle choisie par le destinataire, la notification sera envoyée dans
   la langue correspondante. Si elle n'est pas disponible, la traduction
   par défaut sera utilisée.

   Une traduction est constituée d'une liste de balises qui font
   références à :

   -  des chaînes de langue de GLPI ou d'un plugin ;
   -  des valeurs de champs d'objets stockés en base de données.

   Pour ajouter une nouvelle traduction, il est nécessaire de remplir
   les champs suivants :

   -  **Langue :** indique la langue à laquelle cette traduction se
      rapporte. Si aucune langue n'est sélectionnée dans la liste
      déroulante, cette traduction sera celle par défaut pour ce modèle
      ;
   -  **Sujet :** sujet de la notification ; ***Remarque :** le sujet
      est automatiquement préfixé par la chaîne [GLPI] ou [GLPI XXXXXX]
      qui est utilisée afin de gérer les réponses aux notifications.
      Celle-ci est modifiable pour chaque entité dans la configuration
      des entités (voir `Déléguer l'administration par
      entité <07_Module_Administration/04_Entités.rst>`__).*
   -  **Corps du courriel au format texte :** texte brut envoyé en cas
      de notification. Si le champ est vide alors il est généré à partir
      du corps de texte HTML ;
   -  **Corps du courriel au format HTML :** texte formaté en HTML.

   La liste des balises disponibles est accessible via le bouton
   |image|.

   ***Remarque :** En mode debug et pour certains types de
   notifications, vous pouvez accéder à une prévisualisation des
   courriels envoyés via l'onglet Debug de l'objet*.

-  **Utiliser les balises pour personnaliser les notifications** GLPI
   fournit un ensemble de balises pour construire un modèle de
   notification. Certaines balises ne sont disponibles que pour certains
   évènements.

Une balise est de la forme ##balise## : - ##champ## : affiche la valeur
d'un champ provenant de la base de données ; - ##lang.champ## : affiche
la chaîne provenant du fichier de langue associé à un champ (son nom).
``Exemple pour un ticket :``
``##lang.title## affiche le libellé "Nom" alors que ##title## affiche le nom du ticket.``

***Remarque :** Les balises fournissant des liens sont adaptés à
l'utilisateur en fonction de son mode d'authentification à GLPI. En
particulier, un utilisateur sans connexion ne se verra pas proposé les
liens.*

Il existe 3 types de balises : - **simple :** elle permet d'afficher une
chaîne de langue ou la valeur d'un champ.
``##reservation.end## indique que l'on veut afficher la date de fin d'une réservation``

-  **condition** (IF/ELSE/THEN) : elle permet de réaliser un branchement
   conditionnel en testant la présence d'une valeur pour un champ ou en
   testant d'une valeur particulière pour celui-ci. La syntaxe de la
   balise est la suivante : '##IFnomduchamp## action pour le IF
   ##ENDIFnomduchamp##' '##ELSEnomduchamp## action pour le ELSE
   ##ENDELSEnomduchamp##'

   ``Exemple pour tester si un ticket est attribué à un utilisateur :``
   ``##IFticket.assigntouser## ... ##ENDIFticket.assigntouser##``
   ``Exemple pour afficher des informations spécifiques si le statut d'une validation est à "en attente" :``
   ``##IFvalidation.storestatus=2## ... ##ENDIFvalidation.storestatus##``

-  **boucles** (FOREACH) : elle permet de réaliser des énumérations sur
   des listes de valeurs telles qu'une liste de tickets, ou une liste de
   contrats expirés. La syntaxe est la suivante : **Boucle simple
   listant tous les éléments :** '##FOREACHenumeration## ...
   ##ENDFOREACHenumeration##' ou '##FOREACH enumeration## ...
   ##ENDFOREACH enumeration##'

   **Boucle de lecture du premier élément de la liste :** '##FOREACH
   FIRST enumeration## ... ##ENDFOREACH enumeration##'

   **Boucle de lecture du dernier élément de la liste :** '##FOREACH
   LAST enumeration## ... ##ENDFOREACH enumeration##'

   **Boucle listant les 10 premiers éléments de l'énumération :**
   '##FOREACH FIRST 10 enumeration## ... ##ENDFOREACH enumeration##'

   ``Exemple pour afficher les deux derniers suivis d'un ticket :``
   ``##FOREACH LAST 2 followups## ... ##ENDFOREACH followups##``

       Important : il n'est pas possible d'imbriquer 2 balises FOREACH
       mais il est possible de placer des balises IF dans des FOREACH.

--------------

**Sujet parent :** `Configurer les
notifications <(08_Module_Configuration/04_Notifications/01_Notifications.rst)>`__

.. |image| image:: docs/image/listeTags.png

