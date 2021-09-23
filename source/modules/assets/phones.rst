Phones
======

In a phone form, the following information is available:

* General characteristics of the phone:

  * Vendor
  * Model
  * Type
  * Serial number
  * ...

* Phone management:

  * Technical person in charge
  * Status
  * Location
  * ...

* Phone users:

  * Users known to GLPI or not
  * Groups of users
  * ...

* Specifications:

  * Power supply
  * Firmware
  * ...


**Management type:**

It is possible to manage phones either unitary or globally.

Unitary management corresponds to one phone per computer while global management make the phone a virtual global element that will be connected to several computers.

Global management allows to limit the number of elements to manage when these elements are not a strategic data in the assets management.

It is possible to use :doc:`templates with phones <../overview/templates>`.


The different tabs
------------------

.. include:: tabs/components.rst

.. include:: tabs/connexions.rst

.. include:: tabs/network-ports.rst

.. include:: ../tabs/management.rst

.. include:: ../tabs/contracts.rst

.. include:: ../tabs/documents.rst

.. include:: ../tabs/tickets.rst

.. include:: ../tabs/problems.rst

.. include:: ../tabs/external-links.rst

.. include:: ../tabs/notes.rst

.. todo::
   Fix this reference (include or link???)
   **[Tab "Reservations"](Les_différents_onglets/Onglet_Réservations.rst)**
   Management of reservations for an inventory object

.. include:: ../tabs/historical.rst

.. include:: ../tabs/debug.rst

.. include:: ../tabs/all.rst


The different actions
-----------------------

Phones do not have specific actions; report to :doc:`common actions <../overview/actions>`.
