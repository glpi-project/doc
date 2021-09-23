Consumables
===========

In a consumable form, the following information is available:

* General characteristics of the consumable:

  * Vendor
  * Type
  * Reference
  * ...

* Consumable management:

  * Technical person in charge
  * Storage location
  * ...

The alert threshold corresponds to the minimal value at which an alert is triggered.

.. note:: For alerts to be effective, notifications must be activated; see :doc:`notifications configuration <../configuration/04_Notifications/01_Configurer_les_notifications>`.

Changing the state of a consumable from `new` to `used` requires to set involved user or group.

Management of shared stocks is possible by defining the element as recursive on an entity. The elements will then be available for all sub-entities.

The different tabs
------------------

.. _add-consumables-model:

Consumables
~~~~~~~~~~~~

This tab allows to add as many consumables as needed. It is also possible to add several consumable in one shot.

A first table lists unused consumables, a second table lists used consumables together with the name of the group or the person to which it has been allocated.

The mass actions of this tab allows to allocate consumables (action **Give***).

.. image:: /image/consumable.png
   :alt: A consumable form
   :align: center

.. include:: ../tabs/management.rst

.. include:: ../tabs/documents.rst

.. include:: ../tabs/external-links.rst

.. include:: ../tabs/notes.rst

.. include:: ../tabs/debug.rst

.. include:: ../tabs/all.rst

The different actions
---------------------

Apart from :doc:`common actions <../overview/actions>`, some actions are specific to consumables:

* :ref:`Add new consumables to a model <add-consumables-model>` ;
* List allocated consumables:

  .. image:: /image/resumeConsumable.png
     :alt: Summary of consumables
     :align: center

  Right icon allows to have a summary of allocated consumables

  .. image:: /image/resumeConsumableExample.png
     :alt: Summary of allocated consumables
     :align: center
