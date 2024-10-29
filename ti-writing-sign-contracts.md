# :ti-writing-sign: Contracts

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} What is a contract?

Contract management in GLPI is designed to provide efficient, centralised management of all aspects of IT contracts, improving the transparency, traceability and efficiency of IT operations.

For example, contracts can be used to

* **Cost management**: GLPI tracks the costs associated with each contract, including recurring and one-off payments.
* **Budgeting**: financial information from contracts can be used for budgeting and forecasting expenditure.
* **Linking with other modules**: Contracts can be linked to specific assets or equipment, making it easier to monitor equipment coverage and maintenance.
* **Supplier** management: GLPI can be used to manage a directory of suppliers, with detailed information on each one. It is also possible to set up a supplier evaluation system to assess supplier performance in terms of services provided and contracts in force.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} What information is available in contracts?

You can enter a range of information to help you manage your contracts and related items:

* Name
* Status
* Contract type
* Start date
* Initial contract period
* Notice period
* Location
* Number
* Account number
* Contract renewal period
* Invoice period
* Maximum number of items
* Renewal
* Email alarms
* Support hours (can be set for weekdays, Saturdays, Sundays and holidays)

Available tabs :

* Costs
* Suppliers
* Items
* Documents
* Links
* Notes
* Knowledge base
* Tickets
* History
* All

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Is it possible to link a default contract to an entity?

Yes, from :ti-shield-check:**`Administration`** > :ti-stack:**`Entities`** > **`Support`** tab. Select the desired contract in **`Default contract`**.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} What notifications are available in the contracts?

To make contract management easier, notifications can be sent:

* End of contract
* End of periodicity
* Advance notice
* Advance notice of period

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Why am I not receiving notifications?

This may be due to a number of reasons:

* Problem configuring the SMTP server{:target="\_blank"}
* The contract is not active or no longer active
* The automatic action{:target="\_blank"} **`contract`** is not active or incorrectly configured
* Your [cron](https://glpi-user-documentation.readthedocs.io/fr/master/modules/configuration/crontasks.html){:target="\_blank"} is not active or incorrectly configured

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Why can't I link my contract to a GLPI object?

If you don't see your contract in the GLPI object in question, you need to check a few points:

* The contract must be active (not expired)
* A start date must be entered
* A duration must be indicated

!!! tip "Expired contracts" Expired contracts are not visible in the various GLPI objects so as not to "pollute" the list of contracts. On the other hand, you can link a GLPI object directly from the contract even if it has expired.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Can you edit contract-related reports?

Yes, from :ti-briefcase:**`Tools`** > :ti-report:**`Reports`**, you can select the option **`By contract`**. Select the item type (several items possible) then the year(s).
