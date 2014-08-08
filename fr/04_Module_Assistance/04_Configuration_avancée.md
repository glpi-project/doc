Pour aller plus loin
====================

Les catégories
--------------

- **Les catégories de tickets**

  Contrairement à son nom, les catégories de tickets sont également utilisées par les problèmes et les changements.
  La gestion des catégories est accessible depuis le menu des intitulés : ***Configuration > Intitulés > Catégories des tickets***.

  ![image](docs/image/categorieTicket.png)

  Une catégorie peut être hiérarchisée :
  - en ajoutant une catégorie mère depuis le premier onglet via le champ "Comme enfant de" ;
  - en ajoutant une catégorie fille depuis le second onglet (Catégories de ticket).

  Un responsable et/ou un groupe technique peuvent être ajoutés à cette catégorie et serviront pour les notifications.

  Vous pouvez également associé une catégorie de la base de connaissance à cette catégorie. Cela aura pour action d'enregistrer la solution de l'objet (si souhaité) dans cette catégorie.

  ***Exemple :*** 
  - catégorie de ticket : panne disque dur
  - champ Base de connaissance de la catégorie : Panne > Ordinateur
  Si la catégorie "Panne disque dur" est sélectionnée dans le ticket, lors de l'ajout de la solution du ticket dans la base de connaissance, celle-ci sera stockée dans "Panne > Ordinateur".

  Une catégorie peut être invisible dans l'interface simplifiée (pour réduire la liste des catégories présentées aux utilisateurs finaux).
  Elle peut aussi être visible ou pas pour les incidents, les demandes, les problèmes ou les changements.

  Enfin, un gabarit peut être associé à cette catégorie et sera chargé lors du choix de cette catégorie dans l'objet. Ce gabarit peut être différent entre les demandes et les incidents.


  La catégorisation faciliter le traitement d'un objet. Par exemple, pour un ticket, en fonction de la configuration souhaitée, le demandeur peut indiquer une catégorie, et le technicien la modifier.

    Il est important, lors de la mise en place du Helpdesk, de bien réfléchir à la liste des catégories disponibles : en effet, un trop grand nombre visible par les utilisateurs peut perturber la saisie, alors qu'un nombre trop faible ne permettra pas de qualifier correctement le besoin.

    Les catégories de tickets sont un des éléments permettant de faire des traitements automatiques à la création d'un ticket (voir [Règles métier pour les tickets](administration_rule_ticket.html "Lors de la création d'un ticket, un mécanisme permet de modifier les attributs du ticket de manière automatique.")).


-   **[Les gabarits de
    tickets](../glpi/helpdesk_advanced_templates.html)**\
     Les gabarits de tickets
-   **[Les collecteurs](../glpi/helpdesk_advanced_collectors.html)**\
     Les collecteurs
-   **[Les tickets
    récurrents](../glpi/helpdesk_advanced_recurrent.html)**\
     Les tickets récurrents
-   **[Les coûts liés](../glpi/helpdesk_advanced_cost.html)**\
     Les coûts liés
-   **[Liens entre tickets](../glpi/helpdesk_ticket_link.html)**\
     Les relations entre les tickets : liaison et duplication
-   **[Modifier les règles
    d'ordonnancement](../glpi/helpdesk_advanced_ordering.html)**\
     Configurer la matrice d'attribution des priorités en fonction de
    l'urgence et de l'impact : limiter les niveaux d'urgence et d'impact
    disponibles.
-   **[Consulter et gérer les
    plannings](../glpi/helpdesk_planning.html)**\
     Les plannings se gèrent depuis le menu Assistance \> Planning
-   **[Les délais de résolutions d'incidents ou
    SLA](../glpi/helpdesk_advanced_sla.html)**\
     Les délais de résolutions d'incidents ou SLA
-   **[Les règles métier de modification et affectation des
    tickets](../glpi/helpdesk_advanced_businessrules.html)**\
     Les règles métier de modification et affectation des tickets
-   **[Gérer les problèmes](../glpi/helpdesk_advanced_problems.html)**\
     La gestion des problèmes
-   **[Gérer les changements](../glpi/helpdesk_advanced_changes.html)**\
     La gestion des changements
-   **[La notification par courrier
    électronique](../glpi/helpdesk_advanced_notifications.html)**\
     La notification par courrier électronique
-   **[Clôture
    administrative](../glpi/helpdesk_advanced_administrativeclose.html)**\
     Passe d'un ticket du *statut* résolu à *clos*
-   **[La satisfaction](../glpi/helpdesk_ticket_satisfaction.html)**\
     Le résultat de l'enquête de satisfaction d'un ticket,
    caractéristiques et utilisation
-   **[Visualiser les statistiques](../glpi/helpdesk_stat.html)**\
     Les rapports concernant les tickets sont disponibles dans le menu
    Assistance \> Statistiques

**Sujet parent :** [Le service d'assistance aux
utilisateurs](../glpi/helpdesk.html "Le service d'Assistance aux utilisateurs de GLPI")
