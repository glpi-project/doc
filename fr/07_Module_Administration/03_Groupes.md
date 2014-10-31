Administrer les groupes
=======================

Il est possible d'ajouter, modifier, supprimer des groupes, de faire des recherches et de les exporter.

Les groupes peuvent être définis sous forme d'arborescence afin de faciliter la navigation et la recherche. 

    Exemple :
    Direction > Département > Service
    ou
    Support N3 > Réseau > LAN

Les groupes peuvent avoir plusieurs fonctions de rassemblement d'utilisateurs par : 
- *compétences* (par exemple les techniciens réseaux, ou les administrateurs de base de données) pour le helpdesk,
- *regroupements organisationnels* (par exemple tous les ordinateurs de la direction ou du service comptable) mais aussi *ensemble de personnes à notifier*.

Les options disponibles permettant de régler ces comportements sont :
- **Visible dans un ticket** (groupe demandeur et/ou attribution à ce groupe) ; 
- **Peut être notifié** (destinataire de notifications) ;
- **Peut être superviseur** (uniquement pour un [projet](index.php?fr/06_Module_Outils/02_Projets/01_Projets.md "voir gérer les projets")) ;
- **Peut contenir** (matériel et/ou utilisateurs).

Dans la fiche des matériels, 2 notions de groupes sont disponibles :
*groupe technique*, qui indique quel groupe de personnes a la charge du matériel (équivalent pour un groupe du responsable technique), et groupe qui indique à quel *groupe* de matériels celui-ci appartient.

***Remarque :** le groupe technique peut permettre l'auto-attribution d'un ticket à un groupe de techniciens. Voir les catégories de tickets dans le chapitre [Configurer les intitulés](config_dropdown.html "Les intitulés se configurent depuis le menu Configuration > Intitulés").
De la même manière, il peut être utilisé dans les [Règles métier pour les tickets](administration_rule_ticket.html "Lors de la création d'un ticket, un mécanisme permet de modifier les attributs du ticket de manière automatique.").*

***Astuce*** : si toutes les options sont à *non*, le groupe n'apparaîtra dans aucune liste de sélection. Cela peut être utile pour un groupe supprimé et conservé pour l'historique. C'est aussi utile pour ajouter des groupes vides dans l'arborescence.

Un groupe peut avoir ou plusieurs superviseurs, notion utilisable ensuite pour les notifications, par exemple pour envoyer un courriel au(x) superviseur(s) du groupe à l'ouverture d'un ticket. Voir [Notifications](config_notification_notifications.html "Une notification est l'association d'un événement pour un type donné avec un modèle. Une liste destinataire est créée à cet effet.").

Un mécanisme de **délégation** permet à un utilisateur de déclarer des incidents non pas pour lui mais pour un des membres de ce groupe.

    Exemple : 
    une secrétaire qui déclare les incidents pour les personnes de la direction.

Les notions de délégation et de superviseur se paramètres dans l'onglet "Utilisateurs" (voir ci-dessous).

L'association d'un utilisateur à un groupe est soit statique, c'est-à-dire réalisée à l'aide de l'interface de GLPI, soit dynamique quand celle-ci est déduite automatiquement de l'annuaire LPAP.

Un groupe est attaché à l'entité dans laquelle il est créé et peut ensuite être visible dans les sous-entités.

