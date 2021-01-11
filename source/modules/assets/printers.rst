Printers
========

In a printer form, several informations are available:

- general characteristics of the printer: vendor, model, type, serial number...
- printer management: technical person in charge, status, location...
- printer users: users known to GLPI or not, groups of users..
- specifications: page counter, port types...

** Management type: **

It is possible to manage printers either unitary or globally.

Unitary management corresponds to one printer per computer while global management make the printer a virtual global element that will be connected to several computers.

Global management allows to limit the number of elements to manage when these elements are not a strategic data in the assets management.

.. ??? La gestion globale permet de limiter le nombre d'éléments à gérer dans le cas où ceux-ci ne constituent pas une donnée stratégique dans la gestion du parc informatique.

It is possible to use :doc:`templates with printers <../generalites/gabarits>`.


The different tabs
------------------

.. include:: tabs/components.rst

Cartridges
~~~~~~~~~~

This tab displays the cartridges associated with the selected printer model:

* cartridges in use, with add date and use date
* used cartridges, with cartridge model, add date, use date, end of life date, printing counter and number of printed pages since last cartridge change

.. note::

   For cartridge adding or removing, report to :doc:`cartridges management <cartridges>`.

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

Printers do not have specific actions; report to :doc:`common actions <../generalites/actions>`.

