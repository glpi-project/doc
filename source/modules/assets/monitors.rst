Displays
========

In a display form, the following information is available:

* General characteristics of the display:

  * Vendor
  * Model
  * Type
  * Serial number
  * ...

* Display management:

  * Technical person in charge
  * Status
  * Location
  * ...

* Display users:

  * Users known to GLPI or not
  * Groups of users
  * ..

* Specifications:

  * Size
  * Resolution
  * Port types (VGA, DVI, HDMI, DisplayPort)
  * Integrated sound
  * Connectivity
  * ...

**Management type:**

It is possible to manage displays either unitary or globally.

Unitary management corresponds to one display per computer while global management make the printer a virtual global element that will be connected to several computers.

Global management allows to limit the number of elements to manage when these elements are not a strategic data in the assets management.

It is possible to use :doc:`templates with displays <../overview/templates>`.

The different tabs
------------------

.. include:: tabs/connexions.rst

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
---------------------

Apart from :doc:`common actions <../overview/actions>`, some actions are specific to displays:

* :doc:`connect a display to a monitor <../../commontabs/item_connexions>`
