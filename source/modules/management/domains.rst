Gérer les domaines
==================

Deux nouveaux objets de GLPI sont rassemblés dans cette fonctionnalité : les domaines et les enregistrements de domaines.

Gérer les domaines et les enregistrements au sein de GLPI permet notamment:

* de construire un inventaire des noms de domaines;
* d'inventorier les enregistrements (records) de chaque domaine;
* d'anticiper et suivre le renouvellement des noms de domaines;
* d'intégrer les domaines dans la gestion financière de GLPI;
* de lier les éléments du parc au domaine;
.. versionchanged:: 9.5.0
* inclure les domaines et les enregitrements dans l'assistance de GLPI.




.. note::

		L'accès à la liste des objets Enregistrements de domaines est accessible depuis la liste des objets Domaines !


Objet Domaine
-------------

L'objet domaine permet de matérialiser un domaine informatique dans son ensemble (son nom, sa date d'expiration, etc).
L'objet est associable dans l'assistance de GLPI (tickets, problèmes changements).

.. image:: images/domains.png
        :alt: Caractérisation d'un domaine
        :align: center

Les différents onglets
~~~~~~~~~~~~~~~~~~~~~~

Records
~~~~~~~

Dans cet onglet, il est possible de sélectionner ou de créer un enregistrement de domaine à associer au domaine actuel.


.. image:: images/recordslist-domains.png
        :alt: Liste des enregistrements associables
        :align: center


.. include:: ../tabs/elements.rst

.. include:: ../tabs/management.rst

.. include:: ../tabs/tickets.rst

.. include:: ../tabs/problems.rst

.. include:: ../tabs/changes.rst

.. include:: ../tabs/contract/rst

.. include:: ../tabs/documents.rst

.. include:: ../tabs/external-links.rst

.. include:: ../tabs/historical.rst

.. include:: ../tabs/all.rst


Objet Enregistrement de domaine (Record)
-------------------------------------------

L'objet Enregistrement de domaine permet de matérialiser tous les types d'enregistrements que l'on peut trouver dans une zone ou un fichier de configuration DNS ( TXT, A, PTR, SOA, CNAME, etc ).

Cet objet doit être associé à un objet Domaine vu précedemment.

.. image:: images/recordsadd-domains.png
        :alt: Création d'un enregistrement de domaine
        :align: center

.. note::

        Les types d'enregistrements ne sont pas limités à ceux créés par défaut, ils sont personnalisables depuis la gestion des intitulés !

 
Les différents onglets
~~~~~~~~~~~~~~~~~~~~~~

.. include:: ../tabs/tickets.rst

.. include:: ../tabs/problems.rst

.. include:: ../tabs/documents.rst

.. include:: ../tabs/external-links.rst

.. include:: ../tabs/notes.rst

.. include:: ../tabs/historical.rst

.. include:: ../tabs/all.rst



Les différentes actions 
-----------------------

*   :doc:`Visualiser un domaine <../../Les_différentes_actions/visualiser_un_objet>`
*   :doc:`Ajouter un domaine/un enregistrement <../../Les_différentes_actions/creer_un_nouvel_objet>`
*   :doc:`Modifier un domaine/un enregistrement <../../Les_différentes_actions/modifier_un_objet>`
*   :doc:`Supprimer un domaine/un enregistrement <../../Les_différentes_actions/supprimer_un_objet>`
*   :doc:`Associer un document à un domaine/un enregistrement <../../Les_différentes_actions/associer_un_document_a_un_objet>`
*   :doc:`Transférer un domaine <../../Les_différentes_actions/transferer_un_objet>`
*	:doc:`Visualiser les enregistrements de domaines <../../Les_différentes_actions/visualiser_ liste_des_enregistrements_de_domaine>`