Displays
========

In a display form, several informations are available:

- general characteristics of the display: vendor, model, type, serial number...
- display management: technical person in charge, status, location...
- display users: users known to GLPI or not, groups of users..
- specifications: size, resolution, port types (VGA, DVI, HDMI, DisplayPort), integrated sound, connectivity...

** Management type: **

It is possible to manage displays either unitary or globally.

Unitary management corresponds to one display per computer while global management make the printer a virtual global element that will be connected to several computers.

Global management allows to limit the number of elements to manage when these elements are not a strategic data in the assets management.

It is possible to use :doc:`templates with displays <../generalites/gabarits>`.

The different tabs
------------------

.. ??? _connexion_monitor:

.. include:: tabs/connexions.rst

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

Apart from :doc:`common actions <../generalites/actions>`, some actions are specific to displays:

* :ref:`connect a display to a monitor <connexion_monitor>`
