Computers
=========

Each computer has its own information and related hardware (monitor, components, etc.).
All this information is divided into tabs? You can find your computers in **Assets > Computers**:

Computer
--------

Computer tab, includes basic information about the machine :

.. image:: images/computer-view.png
   :alt: module assets - computer
   :align: center
   :scale: 31 %


* Name
* `Location <../../common_fields.html#location>`_
* `Technician in charge <../../common_fields.html#technician-in-charge>`_
* `Group in charge <../../common_fields.html#group-in-charge>`_
* `Alternate usernmame number <../../common_fields.html#Alternate-usernmame-number>`_
* `Alternate usernmame <../../common_fields.html#Alternate-usernmame-number>`_
* `User <../../common_fields.html#user>`_
* `Group <../../common_fields.html#group>`_
* `Comments <../../common_fields.html#comments>`_
* `Status <../../common_fields.html#status>`_
* `Computer type <../../common_fields.html#computer-type>`_
* `Manufacturer <../../common_fields.html#manufacturer>`_
* `Model <../../common_fields.html#model>`_
* `Serial number <../../common_fields.html#serial-number>`_
* `Inventory number <../../common_fields.html#inventory-number>`_
* `Network <../../common_fields.html#network>`_
* `UUID <../../common_fields.html#uuid>`_
* `Update source <../../common_fields.html#update-source>`_

If your computer has been inventoried by the automatic inventory, you can find informtions about the `Agent GLPI <https://glpi-agent.readthedocs.io/en/latest/>`_

* Agents
* Public contact address
* Agents Status
* Useragent
* Last contact
* Request inventory
* Inventory tag
* Last inventory update

Impact Analysis
---------------

`Impact analysis <../../common_tabs.html#impact-analysis>`_ enables an infrastructure diagram to be drawn up, showing the dependencies and impacts in the event of equipment loss.
This can be saved and exported


Operating system
----------------

Operating system includes information about your machine's OS :

* Name
* Architecture
* Kernel
* Product ID
* Company
* Installation date
* Version
* Service pack
* Edition
* Serial number
* Owner
* Host ID


Components
----------

This tab lists the PC's components :

* BIOS
* Processor
* Memory
* Hard Drive
* Network card
* Drive
* Battery
* Graphics card
* Soundcard
* Controller

Each item has its own information (name, model, brand, memory capacity, number of cores/threads, etc.).

Lines
-----

You can add telephone lines created in :doc:`Lines <../management/lines>`


Volumes
-------

Summarises all the volumes present (hard disk, DVD) as well as the partitions present on the workstation
(virtual disks such as Google Cloud may appear if they are installed as a network drive).

* Name
* Automatic inventory (Yes /No)
* partition
* Mount point
* File system
* Global size
* Free size
* Free percentage
* Encryptation (if the disk is encrypted, a padlock will be displayed)


Software
--------

Lists all the applications brought up during the inventory and those added manually






**-------------------OLD DOCUMENTATION-----------------**







In a computer form, the following information is available:

* Operating system:

  * Name
  * Version
  * Service pack
  * Serial number
  * Product ID
  * ...

* General characteristics:

  * Manufacturer
  * Model
  * Type
  * Serial number
  * ...

* Management information:

  * Technical manager
  * Status
  * Location
  * ...

* Users:

  * Computer users, either known by GLPI or not

Other fields are informative, such as `Network` (connexion type) and `Update source` (where are computer updates coming from (Windows update, yum, apt...).

It is possible to use :doc:`templates with computers <../overview/templates>`.

.. note::

   * when GLPI is used with an inventory tool, various information provided by the tool itself are also available
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

.. todo::
   Fix this reference (include or link???)
   **[Onglet "Réservations"](Les_différents_onglets/Onglet_Réservations.rst)**
   Gestion des réservations pour un objet d'inventaire

.. include:: ../tabs/historical.rst

.. include:: ../tabs/debug.rst

.. include:: ../tabs/all.rst


The different actions
---------------------

Apart from :doc:`common actions <../overview/actions>`, some actions are specific to computers:

* **Install a software with a license on a computer**
  From the tab *Softwares*, add a license by choosing the name of the software followed by the name of the license.
  From the *Mass actions* of summary table, choose **Install**

.. warning::

   A software can only be installed if its license has a version in use or a purchase version.
