PDUs
====

:abbr:`PDU (Power distribution unit)` lists all the item used to manage and monitor electrical distribution in a rack or datacenter.

.. image:: images/pdu.png
   :alt: global view PDUs
   :scale: 38 %

In a PDU form, the following information is available:


.. Note:: It is possible to use :doc:`templates with PDUs <../overview/templates>`.

.. image:: images/pdu-details.png
   :alt: Details view PDUs
   :scale: 45 %


* Name
* :doc:`Data center position </tabs/common_fields/data_center_position>`
* :doc:`Location </tabs/common_fields/location>`
* :doc:`Technician in charge </tabs/common_fields/technician_in_charge>`
* :doc:`Model </tabs/common_fields/model>`
* :doc:`Inventory number </tabs/common_fields/inventory_number>`
* :doc:`Comments </tabs/common_fields/comments>`
* :doc:`Status </tabs/common_fields/status>`
* :doc:`Device type </tabs/common_fields/asset_type>`
* :doc:`Manufacturer </tabs/common_fields/manufacturer>`
* :doc:`Serial number </tabs/common_fields/serial_number>`
* :doc:`User </tabs/common_fields/user>`

Impact Analysis
---------------

:doc:`Impact analysis <../../tabs/impact_analysis>` enables an infrastructure diagram to be drawn up, showing the dependencies and impacts in the event of item loss.
This can be saved and exported


Plugs
-----

:doc:`Plugs <tabs/plugs>` shows the number of sockets available on the PDU


Network Ports
-------------

This tab allows to manage the :doc:`network ports <../../tabs/network_ports>` attached to current item.

The information that can be viewed is:

* Name
* Port number
* MTU
* Speed
* Internal status
* Last change
* Number of I/O bytes
* Number of I/O errors
* Duplex
* VLAN
* Connected to
* Connection
* Deleted


Management
----------

:doc:`Management <../../modules/tabs/management>` of financial and administrative information, this information is visible in the 'Management' tab on the item's form.


Contracts
---------

GLPI supports :doc:`contracts <../management/contract>` management, in order to manage contract types such as loan, maintenance, support...

Contracts management allows to:

* make an inventory of all contracts related to the organization assets
* integrate contracts in GLPI financial management
* anticipate and follow contract renewal.


Documents
---------

The :doc:`document <../management/documents>` tab lets you link different types of files to the item (PDF, txt, png, etc.)
You can attach a document already uploaded to GLPI or add a new one directly from this tab.


Tickets
-------

View all :doc:`tickets <../tabs/tickets>` linked to the item.

Problems
--------

This tab refers to all hardware-related :doc:`problems <../assistance/problems>`.
Problems can also be linked to tickets, projects, etc. This allows you to have a complete scenario when necessary.

Changes
-------

:doc:`Changes <../assistance/changes>` lists all changes related to a material. From this tab, you can't link a change directly, you can do it from **Assistance** > **Changes** > **Items**.
You can create a new change from this page, which will be linked to the item you have selected.


.. include:: ../tabs/historical.rst

.. include:: ../tabs/all.rst