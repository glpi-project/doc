Fields unicity
==============

GLPI has a mechanism to perform uniqueness checks before the creation of an object in the database.

This allows you to track and/or block the presence of duplicate objects based on matching certain fields.
For example, you can configure a fields unicity rule for computers using the serial number field.
This applies to manual additions and additions made from an external source such as an inventory tool.

Uniqueness is defined by a name, an object type, and one or more fields.
When multiple fields are specified, all of them are checked together instead of individually (Ex: serial number AND UUID match another computer.
Uniqueness checks for fields only apply if the field is not empty. For example, multiple computers with a blank serial number would be allowed.
Each uniqueness rule has options to refuse the addition of the object and/or send a notification if it is determined to not be unique.

Th criteria added in the :doc:`blacklists <intitules/general>` will be ignored when calculating uniqueness.

The different tabs
------------------

Duplicates
**********

The duplicates tab lists all the values corresponding to the criteria that are currently duplicated.

.. include:: ../tabs/historical.rst

.. include:: ../tabs/debug.rst

.. include:: ../tabs/all.rst