Pour commencer, le demandeur doit exprimer un besoin. Pour cela il peut faire appel à plusieurs outils au choix :

- il remplit lui-même un formulaire en ligne, qu'il soit connu dans GLPI ou non ;

- il demande à un délégataire de son groupe de le faire pour lui (voir [Administrer les groupes](index.php?fr/07_Module_Administration/03_Groupes.md "Dans GLPI, administrer les groupes peut se faire à partir du menu Administration > Groupes")).
   Dans l'interface simplifiée, cela se traduit par l'apparition d'une option permettant d'indiquer si l'incident concerne l'utilisateur lui-même ou un autre.
   Dans l'interface standard ce mécanisme est actif à partir du moment où le droit **Voir tous les tickets** est à *non* dans le profil. Il se traduit par l'ajout comme demandeur de tous les utilisateurs pour lesquels la délégation s'opère ;

- il contacte un opérateur directement (ou par téléphone) qui exécute la déclaration pour lui ;

- il envoie sa demande par message électronique (voir helpdesk_advanced_collectors.html").
Un ticket peut être ouvert de plusieurs manières :


Ouvrir un ticket dans GLPI
==========================
- via l'interface d'ouverture de tickets anonymes accessible par les utilisateurs non authentifiés si la configuration générale de GLPI l'autorise ;

- via l'interface graphique :

  - interface simplifiée (formulaire de saisie allégé destiné à un utilisateur final authentifié) ;
  - interface standard (formulaire de saisie complet).

Interface d'ouverture de tickets anonymes (pour utilisateurs non authentifiés)
------------------------------------------------------------------------------

Accessible à l'adresse http://<ADRESSE\_GLPI\>/front/helpdesk.html, elle permet aux utilisateurs n'ayant aucun compte dans GLPI d'envoyer un formulaire de signalement au centre de support. Une fois rempli et
soumis, un message confirme la bonne création du ticket. Ce formulaire peut être personnalisé en modifiant directement le fichier helpdesk.html. Par défaut le ticket est créé dans l'entité racine.


Ouverture d'un ticket dans l'interface graphique
------------------------------------------------
Suivant l'utilisation ou non de gabarits (voir [gabarits des tickets](index.php?fr/Les_différentes_actions/Gérer_les_gabarits.md), certains champs peuvent être obligatoires, prédéfinis ou masqués à l'ouverture d'un ticket (contenu, titre et/ou catégorie). Si l'un champ obligatoire est manquant, le ticket ne sera pas créé.

Les différents champs disponibles sont décrits dans la partie [Gérer les tickets](index.php?fr/04_Module_Assistance/04_Tickets/03_Gérer_les_tickets.md "Les tickets dans GLPI, caractéristiques et utilisation").

Il est possible d'ajouter au ticket un ou plusieurs documents en une seule opération.

En activant l'option "**Utiliser du texte riche pour l'assistance**" dans la configuration générale (onglet assistance), le champ description du ticket pourra être formaté au format Html. De plus une zone supplémentaire sera disponible afin de glisser ou de coller des images (exemple : Screenshot). Une balise sera alors ajoutée automatiquement à la description afin de formaliser le contenu de sa demande.

Interface simplifiée
--------------------

Elle permet à un utilisateur authentifié de créer rapidement un ticket pour lui même ou pour une autre personne (délégation).

Le formulaire de saisie peut être accompagné d'un message invitant l'utilisateur à vérifier ses coordonnées personnelles (lieu, téléphone), afin de faciliter la prise de contact par les techniciens (voir
Configuration / [Onglet Assistance](config_common_assist.html "Cet onglet permet de paramétrer le comportement de la partie assistance de GLPI.")).
Pour cela, remplir le formulaire de saisie proposé à l'ouverture de GLPI et valider.

**Champs spécifiques :**

-   **Informez-moi des suites données**
    Apparaît si les suivis par courriel ont été configurés (voir [Configurer les notifications](config_notification.html "Les notifications se configurent depuis le menu Configuration > Notifications").
    La sélection à "oui" permet au demandeur d'être tenu informé par courriel des différents traitements concernant son ticket.
    Le champ Courriel correspond à l'adresse où seront envoyées les notifications. Si plusieurs courriels sont définis, GLPI prendra l'adresse par défaut définie dans les préférences de l'utilisateur. Il est possible d'en sélectionner une autre ou d'entrer une adresse si la fiche de l'utilisateur n'en mentionne pas ;

-   **Le ticket porte sur** : permet d'associer un objet d'inventaire à un ticket.
    Le contenu de la ou des listes dépend des paramètres définis dans le profil (Voir [Administrer les profils
    d'utilisateurs](administration_profile.html "Dans GLPI, administrer les profils peut se faire à partir du menu Administration > Profils.").

-   **Observateur** : permet d'ajouter un observateur et de définir ses paramètres de notification. Seul les membres des groupes du demandeur peuvent être associés.

***Conseil :*** Chaque utilisateur a la possibilité d'ajouter de nouvelles addresses de messagerie à son profil directement depuis ses Préférences (voir [Gérer ses
préférences](start_pref.html "Les préférences utilisateur se modifient depuis le menu Préférences")).

Si vous ajouter une image ou un document au ticket, il est important de la faire après avoir rempli tous les champs marqués obligatoires (astérisque rouge), car le rechargement du formulaire entraine la suppression des images (ou des documents) liés.

Un message confirme la bonne création du ticket accessible en cliquant sur le numéro du ticket apparaissant en vert.


Interface standard
------------------

Pour créer un nouveau ticket aller dans le menu ***Assistance > Tickets >*** ![image](docq/image/menu_add.png). Voir également [Créer un ticket](index.php?fr/04_Module_Assistance/05_Créer_un_ticket.md).

Lors de l'ajout d'une nouvelle image depuis l'onglet *Documents* du ticket, la balise générée pourra être aussi utilisé pour insérer l'image dans la description du ticket.

Un message confirme la bonne création du ticket accessible en cliquant sur le nom du ticket apparaissant en vert.

Une demande de validation peut être effectuée à l'ouverture du ticket en indiquant simplement le valideur souhaité.

***Remarque :** A la saisie du demandeur, du technicien ou d'un groupe assigné, une information est affichée permettant de déterminer combien de tickets cette personne ou ce groupe a déjà ouverts ou a déjà en charge. De la même manière, à la sélection d'un matériel, une vision simplifiée des tickets en cours sur celui-ci est proposé.*


Ouvrir un ticket par courriel
=============================  
 L'utilisateur envoie un courriel à une adresse de messagerie définie dans le collecteur (Voir [Configurer les collecteurs](index.php?fr/07_Module_Administration/05_Règles/02_Collecteur_de_courriels.md "La configuration des collecteurs s'effectue depuis le menu Configuration > Collecteurs"). Dès la réception du courriel, un ticket est ouvert automatiquement.

L'objet du message deviendra le titre du ticket, son corps la description, les Cc des observateurs (si l'adresse est connue dans GLPI) et enfin les pièces jointes des documents associés.

En activant l'option "**Utiliser du texte riche pour l'assistance**" dans la configuration générale (onglet assistance), les images présentes dans le corps du message seront visibles dans la description du ticket.


Ouvrir automatiquement un ticket 
================================
Ce mécanisme s'active via les [tickets récurrents](index.php?fr/04_Module_Assistance/10_Tickets_récurrents.md)

------------
**Sujet parent :** [Le service d'assistance aux
utilisateurs](../glpi/helpdesk.html "Le service d'Assistance aux utilisateurs de GLPI")
