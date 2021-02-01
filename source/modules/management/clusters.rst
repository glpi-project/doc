Clusters
========

A GLPI cluster is a grouping of several assets, which can be computers or network equipments.

.. note::

   GLPI clusters are taken into account when performing an impact analysis.

.. todo::
   link to impact analysis representation

.. image:: images/clusters.png
   :alt: A GLPI cluster
   :align: center


Description of specific fields
------------------------------

* **UUID**: Unique identifier of the cluster
* **Version**: In the case of a software cluster, the version number can be entered
* **Update Source**: How the cluster's data were updated


The different tabs
------------------

Elements
~~~~~~~~

This tab lists the cluster's elements and allow to add new assets to the cluster.

.. image:: images/elements-clusters.png
   :alt: List of cluster's elements
   :align: center

Network ports
~~~~~~~~~~~~~

This tab list cluster's network interfaces and allows to create new ones.

Possible interfaces are:

* Ethernet port
* WiFi port
* FiberChannel port
* Port aggregate
* Port alias
* Dial up line connection
* Local loop-back

.. image:: images/networks-clusters.png
   :alt: List of cluster's network interfaces
   :align: center

.. include:: ../tabs/contracts.rst

.. include:: ../tabs/documents.rst

.. include:: ../tabs/tickets.rst

.. include:: ../tabs/problems.rst

.. include:: ../tabs/changes.rst

.. include:: ../tabs/historical.rst

.. include:: ../tabs/all.rst


The different actions
---------------------

*   :doc:`Add a cluster <../../Les_différentes_actions/creer_un_nouvel_objet>`
*   :doc:`Display a cluster <../../Les_différentes_actions/visualiser_un_objet>`
*   :doc:`Modify a cluster <../../Les_différentes_actions/modifier_un_objet>`
*   :doc:`Delete a cluster <../../Les_différentes_actions/supprimer_un_objet>`
*   :doc:`Attach a document to a cluster <../../Les_différentes_actions/associer_un_document_a_un_objet>`
*   :doc:`Transfer a cluster <../../Les_différentes_actions/transferer_un_objet>`
