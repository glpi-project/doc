Gérer les tickets
=================

Les tickets dans GLPI, caractéristiques et utilisation

Gérer les incidents en conformité avec ITIL ou pas
--------------------------------------------------

Le module d'assistance de GLPI est conforme au guide de bonnes pratiques ITIL pour la partie Gestion des incidents et gestion des demandes de services : il intègre donc des notions comme l'impact, l'urgence d'un ticket, la matrice de calcul des priorités associées et une normalisation des statuts. Bien que l'outil soit conforme ITIL, il n'y aucune obligation pour suivre ces bonnes pratiques : chacun est libre d'implémenter la gestion des incidents qui correspond le mieux à ses besoins.

Des statistiques sont disponibles pour les tickets (voir `Visualiser les statistiques <04_Module_Assistance/11_Statistiques.rst>`__).

Description de différents champs
--------------------------------

-  **Date d'ouverture** : date de création du ticket ;

-  **Date d'échéance** : Date à laquelle le ticket doit être résolu ;

Ces 2 dates permettent de circonscrire l'incident ou la demande de service dans le temps. Un **SLA** peut également être associé à un ticket. Dans ce cas, le SLA ainsi que le prochain niveau d'escalade sont affichés (voir `Configurer les SLAs <08_Module_Configuration/05_Sla/01_Sla.rst>`__).

-  **Par** : référence l'utilisateur GLPI qui a ouvert le ticket ;

- **Type** : permet de définir s'il s'agit d'une demande ou d'un incident ;

- **Catégorie** permet de classer les demandes ou incidents suivant leur nature (une catégorie pouvant être associée uniquement à un seul type) ;

- **Statut** statut attribué manuellement par le technicien ou dynamiquement suivant les actions effectuées (voir `Règles de gestion <04_Module_Assistance/04_Tickets/01_Règles_de_gestion.rst>`__ et `Matrice de cycle de vie <04_Module_Assistance/05_Les_matrices_de_cycle_de_vie.rst>`__) ;

- **Source de la demande** : canal utilisé pour créer les tickets (voir `Configurer les intitulés <08_Module_Configuration/02_Intitulés/01_Intitulés.rst>`__) ;

- **Urgence** : indique l'importance donnée par le demandeur au ticket ;

- **Impact** : est celle jugée par le technicien ;

- **Priorité** : est l'importance du ticket calculée automatiquement suivant une matrice de calcul prédéfinie en tenant compte de l'impact et de l'urgence définis (Voir `Matrice de cycle de vie <04_Module_Assistance/05_Les_matrices_de_cycle_de_vie.rst>`__ ;

- **Validation** : par défaut il est *non soumis à validation* ;

- **Élément** : liste les éléments associés à ce ticket. L'ajout d'un nouvel élément se fait via l'onglet *Elements*.

