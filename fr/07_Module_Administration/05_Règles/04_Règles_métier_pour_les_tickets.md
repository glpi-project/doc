Règles métier pour les tickets
==============================

Un mécanisme permet de modifier les attributs du ticket de manière automatique à la création ou à la mise à jour d'un ticket.


Les critères disponibles sont tous les attributs du ticket (titre, description, statut, catégorie, urgence, impact, priorité, source de la demande, type de matériels, demandeurs groupe/utilisateur/lieu, attribué à fournisseur/groupe/technicien, type de matériels, entité) ainsi que d'autres liés aux collecteurs de courriels (en-têtes...).

Les actions possibles sont de modifier certains attributs du ticket (statut, catégorie, urgence, impact, priorité, demandeurs groupe/utilisateur/lieu, attribué à fournisseur/groupe/technicien). Il
est aussi possible d'attribuer un ticket à un matériel en fonction de données présentes dans le ticket (attribution sur l'adresse IP, le nom complet et le domaine, l'adresse MAC) ou même d'envoyer une demande de validation.

***Remarque :** les règles métier pour les tickets peuvent être joués à la création et/ou à la mise à jour des tickets en fonction du paramètre défini dans la règle. Lors de la mise à jour, seuls les champs modifiés (par l'action sur le ticket ou par les règles précédemment exécutées) déclenchent les
règles. Ainsi une règle possédant des critères correspondant à des champs non modifiés ne sera pas exécutée.

>Important : le moteur joue toutes les règles les unes après les autres. 
>Le résultat des règles précédentes est passé à la règle en cours. Cela veut dire que si une règle précédente modifie un attribut utilisé par la règle courante, c'est la valeur modifiée de celui-ci qui sera traité.

Dans le cas d'une utilisation de GLPI en multi-entités, les règles métier pour les tickets peuvent être récursives, c'est-à-dire qu'elles peuvent être définies sur une entité avec une application sur l'entité même et sur les sous-entités. 

3 onglets sont accessibles :

- **règles appliquées (nom entité)** : toutes les règles des entités parentes jouées ;
- **règles locales** : la liste des règles définies pour l'entité en cours ;
- **règles applicables dans les sous-entités** : toutes les règles appliquées après celles de
l'entité courante.

**Cas particulier pour les champs Urgence et Impact :**

Si vous définissez une urgence et/ou un impact via une règle métier, il faut penser également à ajouter l'action Priorité Recalculer afin que cette dernière soit bien basée sur les champs que vous venez de définir.

---------
**Sujet parent :** [Module Administration](index.php?fr/07_Module_Administration/01_Module_Administration.md "Le module Administration permet d'administrer les utilisateurs, groupes, entités, profils, règles et dictionnaires et offre des outils de maintenance de l'application").

**Sujet parent :** [Gérer les règles](index.php?fr/07_Module_Administration/05_Règles/01_Gérer_les_règles.md "Gérer les règles").
