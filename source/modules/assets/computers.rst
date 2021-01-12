Computers
=========

In a computer entry, you can find informations such as:

* operating system: name, version, service pack, serial number, product ID...
* general characteristics: manufacturer, model, type, serial number...
* management informations: technical manager, status, location...
* computer users, either known by GLPI or not

Other fields are informative, such as `Network` (connexion type) and `Update source` (where are computer updates coming from (Windows update, yum, apt...).

It is possible to use :doc:`templates with computers <../generalites/gabarits>`.

.. note::

   * when GLPI is used with an inventory tool, various informations provided by the tool itself are also available
   * a computer can be a server, a desktop computer or a laptop; to differentiate them, it is possible to use the `type` field


The different tabs
------------------

.. include:: tabs/os.rst

.. include:: tabs/components.rst

.. include:: tabs/volumes.rst

.. include:: tabs/softwares.rst

.. include:: tabs/connexions.rst

.. include:: tabs/network-ports.rst

.. include:: ../tabs/management.rst

.. include:: ../tabs/contracts.rst

.. include:: ../tabs/documents.rst

.. include:: tabs/virtualization.rst

.. include:: tabs/antivirus.rst

.. include:: ../tabs/tickets.rst

.. include:: ../tabs/problems.rst

.. include:: ../tabs/changes.rst

.. include:: ../tabs/external-links.rst

.. include:: ../tabs/notes.rst

-   **[Onglet "Réservations"](Les_différents_onglets/Onglet_Réservations.rst)**
     Gestion des réservations pour un objet d'inventaire

.. include:: ../tabs/historical.rst

.. include:: ../tabs/debug.rst

.. include:: ../tabs/all.rst


The different actions
---------------------

Apart from :doc:`common actions <../generalites/actions>`, some actions are specific to computers:

* **Install a software with a license on a computer**
  From the tab *Softwares*, add a license by choosing the name of the software followed by the name of the license.
  From the *Mass actions* of summary table, choose **Install**

    .. warning::

       A software can only be installed if its license has a version in use or a purchase version.
