.. not included in any toctree, but "included" with link

:orphan:

Rules for assigning an item to an entity
----------------------------------------

GLPI has a type of rules that automatically assign an item from an inventory tool to an entity and a location.

A certain number of criteria are available: those containing generic fields (name, description, serial number, domain, IP address, subnet) but also fields coming from the inventory tool if the tool provides them.

The available actions are:

* **ignore import**
* **assign to an entity**
* **assign to an entity using value from regular expression**
* **assign to a location**.

.. warning:: 
   The engine stops at the first matching rule. It is therefore necessary to carefully order the list of rules. In addition, it is preferable to put the rules which are most likely to be verified first, for example for entities containing a lot of equipments. The rules for assignment to an entity are only played during the initial import of the machine into GLPI, which means that once a machine is imported, there is no automated process to change its entity and that manual **transfer** must be used.

Using GLPI blacklist mechanism, it is possible to exclude certain values ​​from processing by the rules engine such as certain IP or MAC addresses, for example an IP 127.0.0.1; see :doc:`Blacklists </modules/administration/rules/rulesmanagement>`.

Rules for importing and linking computers
-----------------------------------------

A specific rules engine allows to control the process of importing and binding machines from an inventory tool. This engine defines rules that allow to import, link or refuse computers.

How a computer is imported:

1. computer to be imported pass through the entity assignment engine. If it does not return any entity, then the machine is not imported. Otherwise, the process continues.
2. computer pass through the import and link engine. Depending on the rules, it is either imported into its destination entity, or linked with another present in GLPI, or not imported.

A certain number of criteria are available: generic fields (name, description, serial number, domain, IP address, subnet) but also fields coming from the inventory tool if the tool provides them, the destination entity of the machine as well as a status used to search for a machine already present in GLPI.

The possible actions are to ignore the import, to link it if possible, if not to import it if possible otherwise to refuse the import.

.. warning:: The engine stops at the first matching rule. The search for a machine already present in GLPI is done only in the destination entity of the machine.

.. todo:: find a correct way to format the example

::

   Refus des imports de toutes les machines provenant d'un serveur d'inventaire en particulier :
   si *serveur d'inventaire est serveur 1*,
   *refuser l'import oui*.

   Liaison de machines : 
   si *Machine à importer : Numéro de série**est déjà présent dans GLPI oui* 
   ET 
   *Chercher les ordinateurs dans GLPI dont le statut est en stock* 
   alors *Liaison**assigner Liaison si possible, sinon pas d'import*.

   Refus d'un ordinateur pour mauvais numéro de série : 
   *Machine à importer : Numéro de série est "To be Filled By OEM"* 
   alors *Liaison refuser l'import oui*.

