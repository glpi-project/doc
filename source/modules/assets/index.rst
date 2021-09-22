Assets
======

The GLPI Asset module is used to manage all the assets that are part of your IT infrastructure.

Asset management in GLPI
------------------------

In order to manage hardwares and software of an IT infrastructure, GLPI allows natively to list all the assets that are used inside the managed organization.

However, it is possible to automate information pushing from the assets thanks to third-party tools. GLPI supports the use of two existing plugins:

* The `Fusion Inventory <https://github.com/fusioninventory/fusioninventory-for-glpi/>`_ plugin transforms GLPI into an inventory server with the Fusion Inventory agents interfacing directly with the GLPI server.

* The `ocsinventoryng <https://github.com/pluginsGLPI/ocsinventoryng>`_ plugin allow to synchronize the GLPI database with the `OCS Inventory NG <http://www.ocsinventory-ng.org>`_  inventory tool: the agents installed on the computers interface directly the the OCS Inventory NG server.

Available types
---------------

.. toctree::
   :maxdepth: 1

   computers
   displays
   softwares
   licenses
   Network equipments <network-equipments>
   peripherals
   printers
   cartridges
   consumables
   phones
   global

.. todo::

   Referenced in original doc but not present:

   * **[Gestion du protocole Internet (IP)](../glpi/inventory_ip.html)**\
      Le protocole IP est matérialisé sous plusieurs formes : adresses
      IP, réseaux IP, mais aussi des FQDN
