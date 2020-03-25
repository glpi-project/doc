Gérer les fournisseurs
======================

GLPI intègre une gestion des fournisseurs, celle-ci sert à la fois à identifier qui a vendu un matériel (dans la gestion de parc) mais aussi à attribuer des tickets à cette personne ou société.

Lors de l'achat d'un matériel de marque XX à un fournisseur YY, il faut traiter deux informations distinctes à savoir le fabricant (XX) et le fournisseur (YY).

Un fournisseur se caractérise par un nom, un type de tiers (intitulé), des informations de localisation (adresse, code postal, ville, pays) et de contact (site web, téléphone et fax).

.. image:: images/suppliers.png
        :alt: Caractérisation d'un fournisseur
        :align: center


Les différents onglets
----------------------

.. include:: ../onglets/contacts.rst

.. include:: ../onglets/contract.rst

Eléments associés
~~~~~~~~~~~~~~~~~

L'onglet Eléments pour l'objet fournisseur est spécifique. Il ne permet que la consultation.
Lier un élément avec un fournissur se fera depuis l'onglet **Gestion** de l'élément (du Parc) concerné.

.. image:: images/elements-suppliers.png
        :alt: Consultation des éléments liés à un fournisseur
        :align: center

.. include:: ../onglets/documents.rst

.. include:: ../onglets/tickets.rst

Problèmes
~~~~~~~~~

Dans cet onglet, il sera possible de consulter les **Problèmes** associés à ce fournisseur. C'est à dire, tous les Problèmes sur lesquels le fournisseur est affecté dans le champ **Attribué à**.

.. image:: images/problems-suppliers.png
        :alt: Consultation des Problèmes associés à un fournisseur
        :align: center

Changements
~~~~~~~~~~~

L'onglet permet la consultation de tous les Changements sur lesquels le fournisseur est affecté dans le champ **Attribué à**.

.. image:: images/changes-suppliers.png
        :alt: Consultation des Changements associés à un fournisseur
        :align: center

.. include:: ../onglets/external-links.rst

.. include:: ../onglets/notes.rst

.. include:: ../onglets/knowledgebase.rst

.. include:: ../onglets/historical.rst

.. include:: ../onglets/all.rst

Les différentes actions
-----------------------

Outre les :doc:`actions communes <../generalites/actions>` ; certaines actions sont spécifiques aux fournisseurs :

*  **Associer un élément à un fournisseur**
    Il suffit de choisir ce fournisseur dans l'onglet *Gestion* de l'objet.
* Associer un contact à un fournisseur

   La distinction est clairement établie entre le fournisseur, qu'il est possible de lier de manière univoque à des éléments d'inventaire et les contacts, qui composent la liste des personnes permettant d'entrer en relation avec ce fournisseur. Pour établir cette liste, il faut donc associer les contacts au fournisseur concerné.

    Exemple :

    Monsieur Dupont est conseiller de vente dans l'entreprise Acme auprès de qui la structure se fournit régulièrement.
    Créer un fournisseur nommé Acme.
    Créer un contact au nom de Monsieur Dupont.
    Affecter à ce contact le type commercial.
    Puis associer le contact au fournisseur Acme.

