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

The different actions
---------------------

- **[Add a cartridge model](Les_différentes_actions/Créer_un_nouvel_objet.rst)**
- **[See a cartridge model](Les_différentes_actions/Visualiser_un_objet.rst)**
- **[Modify a cartridge model](Les_différentes_actions/Modifier_un_objet.rst)**
- **[Delete a cartridge model](Les_différentes_actions/Supprimer_un_objet.rst)**
- **Add new cartridges to a model**
  See tab *Cartridges* above
- **Add a printer model for the cartridge model**
  See tab *Printer model* above
- **[Associate a document with a cartridge model](Les_différentes_actions/Lier_un_document_à_un_objet.rst)**
- **[Transfer a cartridge to another entity](Les_différentes_actions/Transférer_un_objet.rst)**
