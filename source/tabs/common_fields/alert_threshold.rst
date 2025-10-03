Alert threshold
---------------

The alert threshold is the minimal value at which an alert is triggered.
You can set this field between never and 100

A restock threshold which represents the amount you wish to have in stock after ordering.

For example, you want to have 10 of a certain cartridge in stock but it isn't worth ordering them until you have 2 or less in stock (due to bulk discounts, process overhead, etc).
You can set your alarm threshold to 2 and your restock value to 10.
When you receive the alarm notification, it will let you know what the restock value is and plainly say how many need to be ordered to meet that value (configurable in notification templates).

.. note:: For alerts to be effective, notifications must be activated; see :ref:`notification management <configure_notifications>`.

For a cartridge to be installable on a printer, it must be declared as compatible with this printer.

Management of shared stock is possible by defining the element as recursive on an entity. The elements will then be available for all sub-entities.