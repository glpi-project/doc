Printers
========

Printers can be brought up via SNMP discovery or manually.
Certain information such as ink level or page counter can be fed in.

.. note:: Note that this depends on the manufacturer and the information that the printer is able to retrieve.


.. tip:: To inventory your printers, a procedure is available `here <https://faq.teclib.com/03_knowledgebase/inventory/snmp_inventory/>`_



In a printer form, the following information is available:

.. Note:: It is possible to use :doc:`templates with printers <../overview/templates>`.

.. tip:: Note that if you modify a field manually, it will be considered locked.
          This will prevent it from being modified the next time the automatic inventory is uploaded.

          For more information, see :doc:`lock </modules/configuration/locks>`


* Name
* :doc:`Location </tabs/common_fields/location>`
* :doc:`Technician in charge </tabs/common_fields/technician_in_charge>`
* :doc:`Group in charge </tabs/common_fields/group_in_charge>`
* :doc:`Alternate usernmame number </tabs/common_fields/alternate_username>`
* :doc:`Alternate usernmame </tabs/common_fields/alternate_user>`
* :doc:`Sysdescr </tabs/common_fields/sysdescr>`
* :doc:`User </tabs/common_fields/user>`
* :doc:`Group </tabs/common_fields/group>`
* :doc:`Comments </tabs/common_fields/comments>`
* :doc:`Status </tabs/common_fields/status>`
* :doc:`Printer type </tabs/common_fields/computer_type>`
* :doc:`Manufacturer </tabs/common_fields/manufacturer>`
* :doc:`Model </tabs/common_fields/model>`
* :doc:`Serial number </tabs/common_fields/serial_number>`
* :doc:`Inventory number </tabs/common_fields/inventory_number>`
* :doc:`SNMP Credentials </tabs/common_fields/SNMP_credentials>`
* :doc:`Management type </tabs/common_fields/management_type>`
* :doc:`Network </tabs/common_fields/network>`
* :doc:`UUID </tabs/common_fields/uuid>`
* :doc:`Update source </tabs/common_fields/update_source>`
* :doc:`Memory </tabs/common_fields/uuid>`


Impact Analysis
---------------

:doc:`Impact analysis <../../tabs/impact_analysis>` enables an infrastructure diagram to be drawn up, showing the dependencies and impacts in the event of equipment loss.
This can be saved and exported

Operating systems
-----------------

:doc:`Operating systems <../../tabs/operating_systems>`  includes information about your machine's OS :

* Name
* Version
* Architecture
* Service Pack
* Kernel
* Edition
* Product ID
* Serial number
* Company
* Owner
* Host ID
* Installation date

Software
--------

Lists all the :doc:`software <../../tabs/software>` brought up during the inventory and those added manually

It is possible to install (in the logical sense) software on a PC manually.

To add new :doc:`software <../../modules/assets/softwares>`  to the list of applications, you need to go to the Assets > Software tab,
which will then be visible from the software tab of the various elements of the installed base.

Cartridges
-----------

:doc:`Cartridges <cartridges>` reference the printer's ink cartridges. They can be sent via the SNMP interface or manually.
If they are reported by the inventory, the ink level will also be indicated.


Page counters
-------------

If the printer allows it (this depends on the information that the manufacturer authorises),
the number of prints can be reduced. If the printer allows it (this depends on the information the manufacturer allows),
the number of prints can be reduced. A filter is available for viewing the last 7 or 30 days, the last year, etc.
or for viewing daily, weekly, etc. printouts.
You can also compare the number of prints against another printer.



















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
