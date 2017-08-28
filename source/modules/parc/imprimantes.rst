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

.. include:: ../onglets/tickets.rst

-   **[Onglet "Problèmes"](Les_différents_onglets/Onglet_Problèmes.md)**

-  **[Onglet "Liens"](Les_différents_onglets/Onglet_Liens.md)**
     Pour certains éléments, les liens externes se gèrent depuis le menu ***Liens externes***

-   **[Onglet "Notes"](Les_différents_onglets/Onglet_Notes.md)**

-   **[Onglet "Réservations"](Les_différents_onglets/Onglet_Réservations.md)**
     Gestion des réservations pour un objet d'inventaire

.. include:: ../onglets/historique.rst

.. include:: ../onglets/debug.rst

.. include:: ../onglets/all.rst


Les différentes actions
-----------------------

Les imprimantes ne proposent pas d'actions spécifiques, se reporter aux :doc:`actions communes <../generalites/actions>`.
