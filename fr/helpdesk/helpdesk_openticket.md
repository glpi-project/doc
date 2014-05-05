Ouvrir un ticket
================

Ouvrir un ticket via GLPI

L'utilisateur peut ouvrir un ticket :

-   dans GLPI
    -   via l'interface d'ouverture de tickets anonymes accessible par
        les utilisateurs non authentifiés ;
    -   via l'interface simplifiée (formulaire de saisie allégé destiné
        à un utilisateur final authentifié) ;
    -   via l'interface standard (formulaire de saisie complet).

-   par courriel : L'utilisateur envoie un courriel à une adresse de
    messagerie définie. Dès la réception du courriel, un ticket est
    ouvert automatiquement. Voir [Configurer les
    collecteurs](config_mailcollector.html "La configuration des collecteurs s'effectue depuis le menu Configuration > Collecteurs").

Quelque soit le mode de création d'un ticket, si aucun titre (ou objet
pour un courriel) n'est indiqué, le ticket aura comme nom les 70
premiers caractères de la zone de description (ou du corps du courriel).

Suivant la configuration, certains champs peuvent être obligatoires à
l'ouverture d'un ticket (contenu, titre et/ou catégorie). Si l'un d'eux
est manquant, le ticket ne sera pas créé.

Les différents champs disponibles sont décrits dans la partie [Gérer les
tickets](helpdesk_ticket.html "Les tickets dans GLPI, caractéristiques et utilisation").

Un mécanisme appelé *délégation* donne la possibilité à un utilisateur
de déclarer un incident pour une autre personne. La configuration de
cette fonctionnalité est décrite dans le chapitre [Administrer les
groupes](administration_group.html "Dans GLPI, administrer les groupes peut se faire à partir du menu Administration > Groupes.").
Dans l'interface simplifiée, cela se traduit par l'apparition d'une
option permettant d'indiquer si l'incident concerne l'utilisateur lui
même ou un autre. Dans l'interface standard ce mécanisme est actif à
partir du moment où le droit **Voir tous les tickets** est à *non* dans
le profil. Il se traduit par l'ajout comme demandeur de tous les
utilisateurs pour lesquels la délégation s'opère.

Interface d'ouverture de tickets anonymes (pour utilisateurs non authentifiés)
------------------------------------------------------------------------------

Accessible à l'adresse http://<ADRESSE\_GLPI\>/front/helpdesk.html, elle
permet aux utilisateurs n'ayant aucun compte dans GLPI d'envoyer un
formulaire de signalement au centre de support. Une fois rempli et
soumis, un message confirme la bonne création du ticket. Ce formulaire
peut être personnalisé en modifiant directement le fichier
helpdesk.html. Par défaut le ticket est créé dans l'entité racine.

Interface simplifiée
--------------------

Elle permet à un utilisateur authentifié de créer rapidement un ticket
pour lui même ou pour une autre personne (délégation).

Le formulaire de saisie peut être accompagné d'un message invitant
l'utilisateur à vérifier ses coordonnées personnelles (lieu, téléphone),
afin de faciliter la prise de contact par les techniciens (voir
Configuration / [Onglet
Assistance](config_common_assist.html "Cet onglet permet de paramétrer le comportement de la partie assistance de GLPI.")).

Pour cela, remplir le formulaire de saisie proposé à l'ouverture de GLPI
et valider.

**Champs spécifiques :**

-   **Informez-moi des suites données**

    Apparaît si les suivis par courriel ont été configurés.

    Voir [Configurer les
    notifications](config_notification.html "Les notifications se configurent depuis le menu Configuration > Notifications ;").

    La sélection à "oui" permet au demandeur d'être tenu informé par
    courriel des différents traitements concernant son ticket ;

-   **Courriel** : Adresse où seront envoyées les notifications, si
    plusieurs sont définies, il va prendre l'adresse par défaut mais il
    est possible d'en sélectionner une autre ;
-   **Le ticket porte sur** : permet d'associer un objet d'inventaire à
    un ticket.

    Le contenu de la ou des listes dépend des paramètres définis dans le
    profil.

    Voir [Administrer les profils
    d'utilisateurs](administration_profile.html "Dans GLPI, administrer les profils peut se faire à partir du menu Administration > Profils.").

-   **Observateur** : permet d'ajouter un observateur et de définir ses
    paramètres de notification. Seul les membres des groupes du
    demandeur peuvent être associés.

Conseil : Chaque utilisateur a la possibilité d'ajouter de nouvelles
addresses de messagerie à son profil directement depuis ses Préférences
(voir [Gérer ses
préférences](start_pref.html "Les préférences utilisateur se modifient depuis le menu Préférences")).

Il est possible d'ajouter au ticket un ou plusieurs documents en une
seule opération.

En activant l'option "**Utiliser du texte riche pour l'assistance**"
dans la configuration générale (onglet assistance), le champ description
du ticket pourra être formaté au format Html. De plus une zone
supplémentaire sera disponible afin de glisser ou de coller des images
(exemple : Screenshot). Une balise sera alors ajoutée automatiquement à
la description afin de formaliser le contenu de sa demande.

Il est important d'ajouter l'image après avoir spécifié la catégorie du
ticket, car le rechargement du formulaire entraine la suppression des
images (ou des documents) liés.

Un message confirme la bonne création du ticket accessible en cliquant
sur le numéro du ticket apparaissant en vert.

Interface standard
------------------

Pour créer un nouveau ticket aller dans le menu Assistance \> Tickets \>
![image](../image/menu_add.png) .

Il est possible d'ajouter au ticket un ou plusieurs documents en une
seule opération.

De même que sur l'interface simplifiée, en activant l'option "**Utiliser
du texte riche pour l'assistance**" dans la configuration générale
(onglet assistance), le champ description du ticket pourra être formaté
au format Html. De plus une zone supplémentaire sera disponible afin de
glisser ou de coller des images (exemple : Screenshots). Une balise sera
alors ajoutée automatiquement à la description afin de formaliser le
contenu de sa demande.

Lors de l'ajout d'une nouvelle image depuis l'onglet Documents du
ticket, la balise générée pourra être aussi utilisé pour insérer l'image
dans la description du ticket.

Un message confirme la bonne création du ticket accessible en cliquant
sur le nom du ticket apparaissant en vert.

Une demande de validation peut être effectuée à l'ouverture du ticket en
indiquant simplement le valideur souhaité.

Remarque : A la saisie du demandeur, du technicien ou d'un groupe
assigné, une information est affichée permettant de déterminer combien
de tickets cette personne ou ce groupe a déjà ouvert ou a déjà en
charge. De la même manière, à la sélection d'un matériel, une vision
simplifiée des tickets en cours sur celui-ci est proposé.

Canal courriel
--------------

Il suffit d'envoyer un courriel à l'adresse définie dans le collecteur.

Voir [Configurer les
collecteurs](config_mailcollector.html "La configuration des collecteurs s'effectue depuis le menu Configuration > Collecteurs").

L'objet du message deviendra le titre du ticket, son corps la
description et enfin les pièces jointes des documents associés.

En activant l'option "**Utiliser du texte riche pour l'assistance**"
dans la configuration générale (onglet assistance), les images présentes
dans le corps du message seront visibles dans la description du ticket.

**Sujet parent :** [Le service d'assistance aux
utilisateurs](../glpi/helpdesk.html "Le service d'Assistance aux utilisateurs de GLPI")
