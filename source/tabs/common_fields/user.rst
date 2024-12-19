User
~~~~

If the user who opened the session on the machine is also present in the GLPI database (either in the internal database or any other external data source),
this field will be filled in. It will remain empty if the user does not exist in the database. You can add a user manually
but it will be locked (by default) to prevent it being updated at a later date. See the article on :doc:`locks`

.. image:: /tabs/common_fields/images/user.png
   :alt: user
   :align: center
   :scale: 51%