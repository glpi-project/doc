Gérer les budgets
=================

Un budget dans GLPI, c'est la définition d'un montant sur une période donnée. Les autre éléments de GLPI peuvent être attachés à un budget et ainsi piocher dans ce dernier en indiquant leur valeur.

Matérialiser un budget au sein de GLPI ouvre la fonctionnalité de gestion administrative et financière pour tous les autres éléments présents dans l'outil.

Il est possible de suivre l'évolution du budget en traçant la valeur de chaque élément rattachés.

.. note::

        Lier un élément de GLPI avec un budget se passe dans l'onglet Gestion de l'élément !


.. image:: images/budgets.png
        :alt: Principaux champs d'un budget
        :align: center

.. note::

   Lors de la visualisation d'un budget dans une sous-entité, le total du budget restant n'est pas accessible.

   Important : Ce total est négatif si le total de la valeur des matériels est plus élevée que la valeur du budget.

.. include:: ../onglets/templates.rst

Les différents onglets
----------------------

Principal
~~~~~~~~~

Cet onglet fournit un tableau récapitulant le montant dépensé sur le budget par type d'éléments ainsi que le total restant.

.. image:: images/main-budgets.png
        :alt: Tableau récapitulatif du budget
        :align: center

Eléments
~~~~~~~~~

Cet onglet permet de visualiser les autres éléments de GLPI attachés à ce budget ainsi que leur valeur.

.. image:: images/elements-budgets.png

.. note::

        Le lien entre le budget et un élément se fait depuis l'onglet Gestion de l'élément !

.. include:: ../onglets/documents.rst

.. include:: ../onglets/knowledgebase.rst

.. include:: ../onglets/external-links.rst

.. include:: ../onglets/notes.rst

.. include:: ../onglets/historical.rst

.. include:: ../onglets/all.rst

Les différentes actions
-----------------------

-   :doc:`Ajouter un budget <../../Les_différentes_actions/creer_un_nouvel_objet>`

-   :doc:`Visualiser un budget <../../Les_différentes_actions/visualiser_un_objet>`

-   :doc:`Modifier un budget <../../Les_différentes_actions/modifier_un_objet>`

-   :doc:`Supprimer un budget <../../Les_différentes_actions/supprimer_un_objet>`

-   :doc:`Associer un document à un budget <../../Les_différentes_actions/associer_un_document_a_un_objet>`

-   :doc:`Transférer un budget <../../Les_différentes_actions/transferer_un_objet>`
