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
A restock threshold which represents the amount you wish to have in stock after ordering.

For example, you want to have 100 HDMI cables in stock but it isn't worth ordering them until you have 10 or less in stock (due to bulk discounts, process overhead, etc).
You can set your alarm threshold to 10 and your restock value to 100.
When you receive the alarm notification, it will let you know what the restock value is and plainly say how many need to be ordered to meet that value (configurable in notification templates).

.. note:: For alerts to be effective, notifications must be activated; see :ref:`notification management <configure_notifications>`.

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

.. image:: images/consumable.png
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
  The *Summary* menu button allows you to see a summary of allocated consumables

  .. image:: images/consumable_summary.png
     :alt: Summary of allocated consumables
     :align: center
