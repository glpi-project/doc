Peripherals
===========

In a peripheral form, several informations are available:

- general characteristics of the peripheral: vendor, model, type, serial number...
- peripheral management: technical person in charge, status, location...
- peripheral users: users known to GLPI or not, groups of users..

** Management type: **

It is possible to manage peripherals either unitary or globally.

Unitary management corresponds to one peripheral per computer while global management make the peripheral a virtual global element that will be connected to several computers.

Global management allows to limit the number of elements to manage when these elements are not a strategic data in the assets management.

It is possible to use :doc:`templates with peripherals <../generalites/gabarits>`.


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

- **[Tab "Reservations"](Les_différents_onglets/Onglet_Réservations.rst)**
  Management of reservations for an inventory object

.. include:: ../tabs/historical.rst

.. include:: ../tabs/debug.rst

.. include:: ../tabs/all.rst


The different actions
---------------------

Peripherals do not have specific actions; report to :doc:`common actions <../generalites/actions>`.
