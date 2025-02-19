Assets
======

The GLPI Asset module is used to manage all the assets that are part of your IT infrastructure,
whether they have been added manually or brought up by automatic inventory

Asset management in GLPI
------------------------

In order to manage hardwares and software of an IT infrastructure, GLPI allows natively to list all the assets that are used inside the managed organization.

However, it is possible to automate information pushing from the assets thanks to the native inventory and GLPI Agent.

More information on the GLPI Agent can be found in its dedicated `documentation <https://glpi-agent.readthedocs.io/en/latest/index.html>`_.

.. note:: if you were using Fusion Inventory on your previous versions, this plugin is no longer supported.
   We advise you to install the GLPI Inventory plugin for tasks such as deploying packages, SNMP inventory and data collection, or to use GLPI's native inventory for simple reporting of your equipment.


Available types
---------------

.. toctree::
   :maxdepth: 3

   computers
   monitors
   softwares
   Network equipments <network-equipments>
   peripherals
   printers
   cartridges
   consumables
   phones
   racks
   pdus
   passives_devices
   cables
   databases
   global

.. todo::

   Referenced in original doc but not present:

   * **[Gestion du protocole Internet (IP)](../glpi/inventory_ip.html)**\
      Le protocole IP est matérialisé sous plusieurs formes : adresses
      IP, réseaux IP, mais aussi des FQDN
