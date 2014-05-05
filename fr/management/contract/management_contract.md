Gérer les contrats
==================

Les contrats sont gérés depuis le menu Gestion \> Contrats

Les contrats concernent les accords établis entre des tiers. Des objets
d'inventaire sont associables à un contrat. Cette fonctionnalité permet
de couvrir tout type de contrat réalisé tel que les prêts, contrats de
maintenance...

Créer un contrat
----------------

Pour créer un contrat, il sera demandé de renseigner :

-   des informations générales (nom, type, numéro) ;
-   des informations temporelles (date de début, durée, périodicité,
    plages horaires d'intervention). Les plages horaires sont
    intéressantes dans le cadre d'un contrat de maintenance ou
    d'infogérance par exemple ;
-   des informations comptables (reconduction, durée de préavis,
    périodicité de facturation)

Il est possible d'être alerté par courriel sur la fin ou le préavis du
contrat.

Remarque : Des gabarits peuvent être définis pour les contrats (voir
[Gérer les
gabarits](template.html "La gestion des gabarits dans GLPI")).

Description des champs
----------------------

-   **Type de contrat** : par défaut, aucun type de contrat n'est
    renseigné. Il faut au préalable les renseigner dans la configuration
    des intitulés. Voir [Configurer les
    intitulés](config_dropdown.html "Les intitulés se configurent depuis le menu Configuration > Intitulés")
    ;
-   **Numéro de contrat**: Cette information n'est pertinente que si le
    numéro de contrat est identique à celui utilisé au sein des autres
    services de la société ;
-   **Date de début** : À ne pas confondre avec la date d'enregistrement
    du contrat dans GLPI. Tous les calculs de périodicité sur le contrat
    sont donc fonction de cette date ;
-   **Périodicité du contrat** : C'est la durée à laquelle la
    reconduction du contrat est possible (*Exemple : Un contrat
    d'abonnement téléphonique d'une durée de 24mois renouvelable au bout
    de 12mois*) ;
-   **Plages horaires d'intervention** : Les plages horaires
    d'intervention correspondent aux horaires d'intervention couvert par
    le contrat. Il est possible d'y distinguer les jours chômés ;
-   **Type de reconduction** : [Tacite](glossary/evergreen.dita) ou
    [Expresse](glossary/specific_renewal.dita) ;
-   **Alerte par courriel** : Il est possible de recevoir des
    notifications pour prévenir d'événements tels que la fin du contrat.
    Dans le cas ou la reconduction du contrat serait expresse, il peut
    être intéressant d'être alerté à la date du préavis. Pour les
    contrats périodiques il est également possible d'être alerté à la
    fin de chaque période ou préavis de période.
    Conseil : Ceci est configurable par entité dans le menu
    **Configuration \> Notifications** pour définir les modèles et
    destinataires utilisés et dans le menu **Configuration \> Entité**
    pour activer ou non cette fonctionnalité, définir les valeurs par
    défaut et une anticipation de l'envoi de la notification si besoin.

Coûts
-----

Des coûts peuvent être associés à un contrat. Les éléments de coûts
peuvent être saisi indépendamment (coût initial, coût avenant...).
Chaque élément peut être lié à un budget différent (voir [Gérer les
budgets](management_budget.html "Les budgets sont gérés depuis le menu Gestion > Budgets")).

Remarque : Pour faciliter la saisie de plusieurs coûts, le formulaire
est initialisé en fonction du dernier coût saisi. Il suffit alors de
modifier uniquement les informations nécessaires.

-   **[Lier contrats et
    fournisseurs](../glpi/management_supplier_contract.html)**\
     Les contrats associés aux fournisseurs.
-   **[Les matériels
    associés](../glpi/management_contract_hardware.html)**\
     Les matériels associés aux contrats
-   **[Associer des documents](../glpi/inventory_document.html)**\
     Les documents associés se gèrent depuis l'onglet Documents
-   **[Associer des liens externes](../glpi/inventory_link.html)**\
     Pour certains éléments, les liens externes se gèrent depuis le menu
    Liens externes
-   **[Gérer les notes](../glpi/notes.html)**\
     Pour un élément, les notes se gèrent depuis l'onglet Notes
-   **[Visualiser l'historique](../glpi/inventory_log.html)**\
     L'historique est visualisé depuis l'onglet Historique
-   **[Afficher toutes les informations sur une seule
    page](../glpi/inventory_all.html)**\
     Pour un élément, toutes les informations sont affichées sur une
    seule page depuis l'onglet Tous
-   **[Ajouter un contrat](../glpi/management_contract_t_create.html)**\
-   **[Voir un contrat](../glpi/management_contract_t_read.html)**\
-   **[Modifier un
    contrat](../glpi/management_contract_t_update.html)**\
-   **[Supprimer un
    contrat](../glpi/management_contract_t_delete.html)**\
-   **[Associer un contrat à un
    fournisseur](../glpi/management_contract_t_linktosupplier.html)**\
-   **[Associer un contrat à un
    matériel](../glpi/management_contract_t_linktoitem.html)**\
-   **[Associer un contrat à un
    document](../glpi/management_contract_t_linktodocument.html)**\

**Sujet parent :** [Module
Gestion](../glpi/management.html "Le module Gestion permet aux utilisateurs de gérer les contacts, les fournisseurs, les budgets, les contrats et les documents")