- **Lieu** : permet d'indiquer le lieu de l'intervention et n'a aucun lien avec le lieu de l'élément associé où le lieu du demandeur (cas d'un demandeur "nomade" avec un portable) ;

- **Les acteurs** Les acteurs concernés sont référencés dans le ticket, ce qui permet leur notification durant le cycle de vie du ticket (Voir `Définir les acteurs <04_Module_Assistance/02_Définir_les_Acteurs.rst>`__).

Deux informations concernant les notifications apparaissent pour un utilisateur ou un fournisseur si les suivis par courriels ont été configurés (Voir `Configurer les notifications <08_Module_Configuration/04_Notifications/01_Configurer_les_notifications.rst>`__) : l'activation du **suivi par courriel** pour ce ticket et le **courriel** utilisé. Celui-ci est pré-rempli par défaut avec la valeur présente et définie par défaut dans la fiche de l'utilisateur ou du fournisseur (s'il en a une) et peut être modifié dans la liste déroulante si besoin. Si aucun courriel n'est défini dans la fiche de l'utilisateur ou du fournisseur sélectionnée, elle peut être indiquée, uniquement pour ce ticket, dans la zone de texte.

Dans le cadre d'une utilisation de GLPI multi-entités avec des techniciens ayant des habilitations sur plusieurs entités, il n'est pas nécessaire de changer l'entité courante pour déclarer un nouvel incident dans une entité. Le cheminement de l'ouverture d'un nouveau ticket est le suivant : le technicien commence par sélectionner le demandeur et GLPI va déterminer les entités sur lesquelles celui-ci a des habilitations. S'il n'en possède que sur une entité, alors le formulaire de création est mis à jour et le ticket sera déclaré dans l'entité correspondante. S'il en possède plusieurs une liste déroulante supplémentaire permet de sélectionner celle dans laquelle on veut affecter le ticket.

- **Titre** Si aucun titre n'est défini par l'utilisateur lors de la création du ticket, les 70 premiers caractères de la description sont utilisés pour définir le titre du ticket ;

- **Description** : obligatoire pour les raisons définies ci-dessus.

- **Tickets liés** : définit une relation entre les tickets. Cette liaison peut être de 2 types :

- *Lié à* : ce n'est qu'une liaison simple qui n'a qu'un but informatif ;

- *Duplique* : c'est une duplication de ticket. A la résolution d'un des tickets, la même solution est définie sur les tickets dupliqués (qui sont donc automatiquement résolus).

Les différents onglets
----------------------

- **Onglet "Suivis"** C'est l'onglet par défaut lors de la consultation d'un ticket, sauf si celui-ci est en attente d'approbation de solution. Il permet l'ajout d'informations à un ticket existant, par exemple signaler que le demandeur a rappelé, que le ticket est en attente de la disponibilité du demandeur... C'est l'élément permettant les échanges entre le demandeur et les personnes en charge de son ticket.

   Pour ajouter un suivi, cliquer sur **Ajouter un nouveau suivi** et saisir une description.

   Il est possible de choisir la source du suivi (Voir `Configurer les intitulés <08_Module_Configuration/02_Intitulés/01_Intitulés.rst>`__).

   Un suivi peut être privé ou public. Un suivi privé n'est visible que des utilisateurs ayant le droit ``Voir tous les suivis et tâches`` (publics et privés) dans ses habilitations. Cela permet, par exemple, un échange entre techniciens sans que le demandeur ne puisse le voir.

   L'ajout, la modification ou la suppression d'un suivi dépend des droits définis dans le profil (voir `Administrer les profils d'utilisateurs <07_Module_Administration/07_Profils/01_Profils.rst>`__).

- **`Onglet "Validation" <Les_différents_onglets/Onglet_Validations.rst>`__**

- **`Onglet "Tâches" <Les_différents_onglets/Onglet_Tâches.rst>`__** Une tâche est une action correspondant à une intervention technique liée à un ticket.

- **`Onglet "Solution" <Les_différents_onglets/Onglet_Solution.rst>`__** Cet onglet solution permet la résolution du ticket par un technicien et l'approbation de la solution par le demandeur ou le rédacteur.  **Vos tickets à clore**.

- **`Onglet "Statistiques" <Les_différents_onglets/Onglet_Statistiques.rst>`__**

- **`Onglet "Coûts <Les_différents_onglets/Onglet_Coûts.rst>`__** Définition des coûts applicables à ce ticket.

- **Onglet tâches de projet** Liste les tâches d'un projet liées à ce ticket en indiquant, pour chaque tâche, le nom du projet, son nom, son type, son statut, le pourcentage effectuée, les dates de début et de fin planifiées, les durées planifiée et effective ainsi que le nom de la tâche parent. Vous pouvez modifier un projet ou une tâche de projet en cliquant sur son nom.

- **`Onglet "Eléments" <Les_différents_onglets/Onglet_Eléments.rst>`__** Permet d'associer plusieurs éléments au ticket.

- **`Onglet "Changements" <Les_différents_onglets/Onglet_Changements.rst>`__** Ajouter et visualiser les changements associés à ce ticket.

- **`Onglet "Historique" <Les_différents_onglets/Onglet_Historique.rst>`__** L'historique est visualisé depuis l'onglet *Historique*

.. include:: ../tabs/documents.rst

.. include:: onglets/problemes.rst

.. include:: ../tabs/debug.rst

.. include:: ../tabs/all.rst

Les différentes actions
-----------------------

- **`Ajouter un ticket <04_Module_Assistance/05_Créer_un_ticket.rst>`__**
- **`Modifier un ticket <Les_différentes_actions/Modifier_un_objet.rst>`__**
- **`Supprimer un ticket <Les_différentes_actions/Supprimer_un_objet.rst>`__**
- **`Associer un document à un ticket <Les_différentes_actions/Lier_un_document_à_un_objet.rst>`__**
- **Lier des tickets entre eux** Cette action se réalise via le champ *Tickets liés* du formulaire
- **`Transférer un ticket vers une autre entité <Les_différentes_actions/Transférer_un_objet.rst>`__**

.. from 06_Tickets/01_Règles_de_gestion.rst

Comprendre le cycle de vie des tickets
======================================

Chaque profil possède sont propre cycle de vie défini dans une `matrice <04_Module_Assistance/05_Les_matrices_de_cycle_de_vie.rst>`__.  Pour le visualiser et le modifier il faut donc ouvrir le profil concerné (menu **Administration > Profils**).

Types de tickets
----------------

Les tickets dans GLPI sont soit des incidents, soit des demandes. Ce champ *type* va permettre d'exécuter certaines actions (voir `les règles métier de modification et affectation des tickets <07_Module_Administration/05_Règles/04_Règles_métier_pour_les_tickets.rst>`__, `les gabarits de tickets <Les_différentes_actions/Gérer_les_gabarits.rst>`__ et `la gestion des problèmes <04_Module_Assistance/08_Problèmes>`__) et de personnaliser la liste des catégories disponibles.

Les statuts
-----------

ITIL définit le cycle de vie des statuts d'un ticket. Ce cycle de vie est implémenté comme suit dans GLPI : - Nouveau - En cours (attribué) - En cours (planifié) - En attente - Résolu - Clos

Ces statuts ne sont ni paramétrables ni modifiables.

***Remarques :*** *- On peut néanmoins cacher certains statuts suivant le profil (voir `Matrice de cycle de vie <04_Module_Assistance/05_Les_matrices_de_cycle_de_vie.rst>`__).*

*- Pour aller plus loin dans cette gestion des statuts, voir `Les collecteurs <helpdesk_advanced_collectors.html>`__, `Les gabarits de tickets <Les_différentes_actions/Gérer_les_gabarits.rst>`__ et `Les règles métier de modification et affectation des tickets <07_Module_Administration/05_Règles/04_Règles_métier_pour_les_tickets.rst>`__.*

L'ordonnancement
----------------

L'ordonnancement des tickets se fait en fonction des renseignements fournis par le demandeur et le technicien :

- Le demandeur définit l'urgence
- Le technicien apprécie l'impact
- La priorité est la résultante de ces deux informations. Elle est calculée automatiquement via une matrice et indique l'importance réelle du ticket

***Remarque :** Pour aller plus loin dans la configuration de cette matrice, voir `Définir la matrice de calcul de la priorité <04_Module_Assistance/03_Définir_la_matrice_de_calcul_de_la_priorité.rst>`__.*

Règles de gestion
-----------------

A sa création, un ticket prend le statut **Nouveau**. Lorsqu'un technicien le qualifie en lui attribuant un groupe, un technicien ou un fournisseur chargé de le traiter, il passe alors à l'état **En cours (attribué)**. S'il ajoute une nouvelle tâche qui est planifiée alors il devient alors **En cours (planifié)**. Quand une solution est apportée au ticket, alors il prend le statut **Résolu**. Enfin, quand le demandeur ou le rédacteur valide la solution proposée, alors il est **Clos**.

***Remarques :*** *- Le technicien peut changer le statut à tout moment, notamment pour mettre le ticket **En attente**. Au niveau ITIL est ticket doit être mis en attente uniquement si le fait est du demandeur (exemple : la demande n'est pas complète ou le demandeur n'est pas disponible pour une intervention)*. *- Le demandeur peut supprimer son ticket tant que celui-ci est en statut **nouveau** et qu'aucune action n'a été réalisée pour ce ticket.*

.. from 06_Tickets/05_Pour_aller_plus_loin.rst

Pour aller plus loin
====================

- **`Les catégories de tickets <04_Module_Assistance/04_Configuration_avancée.rst>`__**

- **`Les gabarits de tickets <Les_différentes_actions/Gérer_les_gabarits.rst>`__** Personnaliser le formulaire de création d'un ticket en masquant, pré-définissant ou rendant obligatoire certains champs.

- **Les collecteurs** Les outils externes permettent d'agir sur la partie assistance via les collecteurs de mail.

   Le principe est simple : utiliser la messagerie électronique pour créer des tickets et ajouter des suivis aux tickets déjà existants.  Une tâche interne de GLPI va se connecter à une boîte mail et ainsi récupérer les messages.

   ***Remarque :** La résolution ou la clôture d'un ticket ne sont pas possibles par ce biais.*

   Voici le parcours du courriel jusqu'à la création du ticket :

   -  Boite mail ;
   - Collecteur (pour la configuration, voir `Configurer les collecteurs <config_mailcollector.html>`__ ;
   - Règles `Affecter un ticket ouvert par courriel à une entité <07_Module_Administration/05_Règles/02_Collecteur_de_courriels.rst>`__
   - `Règles métier pour les tickets <07_Module_Administration/05_Règles/04_Règles_métier_pour_les_tickets.rst>`__
   - Ticket créé

   La réponse à un courriel provenant de GLPI aura ce parcours :

   -  Boite mail ;
   -  Collecteur ;
   -  Création d'un suivi dans le ticket concerné.

- **`Les tickets récurrents <04_Module_Assistance/11_Tickets_récurrents.rst>`__**

- **`Les coûts liés <04_Module_Assistance/05_Tickets/03_Gérer_les_tickets.rst>`__**

- **`Liens entre tickets <04_Module_Assistance/05_Tickets/03_Gérer_les_tickets.rst>`__** Les relations entre les tickets : liaison et duplication

- **Les délais de résolutions d'incidents ou SLA** Voir `Configurer les SLAs <08_Module_Configuration/05_Sla/01_Sla.rst>`__.

- **Les règles métier de modification et affectation des tickets** Voir `Règles métier pour les tickets <07_Module_Administration/05_Règles/04_Règles_métier_pour_les_tickets.rst>`__.

- **Clôture administrative** Passe le *statut* d'un ticket de *Résolu* à *Clos*

   Les bonnes pratiques ITIL préconisent une approbation de la solution par le demandeur du ticket, qui valide que la réponse apportée par le technicien correspond bien à ce qu'il attendait. Toutefois, si le demandeur ne remplit pas cette action, il est possible de paramétrer une clôture administrative après un délai paramétrable dans la configuration de l'entité (voir `Onglet Assistance <07_Module_Administration/04_Entités.rst>`__). Si ce délai est nul, le ticket est automatiquement clos.

-  **La satisfaction** Le résultat de l'enquête de satisfaction d'un ticket, caractéristiques et utilisation

   La génération de l'enquête de satisfaction est effectuée lorsque le ticket passe au statut clos et le délai de déclenchement après la clôture se paramètre par entité (voir `Déléguer l'administration par entité <07_Module_Administration/04_Entités.rst>`__). Il faut également que la tâche automatique correspondante soit active.

   A la clôture d'un ticket, une notification comportant le lien vers l'enquête de satisfaction peut être envoyée au demandeur. Dans le cas contraire, le demandeur aura accès à cette enquête depuis le ticket, onglet Satisfaction.

   Le demandeur peut alors définir son degré de satisfaction (de 0 à 5 sous forme d'étoiles) concernant la résolution de son ticket. Il peut également ajouter un commentaire s'il le souhaite.

   Des statistiques concernant les enquêtes sont disponibles dans les `statistiques <04_Module_Assistance/10_Statistiques.rst>`__.

   ***Remarques :*** *- Le demandeur peut modifier sa réponse à l'enquête de satisfaction interne dans un délai de 12h suivant sa première réponse.* \*- Une notification peut être définie à la génération de l'enquête de satisfaction mais également à chaque réponse à celle-ci.

- Voir également la **`configuration avancée <04_Module_Assistance/04_Configuration_avancée.rst>`__**

