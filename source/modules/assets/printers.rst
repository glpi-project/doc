Printers
========

In a printer form, several information are available:

* General characteristics of the printer:

  * Vendor
  * Model
  * Type
  * Serial number
  * ...

* Printer management: 

  * Technical person in charge
  * Status
  * Location
  * ...

* Printer users:

  * Users known to GLPI or not
  * Groups of users
  * ..

* Specifications:

  * Page counter
  * Port types
  * ...

Management Type
---------------

It is possible to manage printers either unitary or globally.

Unitary management corresponds to one printer per computer while global management make the printer a virtual global element that will be connected to several computers.

Global management allows to limit the number of elements to manage when these elements are not a strategic data in the assets management.


It is possible to use :doc:`templates with printers <../overview/templates>`.


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

.. todo::
   Fix this reference (include or link???)
   **[Onglet "Réservations"](Les_différents_onglets/Onglet_Réservations.rst)**
   Gestion des réservations pour un objet d'inventaire

.. include:: ../tabs/historical.rst

.. include:: ../tabs/debug.rst

.. include:: ../tabs/all.rst


The different actions
---------------------

Printers do not have specific actions; report to :doc:`common actions <../overview/actions>`.
