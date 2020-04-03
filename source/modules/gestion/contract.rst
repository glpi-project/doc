Gérer les contrats
==================

Glpi intègre la gestion des contrats. Cette fonctionnalité permet de couvrir tout type de contrat réalisé tel que les prêts, contrats de maintenance, contrat de support, etc.
Cette gestions a pour objectif:

- de fournir un inventaire de tous les contrats relatifs au parc informatique de l'organisation;
- d'intégrer les contrats dans la gestion financière de GLPI;
- d'anticiper et suivre le renouvellement des contrats.

.. image:: images/contract.png

.. include:: ../onglets/templates.rst

Description des champs spécifiques
----------------------------------
-   **Type de contrat** : par défaut, aucun type de contrat n'est renseigné. Il faut au préalable les renseigner dans la configuration des intitulés. 
-   **Numéro**: cette information n'est pertinente que si le numéro de contrat est identique à celui utilisé au sein des autres services de la société ;
-   **Date de début** : à ne pas confondre avec la date d'enregistrement du contrat dans GLPI. Tous les calculs de périodicité sur le contrat sont donc fonction de cette date ;
-   **Durée initiale du contrat** : si ce champ et la date de début sont renseignés, la date de fin de contrat apparaitra (en rouge si la date a expirée) ;
-   **Préavis** : ce champ peut servir au déclenchement des notifications d'alerte ;
-   **Numéro comptable** : pour permettre un rapprochement avec le logiciel comptable de la société ;
-   **Périodicité du contrat** : c'est la durée à laquelle la reconduction du contrat est possible (*Exemple : Un contrat d'abonnement téléphonique d'une durée de 24 mois renouvelable au bout de 12 mois*) ;
-   **Périodicité de facturation** : C'est la durée entre chaque facture.
-   **Type de reconduction** : *Tacite* (le contrat est reconductible automatiquement d'une période à une autre si aucune des parties ne manifeste sa volonté de le rompre) ou *Expresse* (nécessite l'accord des deux parties pour la reconduction du contrat) ;
-   **Nombre max d'éléments** : la valeur choisie dans ce champ bloquera ou non l'ajout de nouvel éléments attachés à ce contrat ;
-   **Heures d'intervention** : Les plages horaires d'intervention correspondent aux horaires d'intervention couvert par le contrat. Il est possible d'y distinguer les samedis et les jours chômés.

Les différents onglets
----------------------

Coûts
~~~~~

Cet onglet permet de définir un coût relatif au contrat sur un budget présent dans GLPI. C'est à dire imputé une valeur sur le montant total du budget sélectionné qui sera attribué au type d'objet Contrat.

.. image:: images/cost-contract.png


Fournisseurs
~~~~~~~~~~~~

Dans cet onglet, il est possible d'associer un ou plusieurs fournisseurs au contrat actuel.

.. image:: images/suppliers-contract.png

.. include:: ../onglets/elements.rst

.. include:: ../onglets/documents.rst

.. include:: ../onglets/external-links.rst

.. include:: ../onglets/notes.rst

.. include:: ../onglets/historical.rst

.. include:: ../onglets/debug.rst

.. include:: ../onglets/all.rst

Les différentes actions
-----------------------
-   :doc:`Ajouter un contrat <../../Les_différentes_actions/creer_un_nouvel_objet>`

-   :doc:`Visualiser un contrat <../../Les_différentes_actions/visualiser_un_objet>`

-   :doc:`Modifier un contrat <../../Les_différentes_actions/modifier_un_objet>`

-   :doc:`Supprimer un contrat <../../Les_différentes_actions/supprimer_un_objet>`

-   :doc:`Associer un document à un contrat <../../Les_différentes_actions/associer_un_document_a_un_objet>`

-   :doc:`Transférer un contrat <../../Les_différentes_actions/transferer_un_objet>`

    Il est possible de recevoir des notifications pour prévenir d'événements tels que la fin du contrat.
    Dans le cas ou la reconduction du contrat serait expresse, il peut être intéressant d'être alerté à la date du préavis. Pour les contrats périodiques il est également possible d'être alerté à la
    fin de chaque période ou préavis de période.
    Ceci est configurable par entité dans le menu **Configuration > Notifications** pour définir les modèles et destinataires utilisés et dans le menu **Configuration > Entité** pour activer ou non cette fonctionnalité, définir les valeurs par défaut et une anticipation de l'envoi de la notification si besoin.
