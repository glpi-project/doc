Management
~~~~~~~~~~

Management of financial and administrative information, this information is visible in the 'Management' tab on the computer's form.

.. image:: /modules/tabs/images/management.png
   :alt: Management screen
   :align: center

By default this management is disabled. It is possible to activate the financial information on any type of object in the inventory by using the link in the *Management* tab of the material detail.

.. image:: /modules/tabs/images/management_enable.png
   :alt: Enable management
   :align: center


.. note::
   It is possible to activate the administrative and financial information from the massive actions on a set of elements (computer, monitor, ...)

.. note::
   It is possible to activate the administrative and financial information as soon as an element is created.
   See "Enable default administrative and financial information" option in Setup > General > Asset tab.

Financial information consists of the following items:

Lifecycle
^^^^^^^^^

* Order date
* Date of purchase
* Delivery date
* Date of implementation
* Date of last physical inventory
* Date of reform

Financial and administrative information
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* Supplier: Third party who sold the equipment. See :doc:`Managing suppliers </modules/management/suppliers>`. Suppliers are managed from the menu **Management > Suppliers**.
* Order number : number of the order of the equipment.
* Asset number.
* Invoice number: equipment invoice number.
* Delivery note: delivery note for the equipment.
* Value: cost of the equipment.
* Warranty extension value: cost of the warranty extension, but preferably use contracts.
* Account net value: this is the automatic calculation of the gross value of a piece of equipment minus the amount of depreciation.
* Type of depreciation: choice of the type of depreciation between linear and declining balance.
* Depreciation period: depreciation period expressed in years.
* Depreciation coefficient: coefficient applied to a straight-line depreciation type in order to obtain the values of the declining balance type. It is therefore only used if the type of depreciation is declining balance.
* TCO (value+amount of interventions): the total cost of ownership which includes all the constituent elements of an invoiced product.
* Budget: the budget on which this equipment was purchased See :doc:`Managing the budget <../management/budgets>`.
* Order date: date on which the material was ordered.
* Purchase date: date on which the equipment was purchased.
* Delivery date: date on which the equipment was delivered.
* Startup date: date on which the equipment was put into service.
* Date of last physical inventory: date of the last physical inventory of the equipment.
* Comments.
* Monthly TCO: TCO divided by the number of months between today's date and the date of purchase of the equipment.

Warranty information
^^^^^^^^^^^^^^^^^^^^

* Warranty start date: date on which the warranty of the equipment starts
* Warranty information: text qualifying the warranty
* Warranty period: duration of the warranty expressed in months
   If a warranty start date and a warranty period are set, the information "Expires on" will appear with a date in red if it is earlier than the current date

All the dates defined can be managed automatically according to changes in the status of the equipment. Some dates can also be copied from another date. All this configuration is done by [entity](administration_entity_delegation.dita).

Tips
^^^^

GLPI allows you to configure a notification on the expiry of the hardware warranty. This is configurable by entity in :ref:`notification management <configure_notifications>` to define the models and recipients used and in :doc:`the administration of entities </modules/administration/entities>` to enable or disable this feature, define the default values and anticipate the sending of the notification if necessary.

GLPI can perform a simple net book value calculation based on straight-line or declining balance depreciation. To do so, a certain amount of information (value, date, etc.) must be entered.
The user must also enter the date of the financial year the general configuration.

The display of financial information for each type of equipment depends on the profile of the user logged in.
