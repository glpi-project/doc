Déléguer l'administration par entité
====================================

Délégation de certains paramètres d'administration par entité

Dans le cadre d'une utilisation de GLPI en multi-entités, la gestion de
certains paramètres de configuration peut s'effectuer différemment pour
chaque entité.

Règles par entités
------------------

L'ensemble des règles dont l'action est *associée à une entité* est
listée dans l'onglet *Règles* : ordinateurs, habilitations et tickets
ouverts par courriel.

Un formulaire d'ajout pour chaque type de règle permet de créer
automatiquement celle-ci avec une action d'assignation à l'entité
pré-remplie.

Informations avancées
---------------------

Cet onglet renferme deux types de paramètres. Ceux en rapport avec les
règles génériques d'affectation à l'entité et ceux concernant
l'interface de recherche des utilisateurs.

Afin de donner à un administrateur d'une entité la possibilité
d'importer ses utilisateurs d'un annuaire LDAP, il est nécessaire de
préciser certains paramètres : l'annuaire associé à l'entité et le
filtre de recherche n'est pas obligatoire. Ce dernier n'est important
que si la définition d'une entité se fait par l'ajout d'une restriction
sur le filtre LDAP. Il est également possible de définir le domaine de
messagerie spécifique à l'entité qui peut être utilisé pour affecter les
utilisateurs à cette entité.

Trois options sont disponibles pour l'utilisation des règles
d'affectation génériques à l'entité : le TAG provenant de l'outil
d'inventaire, l'information LDAP représentant l'entité (par exemple le
DN de l'entité, voir [Attribuer des habilitations à un
utilisateur](administration_rule_right.html "GLPI dispose d'un moteur d'habilitations dynamiques qui se base sur des sources externes d'authentification. Il est accessible depuis le menu Administration > Règles > Règles d'affectation d'entité et de droits.")),
et le domaine de messagerie associé à celle-ci.

Notifications
-------------

Cet onglet est disponible si l'utilisateur dispose du droit
`Notifications`. Il regroupe toutes les options configurables par entité
qui concernent les notifications. Le **courriel de l'administrateur**,
le **nom de l'administrateur**, le **préfixe pour le sujet des
notifications** (GLPI par défaut si vide), l'**adresse de réponse**
(voir [Configure follow-up emails and
alerts](config_notification_configuration.html "The general configuration of notifications is done from the menu Setup > Notifications > Email followups configuration."))
et la **signature**.

Pour chaque entité vous pouvez définir le délai appliqué pour l'envoi
des notifications. Celui-ci permet par exemple dans le cas de
modifications multiples rapides d'un ticket de n'envoyer qu'une
notification.

Il propose également toutes les configurations liées au alertes
disponibles : alertes sur les cartouches, les consommables, les
licences, les contrats, les informations financières, les réservations
et les tickets non résolus. Pour certaines notifications, il est
également possible d'anticiper l'envoi de celle-ci par rapport à la date
butoir (fin de garantie, fin de contrat...).

Important: Chaque option d'alerte est associée à une action automatique.
Si l'action est désactivée par l'administrateur de GLPI, aucune
notification ne sera envoyée.

Assistance
----------

Cet onglet est disponible si l'utilisateur dispose du droit
`Assistance`. Il propose les options suivantes :

-   **Clôture automatique des tickets résolus après un certain nombre de
    jours** : une action automatique permet de clore automatiquement les
    tickets résolus pour lesquels le demandeur n'a pas validé la
    solution au bout d'un certain temps. Ce délai est celui défini dans
    ce paramètre (ou celle de la configuration globale en fonction du
    choix effectué). Une valeur nulle permettra la clôture automatique
    du ticket dès sa résolution.
-   **Affectation automatique des tickets** : permet de définir le
    comportement utilisé pour l'affectation automatique des tickets. Il
    est possible de désactiver cette option ou d'utiliser les données de
    responsable technique du matériel et de la catégorie du ticket dans
    l'ordre souhaité.
-   **Type par défaut pour les tickets** : permet de définir le type de
    ticket par défaut dans le cas où celui-ci n'est pas défini (cas de
    collecteurs mail par exemple)
-   **Calendrier** : permet le calcul des temps d'attente des tickets et
    le décalage des dates d'échéance en fonction d'un calendrier
    spécifique à chaque entité.
-   **Configuration de l'enquête de satisfaction** : permet d'activer
    pour l'entité l'enquête de satisfaction. L'enquête peut être gérée
    en interne dans GLPI ou déléguée à un système tiers. 2 autres
    paramètres sont disponibles :
    -   Le délai entre la clôture du ticket et le lancement de l'enquête
    -   le pourcentage de tickets pour lequel il faut réaliser une
        enquête

    Pour les enquêtes externes, vous pouvez générer automatiquement à
    partir de balises l'adresse web pour accéder à l'enquête. Les
    balises disponibles sont :
    -   [TICKET\_ID] : id du ticket
    -   [TICKET\_NAME] : nom du ticket
    -   [TICKET\_CREATEDATE] : date de création du ticket
    -   [TICKET\_SOLVEDATE] : date de résolution du ticket
    -   [REQUESTTYPE\_ID] : id de la source de la demande
    -   [REQUESTTYPE\_NAME] : nom de la source de la demande (téléphone,
        helpdesk,...)
    -   [ITEMTYPE] : type du matériel associé au ticket (ordinateur,
        imprimante,...)
    -   [ITEM\_ID] : id du matériel associé au ticket
    -   [ITEM\_NAME] : nom du matériel associé au ticket
    -   [TICKET\_PRIORITY] : priorité du ticket
    -   [TICKETCATEGORY\_ID] : id de la catégorie du ticket
    -   [TICKETCATEGORY\_NAME] : nom de la catégorie du ticket
    -   [TICKETTYPE\_ID] =\> type du ticket
    -   [TICKETTYPE\_NAME] =\> nom du type de ticket (gestion des
        incidents ou demandes de services)
    -   [SOLUTIONTYPE\_ID] =\> id du type de solution
    -   [SOLUTIONTYPE\_NAME] =\> nom de la solution
    -   [SLA\_ID] =\> id du sla associé au ticket
    -   [SLA\_NAME] =\> nom du sla associé au ticket
    -   [SLALEVEL\_ID] =\> id du niveau de sla
    -   [SLALEVEL\_NAME] = nom du niveau de sla

Parc
----

Cet onglet propose la configuration de la gestion des différentes dates
présentes dans les informations administratives et financières. Les
actions automatiques possibles sont :

-   le remplissage au passage du matériel dans un statut particulier ;
-   le remplissage par copie d'une autre date ;
-   aucune gestion automatique.

L'option Entité de création des logiciels permet de rediriger la
création des logiciels vers une autre entité se trouvant dans un niveau
supérieur de la hiérarchie. Cette fonctionnalité s'applique sur la
totalité des logiciels de l'entité : si vous désirez choisir la
redirection pour certains logiciels seulement, vous pouvez utiliser le
*dictionnaire des logiciels*.

**Parent topic:** [Administrer les
entités](../glpi/administration_entity.html "Dans GLPI, administrer les entités peut se faire à partir du menu Administration > Entités.")
