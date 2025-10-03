Items
-----

Racks enable precise, visual management of the physical infrastructure of an IT park.
They facilitate space management, the planning of equipment additions, and the monitoring of interventions in a datacenter.

.. image:: ../images/rack_items.png
   :alt: View items of rack
   :scale: 48%


Add an item
~~~~~~~~~~~

* You can an asset by clicking on **+**

.. image:: ../images/rack_add_asset.png
   :alt: Add item in rack
   :scale: 100%

* Then choose your asset in **item type** then **Item**
* Select the associated options :

  * Rack
  * Position
  * Orientation (from rack point of view)
  * Background color
  * Horizontal potision (from rack point of view)
  * Reserved positiion

.. image:: ../images/rack_add_asset_option.png
   :alt: select option for adding rack
   :scale: 63%

* After clicking on **+ Add**, the material appears in the rack at the position indicated

.. tip:: If you have make a mistake, you can modify all the information by clicking on the pen on the asset

.. tip:: You can drag an item to another location to move it more quickly


Delete an item
~~~~~~~~~~~~~~

* To delete an item, click on the pen on the concerned item
* Click on **Delete permanently**

.. image:: ../images/rack_delete_asset.png
   :alt: Delete item
   :scale: 63%

.. note:: this only removes the connection to the rack, not the equipment itself.


Custom an item
~~~~~~~~~~~~~~

In order for the information in the right-hand box to be filled in (weight and power), you must enter these values manually.

.. image:: ../images/rack_space.png
   :alt: Space view
   :scale: 80%

* In **Setup > Dropdown > Models**, select the type of asset you want custom
* Select the asset concerned
* Fill in the necessary information
* You can add pictures that will be visible on the rack

.. image:: ../images/rack_custom_item.png
   :alt: Custom an item
   :scale: 49%

If you don't add an image, you can set a color for each item you add.
you can also switch between images and colors using the **images** button

.. image:: ../images/rack_view_custom_item.png
   :alt: View custom an item
   :scale: 100%


Power units
~~~~~~~~~~~

You can add :doc:`PDUs <../pdus>` from power units.

* Click on **+ Add**
* select **racked** or **placed at rack side**
* Choose the PDU in item
* fill in the following fields

  * Rack
  * Position
  * Orientation (front rack point of view)
  * Horizontal position (form rack point of view)
  * Backgroud colour
  * Reversed position

If consumption data are correctly entered, they will be fed into the power units

To delete a PDU, click on the image of PDU :

.. image:: ../images/rack_delete_pdu.png
   :alt: Delete PDU
   :scale: 100%

Click on **delete permanently**

.. image:: ../images/rack_delete_pdu1.png
   :alt: Delete PDU
   :scale: 52%