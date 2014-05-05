Manage Templates
================

Manage templates in GLPI

Interest
--------

For some elements of GLPI it is possible to create new elements (e.g.
PC) via templates. A template defines a standard pre-fill of some fields
that will be reused for creation of other elements. This simplifies the
addition of a large number of nearly identical elements.

Manage templates is done via the icon :
![image](../image/menu_addtemplate.png) located in the menu bar.

Example :
---------

To prepare for the receipt of 20 identical printers where only serial
and inventory numbers change, create a template for that printer model
and, in this template, fill in all unchanging fields (manufacturer,
model, etc.). Then create 20 printer items from this template. When
entering each printer, serial and inventory number will be the only
information to enter.

The incremenetation system
--------------------------

A filling system and auto increment of certain fields (marked \*) is
available. These fields (name, asset tag ...) are then filled in
automatically when creating the corresponding template field contains a
format string of the form <XXX\#\#\#\#X\>:

-   < and \> at the beginning and end of format indicate that it is a
    format
-   X represents any character
-   \\g : search number among all identical fields based on the same
    format
-   \# : location of the number to increment (number of digits equal to
    the number of \#)
-   \\Y : 4-digit year
-   \\y : 2-digit year
-   \\m : month
-   \\d : day

Example
-------

Continuing the example above, it is possible to use the feature
increment to automatically create the inventory numbers. For example, if
these are compounds of the form YEAR+MONTH+DAY+code structure (555) +
code operation (1234) + incrementing number, simply fill in the template
for Asset Tag field the following string <\\Y\\m\\d-555-1234-\#\#\>.
Each printer created will have its inventory number generated
automatically and incremented by 1 to 20.

**Parent topic:** [Inventory
Module](../glpi/inventory.html "Inventory Module in GLPI")
