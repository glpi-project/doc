UUID
~~~~

.. image:: /tabs/common_fields/images/UUID.png
   :alt: UUI
   :align: center
   :scale: 51%

The :abbr:`UUID (Universally Unique IDentifier)`` is automatically update by the automatic inventory. This UUID is the unique identifier of the motherboard.
You can add/modify this information manually. By default, if you add or modify this field it will be locked, the automatic inventory will not modify this information. You can unlock the field.

You can retrieve this value using :

- Linux : ``dmidecode``
- Winodws : ``wmic path win32_computersystemproduct get uuid``
- MAC : **Apple Logo > About This MAC > System report > Hardware UUID**