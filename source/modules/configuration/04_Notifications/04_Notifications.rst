:orphan:

Gérer les notifications par entité
==================================

Une notification est l'association d'un événement pour un type donné
avec un modèle. Une liste destinataire est créée à cet effet.

Une notification étant liée à une entité, il est possible de déléguer sa
gestion (contrairement aux modèles qui sont, eux, globaux). Par contre
une notification définie au niveau d'une entité mère ne pourra pas être
désactivée dans l'entité fille.

Fonctionnement des notifications
--------------------------------

Le mécanisme de traitement des notifications est puissant mais peut être
complexe si vous utilisez des entités. Il est basé sur l'algorithme
suivant :

1. Une action a déclenché un événement qui nécessite une notification ;
2. GLPI recherche les notifications qui correspondent à l'événement dans
   l'entité de l'objet qui est à l'origine de la notification et dans
   les entités parentes ;
3. Pour chaque notification GLPI récupère la liste des destinataires :

   -  une traduction du modèle existe pour la langue de l'utilisateur :
      GLPI l'utilise pour envoyer la notification ;
   -  aucune traduction n'existe : GLPI utilise la traduction par défaut
      ;
   -  GLPI garde en mémoire que cet utilisateur a déjà été notifié pour
      ne plus le traiter par la suite.

Les envois de notifications s'effectuent de manière synchrone,
c'est-à-dire qu'ils sont déclenchés par GLPI au moment du déclenchement
d'un événement.

    Important : si une notification est définie comme visible dans les
    sous-entités, elle sera alors exécutée même si l'administrateur
    d'une entité fille ne la redéclare pas.

Les différents onglets
----------------------

-  **Onglet "Notifications"** Une notification est composée d'un certain
   nombre de champs spécifiques à renseigner :

   -  **Nom** : nom de la notification ;
   -  **Actif** : permet de désactiver temporairement une notification ;
   -  **Type** : type d'objet de GLPI auquel se rapporte la notification
      ;
   -  **Mode de notification** : actuellement seul "courriel" est
      disponible ;
   -  **Événement** : indique quel sera l'événement déclencheur suivant
      le type de l'objet ;
   -  **Modèles de notification** : indique la notification qui sera
      envoyée pour le type d'objet et l'évènement définis précédemment.

-  **Onglet "Destinataires"** C'est dans cet onglet que vous allez
   définir qui va recevoir la notification

   Un certain nombre d'acteurs de l'application sont proposés et la
   liste varie en fonction du type d'objet défini :

   -  **Administrateur** : personne dont l'adresse de messagerie a été
      définie dans le menu ***Configuration > Notifications
      >Configuration des suivis par courriels*** ;
   -  **Administrateur Entité** : personne, pour chaque entité, dont
      l'adresse de messagerie est définie dans l'onglet *Notifications*
      d'une entité ;
   -  **Demandeur** : personne à l'origine du ticket ;
   -  **Fournisseur** : fournisseur auquel le ticket est attribué ;
   -  **Groupe XXX** : toutes les personnes ayant une habilitation sur
      l'entité et qui font partie du groupe ;
   -  **Groupe XXX** : toutes les personnes ayant une habilitation sur
      l'entité et qui font partie du groupe ;
   -  **Groupe XXX sans superviseur** : tous les membres du groupe à
      l'exception de la personne déclarée Superviseur du groupe ;
   -  **Groupe chargé du ticket** : tous les membres du groupe auquel le
      ticket est attribué ;
   -  **Groupe chargé du ticket sans superviseur** : tous les membres du
      groupe affecté au ticket à l'exception de la personne déclarée
      Superviseur du groupe ;
   -  **Groupe demandeur** : tous les membres du groupe indiqué comme
      groupe demandeur du ticket ;
   -  **Groupe demandeur sans superviseur** : tous les membres du groupe
      indiqué comme groupe demandeur du ticket à l'exception de la
      personne déclarée Superviseur du groupe ;
   -  **Groupe d'observateurs** : tous les membres du groupe indiqué
      comme groupe observateur du ticket ;
   -  **Groupe d'observateurs sans superviseur**: tous les membres du
      groupe indiqué comme groupe observateur du ticket à l'exception de
      la personne déclarée Superviseur du groupe ;
   -  **Groupe technique** : tous les membres du groupe technique
      affecté à l'élément associé au ticket ;
   -  **Observateur** : personne observateur du ticket ;
   -  **Profil XXX** : toutes les personnes ayant une habilitation sur
      l'entité et qui possèdent ce profil ;
   -  **Rédacteur** : personne qui saisit l'information ;
   -  **Responsable technique** : personne désignée comme responsable
      technique du matériel lié au ticket ;
   -  **Superviseur du groupe demandeur** : personne désignée
      Superviseur du groupe demandeur du ticket ;
   -  **Superviseur du groupe chargé du ticket** : personne désignée
      Superviseur du groupe attribué au ticket ;
   -  **Superviseur du groupe observateur** : personne désignée
      Superviseur du groupe observateur du ticket ;
   -  **Superviseur du groupe XXX** : personne déclarée comme
      Superviseur du groupe dans la fiche de celui-ci ;
   -  **Technicien chargé du ticket** : technicien auquel le ticket est
      attribué ;
   -  **Utilisateur du matériel** : personne ayant effectuée la
      réservation du matériel.

-  **`Onglet
   "Historique" <Les_différents_onglets/Onglet_Historique.rst>`__**
   L'historique est visualisé depuis l'onglet *Historique*

-  **`Onglet "Tous" <Les_différents_onglets/Onglet_Tous.rst>`__** Pour un
   élément, toutes les informations sont affichées sur une seule page.

Les différentes actions
-----------------------

-  **`Ajouter une
   notification <Les_différentes_actions/Créer_un_nouvel_objet.rst>`__**
-  **`Voir une
   notification <Les_différentes_actions/Visualiser_un_objet.rst>`__**
-  **`Modifier une
   notification <Les_différentes_actions/Modifier_un_objet.rst>`__**
-  **`Supprimer une
   notification <Les_différentes_actions/Supprimer_un_objet.rst>`__**
-  **Gérer les destinataires d'une notification** Pour ajouter un
   nouveau destinataire il suffit de cliquer dans le cadre blanc (cela
   ouvrira la liste des destinataires) et choisir son destinataire. Pour
   supprimer un destinataire il suffit de cliquer sur la croix dans la
   case le concernant. Ne pas oublier de cliquer sur Modifier pour
   valider vos actions (ajout ou suppression).

--------------

**Sujet parent :** `Configurer les
notifications <(08_Module_Configuration/04_Notifications/01_Notifications.rst)>`__
