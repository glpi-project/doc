Interface simplifiée
====================

![image](docs/image/assistancePO.png)

- Droits **Tickets** :

  - ***Voir mes tickets*** : voir tous les tickets pour lesquels je suis le rédacteur, le demandeur ou l'observateur ainsi que leurs suivis publics.  

  - ***Créer*** : ajoute un menu Créer un ticket.
  Si vous n'avez pas ce droit, lors de la connexion vous arrivez directement sur la liste des tickets. Dans le cas contraire, vous arriver sur la page d'accueil qui affiche mes tickets, classés par statut, avec le menu Créer un ticket en titre de tableau.

  - ***Voir tickets des groupes*** : voir les tickets créés ayant en groupe demandeur ou observateur un de mes groupes. Exemple, je suis membre du groupe Direction ; je verrai tous les tickets ayant en demandeur de groupe Direction.

- Droits **Suivis** :

  - ***Voir les publics*** : voir tous les suivis typés en suivi public.

  - ***Éditer les suivis (auteur)*** : modifier les suivis que vous avez créés.

  - ***Ajouter suivi (demandeur)*** : ajouter un suivi à un ticket pour lequel je suis rédacteur ou demandeur. Ce droit permet également d'ajouter un document à un ticket.

  - ***Ajouter suivi (groupes associés)*** : ajouter un suivi à un ticket pour lequel le groupe demandeur est un des groupes dont je suis membre.

- Droits **Tâches** :

  - ***Voir les publics*** : voir toutes les tâches typées en tâche publique.
    Ce droit permet également l'affichage de l'onglet *Tâches* d'un ticket.

- Droits **Validations** :

  - ***Valider un incident*** : répondre à une demande de validation concernant un ticket de type Incident. Le fait d'avoir ce droit vous fait apparaitre dans la liste des personnes pouvant valider.

  - ***Valider une demande*** : répondre à une demande de validation concernant un ticket de type Demande. Le fait d'avoir ce droit vous fait apparaitre dans la liste des personnes pouvant valider.

  - ***Créer pour une demande*** : envoyer une demande de validation pour un ticket de type Demande.

  - ***Créer pour un incident*** : envoyer une demande de validation pour un ticket de type Incident.

  L'onglet Validation ne s'affichera dans le ticket que si vous avez un des droits de création de validation. Dans le cas contraire, il ne s'affichera que si vous avez un des droits de validation et uniquement si le type du ticket correspond au droit.


![image](docs/image/associationsPO.png)

- ***Liaison avec les matériels pour la création de tickets*** : 
  - ***Mes éléments*** : matériels dont le type est autorisé et pour lesquels je suis l'utilisateur.
  - ***Tous les éléments*** : tous les matériels de mon entité dont le type est autorisé

- ***Matériels associables à un ticket*** : types de matériels sur lesquels pourront porter un ticket. 
  Pour ajouter un type il suffit de cliquer dans la zone blanche et de choisir le type autorisé ou Tous si vous voulez autoriser tous les types.
  Pour supprimer un type, il suffit de cliquer sur la croix à gauche de son nom ou sur Aucun si vous ne voulez autoriser aucun élément associé

- ***Gabarit de ticket par défaut*** : gabarit qui sera appliqué au profil.

  >Attention : le gabarit étant appliqué au profil qui est un élément de la configuration générale, la liste ne contient que les gabarits récursifs de l'entité racine.

- ***Voir les matériels de mes groupes*** : matériels dont le type est autorisé et pour lesquels je suis membre du groupe.

Interface standard
==================

Les champs communs avec l'interface simplifiée ne seront pas détaillés.
Les 6 droits standard ne seront pas listés (voir [Explication des droits](index.php?fr/07_Module_Administration/07_Profils/01_Profils.md)).

![image](docs/image/assistance.png)
- ***Tickets: Gabarit de ticket par défaut*** : Voir interface simplifiée.

![image](docs/image/tickets.png)
- Droits **Tickets** :

  - ***Voir mes tickets*** : Voir interface simplifiée.

  - ***Etre en charge*** : être assigné à un ticket. Tous les utilisateurs de ce profil ayant cette option validée seront présents dans la liste des techniciens pouvant être assignés à un ticket.

  - ***Voler*** : devenir le technicien assigné au ticket. Dans ce cas, la liste des techniciens pouvant être assignés au ticket ne comportera que le nom de la personne connectée.

  - ***Modifier la priorité*** : modifier la priorité afin de passer, entre autre, un incident en priorité Majeure. 
    Modifier la priorité annule donc le calcul automatique défini dans la configuration générale.

  - ***Voir tous les tickets*** : voir de tous les tickets créés dans l'entité.

  - ***Voir tickets des groupes*** : Voir interface simplifiée

  - ***Voir assignés*** : voir les tickets pour lesquels je suis le technicien ou ayant en groupe de techniciens un de mes groupes.

  - ***Assigner*** : ajouter un technicien, un groupe de techniciens ou un fournisseur à un ticket.

