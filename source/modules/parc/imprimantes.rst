Imprimantes
===========

Dans la fiche d'une imprimante, plusieurs informations sont disponibles:

-   Sur les caractéristiques générales de l'imprimante (le fabricant, le modèle, le type, le numéro de série...) ;
-   Sur la gestion de l'imprimante (le responsable technique, son statut, le lieu où elle se trouve...) ;
-   Sur les usagers de l'imprimante (connus ou non dans GLPI, groupe d'utilisateurs...) ;
-   Sur ses spécifications (le compteur de page initial, les types de ports...).

**Description du type de gestion :**

Il est possible de gérer les imprimantes de manière unitaire ou globale.

La gestion unitaire correspond à une gestion classique (une imprimante pour un ordinateur) alors que dans la gestion globale, l'imprimante devient un élément virtuel global qui sera connecté à plusieurs ordinateurs.

La gestion globale permet de limiter le nombre d'éléments à gérer dans le cas où ceux-ci ne constituent pas une donnée stratégique dans la gestion du parc informatique.

**[Gérer les gabarits](Les_différentes_actions/Gérer_les_gabarits.md)**

Les différents onglets
----------------------

.. include:: onglets/composants.rst

Cartouches
~~~~~~~~~~

Les cartouches associées au modèle d'imprimante sélectionnée.

Il se décompose en deux parties :

* Les cartouches utilisées, avec comme information les dates d'ajout et d'utilisation,
* Les cartouches usagées, avec comme information le modèle de cartouche, les dates d'ajout, d'utilisation et de fin de vie, le compteur de l'imprimante ainsi que le nombre de pages imprimées depuis le dernier changement de cartouche.

.. note::

   Pour la création ou la suppression de cartouche reportez-vous à :doc:`la gestion des cartouches <cartouches>`.

.. include:: onglets/connexions.rst

.. include:: onglets/ports-reseaux.rst

.. include:: onglets/gestion.rst

.. include:: ../onglets/contrats.rst

.. include:: ../onglets/documents.rst

-   **[Onglet "Tickets"](Les_différents_onglets/Onglet_Tickets.md)**

-   **[Onglet "Problèmes"](Les_différents_onglets/Onglet_Problèmes.md)**

-  **[Onglet "Liens"](Les_différents_onglets/Onglet_Liens.md)**
     Pour certains éléments, les liens externes se gèrent depuis le menu ***Liens externes***

-   **[Onglet "Notes"](Les_différents_onglets/Onglet_Notes.md)**

-   **[Onglet "Réservations"](Les_différents_onglets/Onglet_Réservations.md)**
     Gestion des réservations pour un objet d'inventaire

-   **[Onglet "Historique"](Les_différents_onglets/Onglet_Historique.md)**
     L'historique est visualisé depuis l'onglet *Historique*

-   **[Onglet "Debug"](Les_différents_onglets/Onglet_Debug.md)**
    Uniquement si vous êtes connecté en mode Debug.

-   **[Onglet "Tous"](Les_différents_onglets/Onglet_Tous.md)**
     Pour un élément, toutes les informations sont affichées sur une seule page.


Les différentes actions
-----------------------
-   **[Ajouter une imprimante](Les_différentes_actions/Créer_un_nouvel_objet.md)**
-   **[Voir une imprimante](Les_différentes_actions/Visualiser_un_objet.md)**
-   **[Modifier une imprimante](Les_différentes_actions/Modifier_un_objet.md)**
-   **[Supprimer une imprimante](Les_différentes_actions/Supprimer_un_objet.md)**
-   **[Associer un document à une imprimante](Les_différentes_actions/Lier_un_document_à_un_objet.md)**
-   **[Associer un contrat à une imprimante](Les_différentes_actions/Lier_un_contrat_à_un_objet.md)**
-   **[Transférer une imprimante vers une autre entité](Les_différentes_actions/Transférer_un_objet.md)**
