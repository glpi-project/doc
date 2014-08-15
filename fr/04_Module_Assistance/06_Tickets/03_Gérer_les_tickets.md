Gérer les tickets
=================

Les tickets dans GLPI, caractéristiques et utilisation

Gérer les incidents en conformité avec ITIL ou pas
--------------------------------------------------

Le module d'assistance de GLPI est conforme au guide de bonnes pratiques ITIL pour la partie Gestion des incidents et gestion des demandes de services : il intègre donc des notions comme l'impact, l'urgence d'un ticket, la matrice de calcul des priorités associées et une normalisation des statuts. Bien que l'outil soit conforme ITIL, il n'y aucune obligation pour suivre ces bonnes pratiques : chacun est libre d'implémenter la gestion des incidents qui correspond le mieux à ses besoins.

Des statistiques sont disponibles pour les tickets (voir [Visualiser les statistiques](index.php?fr/04_Module_Assistance/11_Statistiques.md "Les rapports concernant les tickets sont disponibles dans le menu Assistance > Statistiques")).


Description de différents champs
--------------------------------
- **Date d'ouverture** : date de création du ticket ;

- **Date d'échéance** : Date à laquelle le ticket doit être résolu ;

Ces 2 dates permettent de circonscrire l'incident ou la demande de service dans le temps. Un **SLA** peut également être associé à un ticket. Dans ce cas, le SLA ainsi que le prochain niveau d'escalade sont affichés (voir [Configurer les SLAs](config_sla.html "Dans GLPI, administrer les SLAs peut se faire à partir du menu Configuration > SLAs.")).

- **Par** : référence l'utilisateur GLPI qui a ouvert le ticket ;

- **Type** : permet de définir s'il s'agit d'une demande ou d'un incident ;

- **Catégorie** permet de classer les demandes ou incidents suivant leur nature (une catégorie pouvant être associée uniquement à un seul type) ;

- **Statut** statut attribué manuellement par le technicien ou dynamiquement suivant les actions effectuées (voir [Règles de gestion](index.php?fr/04_Module_Assistance/04_Tickets/01_Règles_de_gestion.md) et [Matrice de cycle de vie](index.php?fr/04_Module_Assistance/04_Tickets/02_Matrice_de_cycle_de_vie.md)) ;

- **Source de la demande** : canal utilisé pour créer les tickets (voir [Configurer les
intitulés](config_dropdown.html "Les intitulés se configurent depuis le menu Configuration > Intitulés")) ;

- **Urgence** : indique l'importance donnée par le demandeur au ticket ;

- **Impact** : est celle jugée par le technicien ;

- **Priorité** : est l'importance du ticket calculée automatiquement suivant une matrice de calcul prédéfinie en tenant compte de l'impact et de l'urgence définis (Voir [Matrice de cycle de vie](index.php?fr/04_Module_Assistance/04_Tickets/02_Matrice_de_cycle_de_vie.md) ;

- **Validation** : par défaut il est *non soumis à validation* ;

