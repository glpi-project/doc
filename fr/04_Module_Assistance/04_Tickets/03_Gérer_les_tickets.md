Gérer les tickets
=================

Les tickets dans GLPI, caractéristiques et utilisation

Gérer les incidents en conformité avec ITIL ou pas
--------------------------------------------------

Le module d'assistance de GLPI est conforme au guide de bonnes pratiques ITIL pour la partie Gestion des incidents et gestion des demandes de services : il intègre donc des notions comme l'impact, l'urgence d'un
ticket, la matrice de calcul des priorités associées et une normalisation des statuts. Bien que l'outil soit conforme ITIL, il n'y aucune obligation pour suivre ces bonnes pratiques : chacun est libre d'implémenter la gestion des incidents qui correspond le mieux à ses besoins.

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


-   **Onglet "Validation"**
    Un ticket peut nécessiter une validation, par exemple pour une demande d'évolution matériel, comme un changement d'ordinateur ou de moniteur. Cette demande de validation n'est possible que si vous avez les droits dans votre profil.

    Après avoir cliqué sur **Envoyer une demande de validation**, il faut saisir le type de valideur (utilisateur ou groupe) ainsi que son nom. Pour les groupes il faut également choisi qui dans le groupe va recevoir cette demande de validation (ne sont listés que ceux ayant le droit de valider). 
    Le ticket prend alors le statut **En attente de validation** dans son champ **Validation**.
    La demande de validation peut également être créée directement à l'[ouverture du ticket](helpdesk_openticket.dita) via l'interface standard ou via une [règle métier](administration_rule_ticket.dita).

    ***Remarque :** La validation n'est pas un processus bloquant, mais seulement informatif. Un technicien pourra traiter un ticket qui est en attente de validation. Toutefois, si le technicien modifie le statut du ticket vers Résolu ou Clos, ou qu'il ajoute une solution sur un ticket en attente de validation, une alerte sera affichée.*

    Pour valider la demande, le valideur peut cliquer sur le ticket dans l'accueil de GLPI (onglet **Vue personnelle**, partie **Vos tickets à valider**), ou aller dans le menu **Assistance \> Ticket** et cliquer
sur l'icône ![image](docs/image/menu_showall.png) qui apparaît dans le fil d'ariane.

    Une fois sur le ticket, aller dans l'onglet **Validation**, puis cliquer sur la ligne correspondante à la demande de validation. Choisir si le ticket est **Accepté** ou **Refusé**. En cas de refus, il est obligatoire de saisir un commentaire.

    Dans le cas où une demande de validation multiple a été soumise, un pourcentage de validation est requis. Trois cas sont alors possibles :

- 0% : Le premier utilisateur qui accepte ou refuse la validation valide le ticket (Statut global de la validation).

- 50% : La majorité l'emporte. Exemple : 3 validations demandées, 2 refus entraine le refus du ticket.

- 100% : Tous les valideurs doivent valider ou refuser le ticket afin que le statut global de validation soit modifié.


-   **Onglet "Tâches"**
    Une tâche est une action correspondant à une intervention technique liée à un ticket.

    Une tâche peut :
    - avoir une *catégorie* (Voir [Configurer les intitulés](config_dropdown.html "Les intitulés se configurent depuis le menu Configuration > Intitulés")), 
    - avoir un *statut* (Information, A faire ou Fait), le statut par défaut étant `A faire`, 
    - être *privée* ou non
      Une tâche privée n'est visible que : 
      -   de son rédacteur ;
      -   du technicien à qui elle a été affectée ;
      -   des utilisateurs ayant le droit adéquat dans leur profil.
    - avoir une *durée* , ce qui permet au technicien de saisir la durée réelle de traitement de la tâche, notamment à fin de statistiques ou facturations.
    - et être affecté à un technicien (*par*).
    - être associé au planning en cliquant sur **Planifier cette tâche**. 
      Une fois la date de début, la durée ou la date de fin saisie, la tâche apparaîtra sur le planning du technicien à qui elle a été affectée. 

      ***Remarques :*** 
      *- Pour faciliter la planification d'une tâche, il est possible de vérifier la disponibilité des techniciens. L'icône ![image](docs/image/reservation-3.png) à côté du mot Durée ouvre une nouvelle fenêtre proposant un résumé rapide des périodes libres du technicien séledtionné dans le champ Par.*
      *- Il est possible de définir un rappel de la tâche avant son début en définissant un intervalle de temps pour le rappel. Les notifications doivent être activées pour cela (voir [Configurer les
notifications](config_notification.html "Les notifications se configurent depuis le menu Configuration > Notifications ;"))*.