Depuis la liste des groupes, vous pouvez importer un groupe depuis un annuaire LDAP via ![image](docs/image/addUserLdap.png)] si l'authentification externe est utilisée. L'affectation des utilisateurs dans les groupes sera automatique.
Si plusieurs annuaires sont configurés, le choix de l'un d'entre eux est proposé, sinon le formulaire de recherche est directement accessible. En fonction des modalités de recherche des groupes (voir [Authentifier des utilisateurs à partir d'annuaires LDAP](config_auth_ldap.html "L'interface de GLPI avec les annuaires LDAP se configure depuis le menu Configuration > Authentification > Annuaire LDAP.")), un **filtre de recherche dans les groupes** et/ou **un filtre de recherche des utilisateurs** apparaissent : ceux-ci permettent d'affiner la liste affichée et prête à être importée. Si GLPI est utilisé en multi-entités, il est nécessaire de sélectionner l'entité de destination du groupe, ainsi que sa visibilité dans les sous-entités.

***Remarque :** l'import des groupes ne peut pas être filtré par entité. De plus, aucune fonction de synchronisation des groupes est disponible. Le seul moyen de rafraîchir la liste des membres d'un groupe depuis un annuaire est de resynchroniser les utilisateurs (voir [Importer des utilisateurs depuis une source externe](index.php?fr/07_Module_Administration/02_Utilisateurs/02_Importer_des_utilisateurs.md).

> Important : dans le cas d'une migration depuis une version inférieure à GLPI 0.80, toute liaison manuelle réalisée préalablement sur un groupe provenant de l'annuaire LDAP sera perdue.


Les différents onglets
----------------------

-   **Onglet "Sous-groupes"**
    Permet d'ajouter un sous-groupe au groupe sélectionné et liste les sous-groupes existants. 
 
-   **[Onglet "Eléments utilisés"](index.php?fr/Les_différents_onglets/Onglet_Eléments.md)**
    Liste les éléments pour lesquels le champ *Groupe* correspond à ce groupe. 
    La recherche peut être étendue ou sous-groupes ainsi qu'aux membres du groupe (champ *Utilisateur* de l'objet).

-   **[Onglet "Eléments gérés"](index.php?fr/Les_différents_onglets/Onglet_Eléments.md)**
    Liste les éléments pour lesquels le champ *Groupe Technique* correspond à ce groupe.
     La recherche peut être étendue ou sous-groupes ainsi qu'aux membres du groupe (champ *Responsable technique* de l'objet).


-   **Onglet "Liaison annuaire LDAP**
    Regroupe les informations permettant à GLPI de retrouver le groupe et ses utilisateurs dans l'annuaire LDAP. 


-   **Onglet "Utilisateurs**
    Cet onglet permet d'ajouter un utilisateur à ce groupe en définissant s'il est *délégataire* et/ou *superviseur* de ce groupe.
    Il liste également les utilisateurs de ce groupe avec recherche possible via critère (délégataire ou superviseur) et également dans les sous-groupe du groupe courant.

-   **Onglet "Notifications"**
    Liste des notifications pour lesquelles ce groupe est destinataire ou le superviseur de ce groupe.
    ![image](docs/image/notifGroupe.png)]


-   **[Onglet "Tickets créés"](index.php?fr/Les_différents_onglets/Onglet_Tickets.md)**
    Liste les tickets dans lesquels le groupe est demandeur.


-   **[Onglet "Historique"](index.php?fr/Les_différents_onglets/Onglet_Historique.md)**


-   **[Onglet "Tous"](index.php?fr/Les_différents_onglets/Onglet_Tous.md)**
     Pour un élément, toutes les informations sont affichées sur une seule page.


Les différentes actions
-----------------------
-   **[Ajouter un groupe](index.php?fr/Les_différentes_actions/Créer_un_nouvel_objet.md)**
-   **[Voir un groupe](index.php?fr/Les_différentes_actions/Visualiser_un_objet.md)**
-   **[Modifier un groupe](index.php?fr/Les_différentes_actions/Modifier_un_objet.md)**
-   **[Supprimer un groupe](index.php?fr/Les_différentes_actions/Supprimer_un_objet.md)**
-   **[Associer un élément à un groupe](index.php?fr/Les_différentes_actions/Onglet_Eléments.md)**
-   **[Associer un ticket à un groupe](index.php?fr/Les_différentes_actions/Onglet_Tickets.md)**
-   **[Transférer un groupe vers une autre entité](index.php?fr/Les_différentes_actions/Transférer_un_objet.md)**

--------
**Sujet parent :** [Administrer les contrôles d'accès](../glpi/access_control_intro.html "Cette partie décrit comment administrer le système de contrôle d'accès qui permet à chaque utilisateur d'accéder à un contexte d'utilisation spécifique.")

**Sujet parent :** [Module Administration](index.php?fr/07_Module_Administration/01_Module_Administration.md "Le module Administration permet d'administrer les utilisateurs, groupes, entités, profils, règles et dictionnaires et offre des outils de maintenance de l'application").