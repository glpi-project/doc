Licenses
========

A software license is a right to use the software. Its specific fields include:

* Name: commercial naming of the license
* Purchase version: the version that was bought
* Use version: the real installed version of the software

Purchase version and use version can be different; however, the use version must be compliant with the purchase version.

Version type describes the specifics of the right to use the software. OEM type is the only type that is configured by default in GLPI. Refer to :doc:`configure types <../configuration/intitules/index>`.

Number field displays the number of installations that are allowed with this license. It can be a user number (floating license), a number of installations (multiple license), an unlimited number of installation (site license)... It is possible to assign the license to one or several corresponding computers, for instance if the license is of type OEM.

Expire date is the limit date that allows the use of the license. After this date, a notification can be triggered; for alerts to be effective, notifications must be activated, see :doc:`notifications configuration <../configuration/04_Notifications/01_Configurer_les_notifications>`.

.. hint::

   This is configurable at entity level in menu ***Configuration > Notifications***, in order to define used models and recipients and in menu ***Configuration > Entity*** to activate or not this functionality, define default value and anticipation of notification sending if needed.

.. tip:: 

   Expired licenses are not counted in the total of available licenses.

It is possible to link contracts with licenses; refer to [Manage contracts](05_Module_Gestion/05_Contrats.rst "Contracts are managed via menu Management > Contracts")).

.. tip::

   When activating the accounting information for a license, data are initialized from software accounting information which act as a model.


The different tabs
------------------

* **Tab "Summary"**
  Displays a table containing the number of computers using this license

  .. image:: /image/resumeLicence.png
     :alt: License summary
     :align: center

* **Tab "Computers"**
  Displays a table listing the computers using this license, including in particular computer name, serial number, inventory number, location, status, group and user.
  Mass actions are available, if authorized for the computers, to delete license use on selected computer or to assign another license of the same software to selected computer (action `Move`)

.. include:: ../tabs/management.rst

.. include:: ../tabs/contracts.rst

.. include:: ../tabs/documents.rst

.. include:: ../tabs/historical.rst

.. include:: ../tabs/debug.rst

.. include:: ../tabs/all.rst
