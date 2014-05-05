Ticket Templates
================

Ticket Templates

Just as inventory objects, a notion of a template exists for the
tickets. A template allows you to customize interface declaration of a
ticket based on ticket type and category.

Management templates is done via the icon:
![image](../image/menu_addtemplate.png) located in the menu bar.

Behavior that can be changed are :

-   The list of fields to be mandatory for opening a ticket
-   The list of fields whose value will be preset when displaying the
    form
-   The list of fields that should be hidden

Note: Pour le contrôle des champs obligatoire, seuls les champs
disponibles dans l'interface de l'utilisateur sont contrôlés. Donc, si
un champ est défini comme obligatoire mais qu'il n'est pas proposé dans
l'interface il ne générera pas d'erreur. A la saisie des champs
obligatoires, sont affichées les interfaces dans lesquelles ils sont
utilisés.

A template is linked to the entity in which it was defined, and may be
visible in the sub-entities.

Des gabarits par défaut peuvent être définis pour les entités ou les
profiles. Pour les profiles ne sont associables que des gabarits de
l'entité racine visibles de toutes les sous-entités. Des gabarits par
défaut peuvent également être défini pour chaque catégorie de ticket (un
pour chaque type, voir [Ticket
Categories](helpdesk_advanced_categories.html "Ticket Categories")).

A la création du ticket, le gabarit utilisé est par ordre de priorité :

1.  Celui défini dans la catégorie définie pour le type défini
2.  Celui défini par défaut pour le profil courant de l'utilisateur
3.  Celui défini par défaut pour l'entité de création du ticket

Important: Dans les 2 derniers cas, si le gabarit prédéfinit un nouveau
couple type/catégorie, le premier cas est alors testé de nouveau avec
ces nouvelles valeurs.

Note: A la mise à jour du ticket, le même ordre de priorité est utilisé
pour déterminer les champs obligatoires.

Note: Si un des paramètre (entité, profil, type ou catégorie) est
modifié lors de la saisie du ticket, le gabarit utilisé est alors
redéterminé en fonction des nouvelles valeurs.

**Parent topic:** [Advanced](../glpi/helpdesk_advanced.html "Advanced")
