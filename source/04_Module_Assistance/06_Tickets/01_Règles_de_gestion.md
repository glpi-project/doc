Comprendre le cycle de vie des tickets
======================================

Chaque profil possède sont propre cycle de vie défini dans une [matrice](index.php?fr/04_Module_Assistance/05_Les_matrices_de_cycle_de_vie.md). Pour le visualiser et le modifier il faut donc ouvrir le profil concerné (menu **Administration > Profils**).

Types de tickets
----------------
Les tickets dans GLPI sont soit des incidents, soit des demandes. Ce champ *type* va permettre d'exécuter certaines actions (voir [les règles métier de modification et affectation des tickets](index.php?fr/07_Module_Administration/05_Règles/04_Règles_métier_pour_les_tickets.md "Les règles métier de modification et affectation des tickets"), [les gabarits de tickets](index.php?fr/Les_différentes_actions/Gérer_les_gabarits.md "Les gabarits de tickets") et [la gestion des problèmes](index.php?fr/04_Module_Assistance/08_Problèmes "La gestion des problèmes"))
et de personnaliser la liste des catégories disponibles.


Les statuts
-----------
ITIL définit le cycle de vie des statuts d'un ticket. Ce cycle de vie est implémenté comme suit dans GLPI :
-   Nouveau
-   En cours (attribué)
-   En cours (planifié)
-   En attente
-   Résolu
-   Clos

Ces statuts ne sont ni paramétrables ni modifiables.

***Remarques :***
*- On peut néanmoins cacher certains statuts suivant le profil (voir [Matrice de cycle de vie](index.php?fr/04_Module_Assistance/05_Les_matrices_de_cycle_de_vie.md)).*

*- Pour aller plus loin dans cette gestion des statuts, voir [Les collecteurs](helpdesk_advanced_collectors.html "Les collecteurs"),
[Les gabarits de tickets](index.php?fr/Les_différentes_actions/Gérer_les_gabarits.md "Les gabarits de tickets") et
[Les règles métier de modification et affectation des tickets](index.php?fr/07_Module_Administration/05_Règles/04_Règles_métier_pour_les_tickets.md "Les règles métier de modification et affectation des tickets").*

L'ordonnancement
----------------
L'ordonnancement des tickets se fait en fonction des renseignements fournis par le demandeur et le technicien :

-   Le demandeur définit l'urgence
-   Le technicien apprécie l'impact
-   La priorité est la résultante de ces deux informations. Elle est calculée automatiquement via une matrice et indique l'importance réelle du ticket

***Remarque :** Pour aller plus loin dans la configuration de cette matrice, voir [Définir la matrice de calcul de la priorité](index.php?fr/04_Module_Assistance/03_Définir_la_matrice_de_calcul_de_la_priorité.md "Configurer la matrice d'attribution des priorités en fonction de l'urgence et de l'impact : limiter les niveaux d'urgence et d'impact disponibles.").*

Règles de gestion
-----------------
A sa création, un ticket prend le statut **Nouveau**. 
Lorsqu'un technicien le qualifie en lui attribuant un groupe, un technicien ou un fournisseur chargé de le traiter, il passe alors à l'état **En cours (attribué)**. 
S'il ajoute une nouvelle tâche qui est planifiée alors il devient alors **En cours (planifié)**. 
Quand une solution est apportée au ticket, alors il prend le statut **Résolu**. 
Enfin, quand le demandeur ou le rédacteur valide la solution proposée, alors il est **Clos**.

***Remarques :***
*- Le technicien peut changer le statut à tout moment, notamment pour mettre le ticket **En attente**. Au niveau ITIL est ticket doit être mis en attente uniquement si le fait est du demandeur (exemple : la demande n'est pas complète ou le demandeur n'est pas disponible pour une intervention)*.
*- Le demandeur peut supprimer son ticket tant que celui-ci est en statut **nouveau** et qu'aucune action n'a été réalisée pour ce ticket.*


--------
**Sujet parent :** [Gérer les tickets](index.php?fr/04_Module_Assistance/06_Tickets/03_Gérer_les_tickets.md "Les tickets dans GLPI, caractéristiques et utilisation")
