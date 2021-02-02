Generate reports
================

GLPI allows to generate reports based on managed items:

* **Default report**

  This report summarizes present equipments sorted by type. Computers are also sorted by operating systems. 

* **By contract**

  This report shows the equipments that are under a maintenance contract with a third-party and can be detailed by equipment type and purchase date.

  Multiple selection is available.

  To add a type, it is possible to click in empty area and choose new type. Same applies to add a date.

  Generated table lists, sorted by item type, name, if it is in trash bin, entity, location, purchase and warranty expire date, contract type and contract begin and end dates.

* **By year** 

  Same as report by contract, but lists also the equipments without contract.

* **Hardware financial and administrative information**

  This report shows the summary of financial information for computers, printers, network equipments, displays, peripherals and phones.

  It is possible to obtain a report for a given period.

  The generated table lists, sorted by item type, name, entity, value, net accounting value, TCO, purchase date, starting date, warranty expire date. A summary displaying total value and net accountin value is available, both by item type and for all items.

* **Other financial and administrative information**

  Same as `Hardware financial and administrative information`, but for cartridges, licenses and consumables.

* **Network report**

  Three types of reports can be generated: by location, by hardware or by network plug. 
   
* **Loan**

  This report shows a summary of current, future and past reservations for a given user.

* **Status**

  This report shows a summary of different status, sorted by equipment types.

.. note::
   The range of possible reports can be increased by adding to GLPI the following plugin: https://plugins.glpi-project.org/#/plugin/reports
