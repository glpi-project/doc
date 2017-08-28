Gérer les contrats
==================

Les contrats concernent les accords établis entre des tiers. Des objets d'inventaire sont associables à un contrat. Cette fonctionnalité permet de couvrir tout type de contrat réalisé tel que les prêts, contrats de maintenance...

Un contrat regroupe différents types d'informations :

-   des informations générales (nom, type, numéro) ;
-   des informations temporelles (date de début, durée, périodicité, heures d'intervention). Les plages horaires sont intéressantes dans le cadre d'un contrat de maintenance ou d'infogérance par exemple ;
-   des informations comptables (reconduction, durée de préavis, périodicité de facturation).

Il est possible d'être alerté par courriel sur différents éléments du contrat (fin, préavis, fin de période...).

Il est possible d'utiliser les :doc:`gabarits avec les contrats <../generalites/gabarits>`.

Description des champs
----------------------
-   **Type de contrat** : par défaut, aucun type de contrat n'est renseigné. Il faut au préalable les renseigner dans la configuration des intitulés. Voir [Configurer les intitulés](08_Module_Configuration/02_Intitulés/01_Intitulés.md "Les intitulés se configurent depuis le menu Configuration > Intitulés") ;
-   **Numéro**: cette information n'est pertinente que si le numéro de contrat est identique à celui utilisé au sein des autres services de la société ;
-   **Date de début** : à ne pas confondre avec la date d'enregistrement du contrat dans GLPI. Tous les calculs de périodicité sur le contrat sont donc fonction de cette date ;
-   **Durée initiale du contrat** : si ce champ et la date de début sont renseignés, la date de fin de contrat apparaitra (en rouge si la date a expirée) ;
-   **Préavis** : ce champ peut servir également au déclenchement des notifications d'alerte ;
-   **Numéro comptable** : pour permettre un rapprochement avec le logiciel comptable de la société ;
-   **Périodicité du contrat** : c'est la durée à laquelle la reconduction du contrat est possible (*Exemple : Un contrat d'abonnement téléphonique d'une durée de 24 mois renouvelable au bout de 12 mois*) ;
-   **Périodicité de facturation** :
-   **Type de reconduction** : *Tacite* (le contrat est reconductible automatiquement d'une période à une autre si aucune des parties ne manifeste sa volonté de le rompre) ou *Expresse* (nécessite l'accord des deux parties pour la reconduction du contrat) ;
-   **Nombre max d'éléments** : la valeur choisie dans ce champ bloquera ou non l'ajout de nouvel éléments attachés à ce contrat ;
-   **Heures d'intervention** : Les plages horaires d'intervention correspondent aux horaires d'intervention couvert par le contrat. Il est possible d'y distinguer les samedis et les jours chômés.

Les différents onglets
----------------------
-   **Onglet "Coûts"**
    Les éléments de coûts peuvent être saisi indépendamment (coût initial, coût avenant...).
    Chaque élément peut être lié à un budget différent (voir [Gérer les budgets](05_Module_Gestion/02_Budgets.md "Les budgets sont gérés depuis le menu Gestion > Budgets")).
    Sous la possibilité d'ajout de nouveaux coûts, un tableau récapitule les coûts déja enregistrés ainsi que le coût total pour ce contrat.

-   **[Onglet "Fournisseurs"](Les_différents_onglets/Onglet_Fournisseurs.md)**
    Gérer les informations financières et administratives

-   **[Onglet "Eléments"](Les_différents_onglets/Onglet_Eléments.md)**
    Cet onglet permet d'ajouter et de visualiser les éléments attachés à ce contrat.

.. include:: ../onglets/documents.rst

.. include:: ../onglets/liens.rst

.. include:: ../onglets/notes.rst

.. include:: ../onglets/historique.rst

.. include:: ../onglets/debug.rst

.. include:: ../onglets/all.rst


Les différentes actions
-----------------------
-   **[Ajouter un contrat](Les_différentes_actions/Créer_un_nouvel_objet.md)**
-   **[Voir un contrat](Les_différentes_actions/Visualiser_un_objet.md)**
-   **[Modifier un contrat](Les_différentes_actions/Modifier_un_objet.md)**
-   **[Supprimer un contrat](Les_différentes_actions/Supprimer_un_objet.md)**
-   **[Associer un document à un contrat](Les_différentes_actions/Lier_un_document_à_un_objet.md)**
-   **[Transférer un contrat vers une autre entité](Les_différentes_actions/Transférer_un_objet.md)**
-   **Paramétrer les alertes sur les contrats**
    Il est possible de recevoir des notifications pour prévenir d'événements tels que la fin du contrat.
    Dans le cas ou la reconduction du contrat serait expresse, il peut être intéressant d'être alerté à la date du préavis. Pour les contrats périodiques il est également possible d'être alerté à la
    fin de chaque période ou préavis de période.
    Ceci est configurable par entité dans le menu **Configuration > Notifications** pour définir les modèles et destinataires utilisés et dans le menu **Configuration > Entité** pour activer ou non cette fonctionnalité, définir les valeurs par défaut et une anticipation de l'envoi de la notification si besoin.