-   **Onglet "Solution"**
    Cet onglet solution permet la résolution du ticket par un technicien et l'approbation de la solution par le demandeur ou le rédacteur.

    -   **Résolution du ticket :**
        Le technicien doit choisir le **Type de solution**, intitulé paramétrable (par exemple **Fermé (Résolu)**, **Solution de controunement**...) ainsi qu'une description de la solution si besoin.

        Une fois la solution saisie, le ticket prend le statut **Résolu** jusqu'à approbation de la solution.

        La saisie d'une solution peut être facilitée par l'utilisation de 2 mécanismes :
        -   L'utilisation d'un gabarit de solution. C'est une solution pré-remplie définie dans les intitulés (voir [Configurer les intitulés](config_dropdown.html "Les intitulés se configurent depuis le menu Configuration > Intitulés")).
        -   L'extraction d'un élément de la base de connaissance. Pour cela, il faut cliquer `Rechercher une solution`, trouver l'élément de base de connaissances correspondant et valider en choisissant `Utiliser comme solution`.

        ***Remarque :** A l'enregistrement de la solution, le choix `Enregistrer et ajouter à la base de connaissances` permet de l'ajouter directement à la base de connaissance. Après validation de la solution, la page de création de l'élément est proposée. Il suffit alors de compléter le formulaire et de valider.*

    -   **Approbation de la solution :**
        La solution d'un ticket doit être approuvée pour que le statut du ticket soit clos.

        Elle peut être approuvée par un des demandeurs ou le rédacteur du ticket (personne qui a saisi le ticket, par exemple un technicien de hot-line) si la matrice de cycle de vie du ticket l'autorise (Voir [Matrice de cycle de vie](index.php?fr/04_Module_Assistance/04_Tickets/02_Matrice_de_cycle_de_vie.md).

        L'approbation peut se faire de 2 manières :     
        - Si le suivi par courriel été activé, le demandeur peut recevoir un courriel contenant le lien vers le ticket afin de l'approuver
        - via l'interface :
          - **Interface simplifiée** :
            Aller dans le menu **Tickets**.
          - **Interface standard** :
            Les tickets à approuver apparaissent sur la page d'accueil de GLPI dans **Vue personnelle**, **Vos tickets à clore**.

          Cliquer sur le ticket à approuver, puis approuver ou rejeter la solution. Il est possible de saisir une description si besoin, celle-ci est obligatoire en cas de rejet.

        Une fois la solution approuvée, le ticket prend le statut **Clos**.

        ***Remarque :** Un ticket clos n'est plus modifiable (à part le status). Pour le modifier a posteriori, il faut donc changer son status et réaliser de nouveau sa clôture.*

        Il est possible de forcer la clôture des tickets résolus après un délai paramétrable (voir [Onglet
    Assistance](config_common_assist.html "Cet onglet permet de paramétrer le comportement de la partie assistance de GLPI.")). Si ce délai est nul, le ticket est automatiquement clos.

        De même, vous pouvez supprimer cette opération d(approbation via la [matrice de cycle de vie](index.php?fr/04_Module_Assistance/04_Tickets/02_Matrice_de_cycle_de_vie.md).

-   **Onglet "Statistiques"**
    Fourni un tableau statistique de ce ticket avec notamment les date d'ouverture et d'échéance ainsi que le délais de prise en charge (temps passé entre le statut Nouveau et le statut En cours) et de temps durant lequel le ticket a été au statut En attente.

-   **Onglet "Coûts"**
    Il est possible de saisir des coûts différents applicables à ce ticket pour une période déterminée.
    Chaque élément peut être lié à un budget différent (voir [Gérer les budgets](index.php?fr/05_Module_Gestion/02_Budgets.md "Les budgets sont gérés depuis le menu Gestion > Budgets")).
    Sous la possibilité d'ajout de nouveaux coûts, un tableau récapitule les coûts déjà enregistrés ainsi que la durant ce coût a été appliqué ainsi le coût total pour ce ticket.

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
-   **[Ajouter un ticket](index.php?fr/Les_différentes_actions/Créer_un_nouvel_objet.md)**
-   **[Voir un ticket](index.php?fr/Les_différentes_actions/Visualiser_un_objet.md)**
-   **[Modifier un ticket](index.php?fr/Les_différentes_actions/Modifier_un_objet.md)**
-   **[Supprimer un ticket](index.php?fr/Les_différentes_actions/Supprimer_un_objet.md)**
-   **[Associer un document à un ticket](index.php?fr/Les_différentes_actions/Lier_un_document_à_un_objet.md)**
-   **Lier des tickets entre eux**
    Cette action se réalise via le champ *Tickets liés* du formulaire


--------
**Sujet parent :** [Le service d'assistance aux utilisateurs](index.php?fr/04_Module_Assistance/01_Module_Assistance.md "Le service d'Assistance aux utilisateurs de GLPI")