- **Élément** : cette liste déroulante permet d'associer un ou plusieurs objets d'inventaire de différents types au ticket (ordinateur, moniteur...) : le contenu de la liste dépend des paramètres définis dans le profil (voir [Administrer les profils d'utilisateurs] administration_profile.html "Dans GLPI, administrer les profils peut se faire à partir du menu Administration > Profils.")) ;

- **Lieu** : permet d'indiquer le lieu de l'intervention et n'a aucun lien avec le lieu de l'élément associé où le lieu du demandeur (cas d'un demandeur "nomade" avec un portable) ;

- **Les acteurs**
  Les acteurs concernés sont référencés dans le ticket, ce qui permet leur notification durant le cycle de vie du ticket (Voir [Définir les acteurs](index.php?fr/04_Module_Assistance/02_Définir_les_Acteurs.md).

  Deux informations concernant les notifications apparaissent pour un utilisateur ou un fournisseur si les suivis par courriels ont été configurés (Voir [Configurer les notifications](config_notification.html "Les notifications se configurent depuis le menu Configuration > Notifications ;")) : l'activation du **suivi par courriel** pour ce ticket et le **courriel** utilisé. Celui-ci est pré-rempli par défaut avec la valeur présente et définie par défaut dans la fiche de l'utilisateur ou du fournisseur (s'il en a une) et peut être modifié dans la liste déroulante si besoin. Si aucun courriel n'est défini dans la fiche de l'utilisateur ou du fournisseur sélectionnée, elle peut être indiquée, uniquement pour ce ticket, dans la zone de texte.

  Dans le cadre d'une utilisation de GLPI multi-entités avec des techniciens ayant des habilitations sur plusieurs entités, il n'est pas nécessaire de changer l'entité courante pour déclarer un nouvel incident
dans une entité. Le cheminement de l'ouverture d'un nouveau ticket est le suivant : le technicien commence par sélectionner le demandeur et GLPI va déterminer les entités sur lesquelles celui-ci a des habilitations. 
  S'il n'en possède que sur une entité, alors le formulaire de création est mis à jour et le ticket sera déclaré dans l'entité correspondante.
  S'il en possède plusieurs une liste déroulante supplémentaire permet de sélectionner celle dans laquelle on veut affecter le ticket.

- **Titre**
  Si aucun titre n'est défini par l'utilisateur lors de la création du ticket, les 70 premiers caractères de la description sont utilisés pour définir le titre du ticket ;

- **Description** : obligatoire pour les raisons définies ci-dessus.

- **Tickets liés** : définit une relation entre les tickets. 
  Cette liaison peut être de 2 types :
  -   *Lié à* : ce n'est qu'une liaison simple qui n'a qu'un but informatif ;
  -   *Duplique* : c'est une duplication de ticket. A la résolution d'un des tickets, la même solution est définie sur les tickets dupliqués (qui sont donc automatiquement résolus).


Les différents onglets
----------------------
-   **Onglet "Suivis"**
    C'est l'onglet par défaut lors de la consultation d'un ticket, sauf si celui-ci est en attente d'approbation de solution. 
    Il permet l'ajout d'informations à un ticket existant, par exemple signaler que le demandeur a rappelé, que le ticket est en attente de la disponibilité du demandeur... 
    C'est l'élément permettant les échanges entre le demandeur et les personnes en charge de son ticket.

    Pour ajouter un suivi, cliquer sur **Ajouter un nouveau suivi** et saisir une description.

    Il est possible de choisir la source du suivi (Voir [Configurer les intitulés](config_dropdown.html "Les intitulés se configurent depuis le menu Configuration > Intitulés")).

    Un suivi peut être privé ou public. Un suivi privé n'est visible que des utilisateurs ayant le droit `Voir tous les suivis et tâches` (publics et privés) dans ses habilitations. Cela permet, par exemple, un échange entre techniciens sans que le demandeur ne puisse le voir.

    L'ajout, la modification ou la suppression d'un suivi dépend des droits définis dans le profil (voir [Administrer les profils d'utilisateurs](administration_profile.html "Dans GLPI, administrer les profils peut se faire à partir du menu Administration > Profils.").


-   **[Onglet "Validation"](index.php?fr/Les_différents_onglets/Onglet_Validations.md)**

-   **[Onglet "Tâches"](index.php?fr/Les_différents_onglets/Onglet_Tâches.md)**
    Une tâche est une action correspondant à une intervention technique liée à un ticket.


-   **[Onglet "Solution"](index.php?fr/Les_différents_onglets/Onglet_Solution.md)**
    Cet onglet solution permet la résolution du ticket par un technicien et l'approbation de la solution par le demandeur ou le rédacteur.
**Vos tickets à clore**.


-   **[Onglet "Statistiques"](index.php?fr/Les_différents_onglets/Onglet_Statistiques.md)**


-   **[Onglet "Coûts](index.php?fr/Les_différents_onglets/Onglet_Coûts.md)**
    Définition des coûts applicables à ce ticket.

-   **[Onglet "Documents"](index.php?fr/Les_différents_onglets/Onglet_Documents.md)**

-   **[Onglet "Problèmes"](index.php?fr/Les_différents_onglets/Onglet_Problèmes.md)**

-   **Onglet "Changements"**
    Suivant vos droits dans votre profil, vous pouvez choisir d'ajouter un changement existant à ce ticket ou créer un changement à partir de ce ticket (voir [Gestion des changements](index.php?fr/04_Module_Assistance/xxx.md).
    Dans ce dernier cas, le changement créé reprendra les concepts du tickets (*demandeurs*, *observateurs*,
*assignation*, *statut*, *urgence*, *impact*, *priorité*, *catégorie*).

-   **[Onglet "Historique"](index.php?fr/Les_différents_onglets/Onglet_Historique.md)**
     L'historique est visualisé depuis l'onglet *Historique*

-   **[Onglet "Debug"](index.php?fr/Les_différents_onglets/Onglet_Debug.md)**
    Uniquement si vous êtes connecté en mode Debug.

-   **[Onglet "Tous"](index.php?fr/Les_différents_onglets/Onglet_Tous.md)**
     Pour un élément, toutes les informations sont affichées sur une seule page.


Les différentes actions
-----------------------
-   **[Ajouter un ticket](index.php?fr/04_Module_Assistance/05_Créer_un_ticket.md)**
-   **[Modifier un ticket](index.php?fr/Les_différentes_actions/Modifier_un_objet.md)**
-   **[Supprimer un ticket](index.php?fr/Les_différentes_actions/Supprimer_un_objet.md)**
-   **[Associer un document à un ticket](index.php?fr/Les_différentes_actions/Lier_un_document_à_un_objet.md)**
-   **Lier des tickets entre eux**
    Cette action se réalise via le champ *Tickets liés* du formulaire


--------
**Sujet parent :** [Le service d'assistance aux utilisateurs](index.php?fr/04_Module_Assistance/01_Module_Assistance.md "Le service d'Assistance aux utilisateurs de GLPI")
