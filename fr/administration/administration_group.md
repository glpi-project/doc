Administrer les groupes
=======================

Dans GLPI, administrer les groupes peut se faire à partir du menu
Administration \> Groupes .

Depuis le menu Administration \> Groupes , il est possible d'ajouter,
modifier, supprimer des groupes, de faire des recherches et de les
exporter.

Les groupes peuvent être définis sous forme d'arborescence afin de
faciliter la navigation et la recherche. Exemple :
`Direction > Département > Service` ou `Support N3 > Réseau > LAN`

Les groupes peuvent avoir plusieurs fonctions : rassemblement
d'utilisateurs par *compétences* (par exemple les techniciens réseaux,
ou les administrateurs de base de données) pour le helpdesk,
*regroupements organisationnels* (par exemple tous les ordinateurs de la
direction, ou du service comptable) mais aussi *ensemble de personnes à
notifier*.

Les options disponibles permettant de régler ces comportements sont
**Visible dans un ticket** (groupe du demandeur et/ou attribution à ce
groupe), **Peut être notifié** (destinataire de notifications) et enfin
**Peut contenir** (matériel et/ou utilisateurs).

Dans la fiche des matériels, 2 notions de groupes sont disponibles :
*groupe technique*, qui indique quel groupe de personnes a la charge du
matériel (équivalent pour un groupe du responsable technique), et groupe
qui indique à quel *groupe* de matériels celui-ci appartient.

Remarque : le groupe technique peut permettre l'auto-attribution d'un
ticket à un groupe de techniciens. Voir les catégories de tickets dans
le chapitre [Configurer les
intitulés](config_dropdown.html "Les intitulés se configurent depuis le menu Configuration > Intitulés").
De la même manière, il peut être utilisé dans les [Règles métier pour
les
tickets](administration_rule_ticket.html "Lors de la création d'un ticket, un mécanisme permet de modifier les attributs du ticket de manière automatique.").

**Astuce** : si toutes les options sont à non, le groupe n'apparaîtra
dans aucune liste de sélection. Cela peut être utile pour un groupe
supprimé et conservé pour l'historique. C'est aussi utile pour ajouter
des groupes vides dans l'arborescence.

Un groupe peut avoir ou plusieurs superviseurs, notion utilisable
ensuite pour les notifications, par exemple pour envoyer un courriel
au(x) superviseur(s) du groupe à l'ouverture d'un ticket.

Un mécanisme de **délégation** permet à un utilisateur de déclarer des
incidents non pas pour lui mais pour un des membres de ce groupe.

Une secrétaire qui déclare les incidents pour les personnes de la
direction.

Voir
[Notifications](config_notification_notifications.html "Une notification est l'association d'un événement pour un type donné avec un modèle. Une liste destinataire est créée à cet effet.").

Un groupe est attaché à l'entité dans laquelle il est créé et peut
ensuite être visible dans les sous-entités.

Différents onglets supplémentaires affichent, en fonction des options
choisies : les **utilisateurs** (liste, ajout et suppression de
membres), **les matériels gérés** (liste des matériels qui ont ce groupe
technique), la liste des **matériels utilisés** (matériels appartenant à
ce groupe) et **liaison annuaire LDAP** (informations permettant à GLPI
retrouver le groupe et ses utilisateurs dans l'annuaire).

La liaison LDAP rend possible l'import et la synchronisation des groupes
depuis un annuaire. Si l'authentification externe est utilisée, l'import
les groupes depuis un annuaire LDAP, et l'affectation des utilisateurs
dans les groupes est possible. Un **bouton Liaison annuaire LDAP** est
disponible depuis la liste des groupes. Si plusieurs annuaires sont
configurés, le choix de l'un d'entre eux est proposé, sinon le
formulaire de recherche est directement accessible. En fonction des
modalités de recherche des groupes (voir [Authentifier des utilisateurs
à partir d'annuaires
LDAP](config_auth_ldap.html "L'interface de GLPI avec les annuaires LDAP se configure depuis le menu Configuration > Authentification > Annuaire LDAP.")),
un **filtre de recherche dans les groupes** et/ou **un filtre de
recherche des utilisateurs** apparaissent : ceux-ci permettent d'affiner
la liste affichée et prête à être importée. Si GLPI est utilisé en
multi-entités, il est nécessaire de sélectionner l'entité de destination
du groupe, ainsi que sa visibilité dans les sous-entités.

L'association d'un utilisateur à un groupe est soit statique, c'est à
dire réalisée à l'aide de l'interface de GLPI, soit dynamique quand
celle-ci est déduite automatiquement de l'annuaire LPAP.

Remarque : l'import des groupes ne peut pas être filtré par entité. De
plus, aucune fonction de synchronisation des groupes est disponible. Le
seul moyen de rafraîchir la liste des membres d'un groupe depuis un
annuaire est de resynchroniser les utilisateurs (voir [Importer des
utilisateurs depuis une source
externe](administration_user_import.html)).

Important : dans les versions inférieures à GLPI 0.80 il n'existait pas
de typage entre utilisateur et groupe. Lors de la migration, les
utilisateurs associés à des groupes dont au moins une information LDAP
est remplie auront un type de liaison dynamique. En d'autres termes, une
liaison manuelle réalisée dans une version inférieure de l'application
sur un groupe provenant de l'annuaire LDAP sera perdue.

-   **[Ajouter un groupe](../glpi/administration_group_t_create.html)**\
-   **[Supprimer un
    groupe](../glpi/administration_group_t_delete.html)**\

**Sujet parent :** [Administrer les contrôles
d'accès](../glpi/access_control_intro.html "Cette partie décrit comment administrer le système de contrôle d'accès qui permet à chaque utilisateur d'accéder à un contexte d'utilisation spécifique.")