![image](docs/image/suivisTaches.png)
- Droits **Suivis** : 

  - ***Voir les publics*** : Voir interface simplifiée.
  - ***Éditer les suivis (auteur)*** : Voir interface simplifiée.
  - ***Ajouter suivi (demandeur)*** : Voir interface simplifiée.

  - ***Voir les privés*** : voir tous les suivis typés en suivi privé.

  - ***Éditer tous*** : modifier tous les suivis, quel que soit l'auteur.
    ***Remarque :** un technicien assigné à un ticket ou membre du groupe assigné, peut également modifier tous les suivis*.

  - ***Ajouter à tous les tickets*** : ajouter un suivi à tous les tickets de l'entité.

  - ***Ajouter suivi (groupes associés)*** : Voir interface simplifiée.

- Droits **Tâches** : 

  - ***Voir les publics*** : Voir interface simplifiée.

  - ***Voir les privés*** : voir toutes les tâches typées en tâche privée.

  - ***Éditer tous*** : modifier toutes les tâches, quel que soit l'auteur.
    ***Remarque :** un technicien assigné à un ticket ou membre du groupe assigné, peut également modifier toutes les tâches*.

  - ***Ajouter à tous les tickets*** : ajouter une tâches à tous les tickets de l'entité.

![image](docs/image/validations.png)
Voir droits **Validation** de l'interface simplifiée.

![image](docs/image/associations.png)
Voir interface simplifiée.

![image](docs/image/visibilite.png)

- Droits **Planning** : 

  - ***Voir mon planning personnel*** : ne voir que les données de mon planning.

  - ***Voir tous les plannings*** : voir les données de tous les plannings

  - ***Voir les planning des personnes de mes groupes*** : vois les données des plannings des personnes membres de mes groupes.

  Suivant les droits du profil, vous pouvez voir les notes publiées dans le planning ainsi que les tâches d'un ticket, d'un problème ou d'un changement.


![image](docs/image/problemes.png)

 - ***Voir (auteur)*** : voir les problèmes pour lesquels je suis demandeur ou membre du groupe demandeur, ou observateur ou membre du groupe observateur, ou le technicien assigné ou membre du groupe assigné.
   Ce droit permet également de :
   - voir l'onglet Coûts,
   - voir l'onglet Tâches,
   - créer une tâche si je suis le technicien assigné ou membre du groupe assigné
   - résoudre le problème si je suis le technicien assigné ou membre du groupe assigné.

 - ***Voir tous*** : voir toutes les données d'un problème.


![image](docs/image/changements.png)
Droit **Changements** :

 - ***Voir (auteur)*** : voir les changements pour lesquels je suis demandeur ou membre du groupe demandeur, ou observateur ou membre du groupe observateur, ou le technicien assigné ou membre du groupe assigné.
   Ce droit permet également de :
   - voir l'onglet Coûts,
   - voir l'onglet Tâches,
   - créer une tâche si je suis le technicien assigné ou membre du groupe assigné
   - résoudre le changement si je suis le technicien assigné ou membre du groupe assigné.

 - ***Voir tous*** : voir toutes les données d'un changement.

Droit **Validation** :

  - ***Créer*** : envoyer une demande de validation

  - ***Purger*** : supprimer une demande de validation

  - ***Valider*** : répondre à une demande de validation. Le fait d'avoir ce droit vous fait apparaitre dans la liste des personnes pouvant valider.

  - ***Créer pour une demande*** : envoyer une demande de validation pour un ticket de type Demande.

  - ***Créer pour un incident*** : envoyer une demande de validation pour un ticket de type Incident.

  L'onglet Validation ne s'affichera dans le ticket que si vous avez un des droits Validation.

---------
**Sujet parent :** [Module Administration](index.php?fr/07_Module_Administration/07_Profils/01_Profils.md "La gestion des profils").

**Sujet parent :** [Module Administration](index.php?fr/07_Module_Administration/01_Module_Administration.md "Le module Administration permet d'administrer les utilisateurs, groupes, entités, profils, règles et dictionnaires et offre des outils de maintenance de l'application").