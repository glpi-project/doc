Les gabarits de tickets
=======================

Les gabarits de tickets

Tout comme les objets d'inventaire, une notion de gabarit existe pour
les tickets. Un gabarit permet de personnaliser l'interface de
déclaration d'un ticket en fonction du type de ticket et de la
catégorie.

La gestion des gabarits se réalise via l'icône :
![image](../image/menu_addtemplate.png) située dans la barre de menu.

Les comportements pouvant être modifiés sont :

-   la liste de champs devant être obligatoires pour l'ouverture d'un
    ticket ;
-   la liste des champs dont la valeur sera prédéfinie lors de
    l'affichage du formulaire ;
-   la liste des champs qui doivent être masqués.

Remarque : Pour le contrôle des champs obligatoire, seuls les champs
disponibles dans l'interface de l'utilisateur sont contrôlés. Donc, si
un champ est défini comme obligatoire mais qu'il n'est pas proposé dans
l'interface il ne générera pas d'erreur. A la saisie des champs
obligatoires, sont affichées les interfaces dans lesquelles ils sont
utilisés.

Un gabarit est lié à l'entité dans laquelle il a été défini, et peut
être visible dans les sous-entités.

Des gabarits par défaut peuvent être définis pour les entités ou les
profiles. Pour les profiles ne sont associables que des gabarits de
l'entité racine visibles de toutes les sous-entités. Des gabarits par
défaut peuvent également être défini pour chaque catégorie de ticket (un
pour chaque type, voir [Les catégories de
tickets](helpdesk_advanced_categories.html "Les catégories de tickets")).

A la création du ticket, le gabarit utilisé est par ordre de priorité :

1.  Celui défini dans la catégorie définie pour le type défini
2.  Celui défini par défaut pour le profil courant de l'utilisateur
3.  Celui défini par défaut pour l'entité de création du ticket

Important : Dans les 2 derniers cas, si le gabarit prédéfinit un nouveau
couple type/catégorie, le premier cas est alors testé de nouveau avec
ces nouvelles valeurs.

Remarque : A la mise à jour du ticket, le même ordre de priorité est
utilisé pour déterminer les champs obligatoires.

Remarque : Si un des paramètre (entité, profil, type ou catégorie) est
modifié lors de la saisie du ticket, le gabarit utilisé est alors
redéterminé en fonction des nouvelles valeurs.

**Sujet parent :** [Pour aller plus
loin](../glpi/helpdesk_advanced.html "Pour aller plus loin")
