Gérer les budgets
=================

Un budget dans GLPI se définit par un nom, une valeur et une période pendant laquelle le budget a été alloué, elle même définie par une date de début ainsi qu'une date de fin.

Il peut également être défini sur plusieurs entités (récursivité).


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

Cet onglet fournit un tableau récapitulant le montant dépensé sur le budget ainsi que le total restant.

.. image:: images/main-budgets.png
        :alt: Tableau récapitulatif du budget
        :align: center

Eléments
~~~~~~~~~

Cet onglet permet de visualiser les éléments attachés à ce budget ainsi que leur valeur.

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

Outre les :doc:`actions communes <../generalites/actions>` ; certaines actions sont spécifiques aux budgets :

* **Associer un élément à un budget**
   Il suffit de choisir ce budget dans l'onglet *Gestion* de l'objet.
