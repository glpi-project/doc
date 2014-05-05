Gérer les notifications par entité
==================================

Une notification est l'association d'un événement pour un type donné
avec un modèle. Une liste destinataire est créée à cet effet.

Une notification étant liée à une entité, il est possible de déléguer sa
gestion (contrairement aux modèles qui sont, eux, globaux) .

Création d'une notification
---------------------------

Une notification est composée d'un certain nombre de champs spécifiques
à renseigner :

-   **Type** : type d'objet de GLPI sur lequel la notification se
    rapporte ;
-   **Mode de notification** : actuellement seul "courriel" est
    disponible ;
-   **Événement** : indique sur quel événement du type d'objet la
    notification se rapporte ;
-   **Modèles de notification** : associe un modèle de notification à la
    notification courante ;

Destinataires des notifications
-------------------------------

Une fois le formulaire validé, la liste des destinataires potentiels
apparaît.

Un certain nombre d'acteurs de l'application sont proposés :

-   **Administrateur** : personne dont l'adresse de messagerie a été
    définie dans le menu *Configuration \> Notifications \>
    Configuration des suivis par courriels et des alertes* ;
-   **Administrateur Entité** : personne, pour chaque entité, dont
    l'adresse de messagerie est définie dans l'onglet *Notifications*
    d'une entité ;
-   **Demandeur** : personne à l'origine du ticket ;
-   **Fournisseur** : fournisseur auquel le ticket est attribué ;
-   **Groupe XXX** : toutes les personnes ayant une habilitation sur
    l'entité et qui font partie du groupe ;
-   **Groupe XXX sans responsable** : seule la personne déclarée
    Superviseur du groupe ne recevra pas la notification, contrairement
    aux autres membres ;
-   **Groupe chargé du ticket** : tous les membres du groupe auquel le
    ticket est attribué ;
-   **Groupe chargé du ticket sans le responsable** : seule la personne
    déclarée Superviseur du groupe attribué au ticket ne recevra pas la
    notification, contrairement aux autres membres ;
-   **Groupe demandeur** : tous les membres du groupe indiqué comme
    groupe demandeur du ticket ;
-   **Groupe demandeur sans le responsable** : seule la personne
    déclarée Superviseur du groupe demandeur du ticket ne recevra pas la
    notification, contrairement aux autres membres ;
-   **Groupe d'observateurs** : tous les membres du groupe indiqué comme
    groupe observateur du ticket ;
-   **Groupe d'observateurs sans le responsable**: seule la personne
    déclarée Superviseur du groupe observateur du ticket ne recevra pas
    la notification, contrairement aux autres membres ;
-   **Groupe technique** : tous les membres du groupe technique affecté
    à l'élément associé au ticket ;
-   **Observateur** : personne observateur du ticket ;
-   **Profil XXX** : toutes les personnes ayant une habilitation sur
    l'entité et qui possèdent ce profil ;
-   **Rédacteur** : personne qui saisit l'information ;
-   **Responsable technique** : personne désignée comme responsable
    technique du matériel lié au ticket ;
-   **Responsable du groupe de demandeurs** : personne désigné
    Superviseur du groupe demandeur du ticket ;
-   **Responsable du groupe de techniciens** : personne désigné
    Superviseur du groupe attribué au ticket ;
-   **Responsable du groupe d'observateurs** : personne désigné
    Superviseur du groupe observateur du ticket ;
-   **Responsable du groupe XXX** : personne déclarée comme Superviseur
    du groupe dans la fiche de celui-ci ;
-   **Technicien chargé du ticket** : technicien auquel le ticket est
    attribué ;
-   **Responsable technique** : personne désignée comme responsable
    technique du matériel lié au ticket;
-   **Profil XXX** : toutes les personnes ayant une habilitation sur
    l'entité et qui possèdent ce profil ;

Fonctionnement des notifications
--------------------------------

Le mécanisme de traitement des notifications est puissant mais peut être
complexe si vous utilisez des entités. Il est basé sur l'algorithme
suivant :

1.  Une action a déclenché un événement qui nécessite une notification ;
2.  GLPI recherche les notifications qui correspondent à l'événement
    dans l'entité de l'objet qui est à l'origine de la notification et
    dans les entités parentes ;
3.  Pour chaque notification GLPI récupère la liste des destinataires :
    -   une traduction du modèle existe pour la langue de l'utilisateur
        : GLPI l'utilise pour envoyer la notification ;
    -   aucune traduction n'existe : GLPI utilise la traduction par
        défaut ;
    -   GLPI garde en mémoire que cet utilisateur a déjà été notifié
        pour ne plus les traiter par la suite.

Les envois de notifications s'effectuent de manière synchrone, c'est à
dire qu'ils sont déclenchés par GLPI au moment du déclenchement d'un
événement.

Important : si une notification est définie comme visible dans les
sous-entités, elle sera alors exécutée même si l'administrateur d'une
entité fille ne la redéclare pas.

**Sujet parent :** [Configurer les
notifications](../glpi/config_notification.html "Les notifications se configurent depuis le menu Configuration > Notifications ;")
