Location
~~~~~~~~

.. image:: /tabs/common_fields/images/location.png
   :alt: location
   :align: center
   :scale: 50%

You can add location manually or dynamically.

.. warning:: Depending on your needs, pay attention to the entity you are in and its recursivity, so that it is visible or not to other entities.

.. Note:: All locations your created here are available for other GLPI objects depending on the entity in which you created it

To add a location **manually** :

If your have already entered locations :

* Select the one that is right for you in the drop-down list.

If you have not previously entered a location :

* Click on **+**
* In the new box, enter the informations that you need :

  * Name
  * Code
  * As child of
  * Postal code
  * state
  * Building number
  * Longitude
  * Latitude
  * Altitude
  * Comments
  * Aliras
  * Address
  * Town
  * Country
  * Room number

.. image:: /tabs/common_fields/images/add-location-1.png
   :alt: add location
   :align: center
   :scale: 61 %
.. image:: /tabs/common_fields/images/add-location-2.png
   :alt: add location
   :align: center
   :scale: 61 %

* Click **+ Add**
* After saving, you can add a new location or close this window
* Now, select the location for your computer


To add a location **automatically** :

You need to create **location rules** to affect a location to a computer. Before, you need to define the criteria which will trigger the rule (a tag inventory, a subnet, a domain, etc.)
In our example, we're going to create a rule that takes the `inventory tag <https://glpi-agent.readthedocs.io/en/latest/man/glpi-agent.html#execution-mode-options>`_ into account. If the tag is France, then apply the Paris location

* In **administration > Rules > Location Rules**
* Click **+ Add**
* You can add differents informations (name, logical operator, comments, description, active)
.. Warning:: **Logical operator AND / OR**

   - **"OR"** the rule will then apply from the 1st corresponding criterion. It will ignore all subsequent criteria.
   - **"AND"**, on the other hand, will have to take all the criteria into account for the rule to be applied.
* **Active** your rule
* Clik **+ Add**
* In **Criteria**, click **Add a new criterion**
* Select **Agent > Inventory tag**
* Enter **France**
* Click **+ Add**

.. image:: /tabs/common_fields/images/add-rule-location-criteria.png
   :alt: add rule location
   :align: center
   :scale: 48%

* In **Actions** tab, click **Add a new action**
* Select the location to assign
* Click **+ Add**

.. image:: /tabs/common_fields/images/add-rule-location-action.png
   :alt: add rule location
   :align: center
   :scale: 48%

You can test the rule location by clicking on **Test rules engines** in **Administration > Locations rules**

.. image:: /tabs/common_fields/images/test-rule-location.png
   :alt: add rule location
   :align: center
   :scale: 67%
