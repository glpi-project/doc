Cartridges
==========

This functionality of `Asset` module allows to create cartridges models and corresponding cartridges.

In a cartridge form, the following information is available:

* General characteristics of the cartridge:

  * Vendor
  * Type
  * Reference
  * ...

* Printer management:

  * Technical person in charge
  * Storage site
  * ...

The alert threshold is the minimal value at which an alert is triggered.

.. note:: For alerts to be effective, notifications must be activated; see :doc:`notifications configuration <../configuration/04_Notifications/01_Configurer_les_notifications>`.

For a cartridge to be installable on a printer, it must be declared as compatible with this printer.

Management of shared stock is possible by defining the element as recursive on an entity. The elements will then be available for all sub-entities.

The different tabs
------------------

- **Tab "Cartridges"**
  This tab allows adding as many cartridges as needed by the model. It is also possible to add several cartridges at once.

A first table lists the new or unused cartridges, the second table lists used cartridges.

.. image:: /image/cartridge.png
   :alt: A cartridge form
   :align: center

- **Tab "Printer models"**
  This tab allows to declare the printer models that are compatible with the cartridge.

.. include:: ../tabs/management.rst

.. include:: ../tabs/documents.rst

.. include:: ../tabs/external-links.rst

.. include:: ../tabs/notes.rst

.. include:: ../tabs/historical.rst

.. include:: ../tabs/debug.rst

.. include:: ../tabs/all.rst
