Pour aller plus loin
====================

Les catégories
--------------

Une catégorie peut être hiérarchisée :
- en sélectionnant une catégorie mère depuis le premier onglet via le champ "Comme enfant de" ;
- en ajoutant une catégorie fille depuis le second onglet (Catégories de ticket ou de tâches).


- **Les catégories de tickets**

  Contrairement à son nom, les catégories de tickets sont également utilisées par les problèmes et les changements.
  La gestion des catégories est accessible depuis le menu des intitulés : ***Configuration > Intitulés > Catégories des tickets***.

  ![image](docs/image/categorieTicket.png)

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

    Les catégories de tickets sont un des éléments permettant de faire des traitements automatiques à la création d'un ticket (voir [Règles métier pour les tickets](index.php?fr/7_Module_Administration/05_Règles/04_Règles_métier_pour_les_tickets.md "Lors de la création d'un ticket, un mécanisme permet de modifier les attributs du ticket de manière automatique.")).


- **Les catégories de tâches**
  
  Elles servent à catégoriser les tâches pour faciliter leur traitement ou à des fins statistiques.

[Les règles d'ordonnancement](index.php?fr/04_Module_Assistance/03_Définir_la_matrice_de_calcul_de_la_priorité.md)
------------------------

Configurer la matrice d'attribution des priorités en fonction de l'urgence et de l'impact : limiter les niveaux d'urgence et d'impact disponibles.

[Consulter et gérer les plannings](index.php?fr/04_Module_Assistance/09_Planning.md)
------------------------
Suivez les tâches planifiées.

La notification par courrier électronique
-----------------------------------------
Les actions sur les tickets peuvent entrainer l'envoi de notification suivant un évènement déclencheur (création d'un ticket, réponse à enquête de satisfaction...).
Voir **configurer les notifications**.

[Les statistiques](index.php?fr/04_Module_Assistance/10_Statistiques.md)
------------------
Les rapports concernant les tickets, les problèmes ou les changements sont disponibles dans le menu ***Assistance > Statistiques***.

-------------
**Sujet parent :** [Le service d'assistance aux utilisateurs](index.php?fr/04_Module_Assistance/01_Module_Assistance.md** "Le service d'Assistance aux utilisateurs de GLPI")
