Template management in GLPI
---------------------------

Introduction
^^^^^^^^^^^^

For some object types in GLPI, it is possible to create new objects (computers for example) using predefined templates. A template defines a creation model in which some fields are either already fixed or computed using a function, for example in the case of a computer a function which would compute the inventory number.

Template management is accessible via the button *Templates* located in the menu bar.

Assets
^^^^^^

For assets, the template defines a default standard object in which some fields are pre-filled and can later be reused to create new objects. This allows to simplify drastically adding a large number of objects that are nearly identical.

As an example, in order to prepare inventorying 20 identical printers in which only serial number and inventory number differ:

* first, a template would be created corresponding to this printer model
* in this template, all fields that will not changed are filled (vendor, model...)
* the 20 printers will then be created from this template

When creating a new printer from this template, serial number and inventory number are the only fields to be entered; other fields are already set. 

Increment
~~~~~~~~~

A automatic fill and increment mechanism is provided for some fields that can be identified with to the |autofill_mark|. These fields (name, inventory number...) are then automatically completed when creating the object. To use this mechanism, the corresponding field in the template must contain a string following a syntax which is described below.

The field string:

* must start with character ``<`` and must end with character ``>``.
* can contain the following special characters which are replaced automatically:

   * ``\g`` lookup of number in all identical fields based on the same format;
   * ``#``: is replaced by a counter having as many digits as there are consecutive ``#`` characters;
   * ``\Y``:  is replaced by the year on 4 digits;
   * ``\y``:  is replaced by the year on 2 digits;
   * ``\m``: is replaced by the month;
   * ``\d``: is replaced by the day.


For example, when creating a printer, it is possible in the printer template to use this mechanism to automatically generate inventory numbers.

Let suppose that we want an inventory number under the form: `YEAR+MONTH+DAY+fixed code structure equals to 555 + fixed operation code equals to 1234 + 2_DIGITS_COUNTER`; then the inventory number field in the template will be: ``<\Y-\m-\d-555-1234-##\>``.

On each printer creation, the first printer will have its inventory number be `1984-JAN-02-555-1234-01`, the second printer `1984-JAN-02-555-1234-02` and so on.



Ticket templates
^^^^^^^^^^^^^^^^

As with inventory objects, templates are available for tickets. A ticket template allow to customize the ticket creation interface based on ticket type and category.

The behaviors that can be modified are:

* list of fields which are mandatory to create the ticket;
* list of fields which value is predefined;
* list of fields which will be masked.

.. note::

   For mandatory fields control, the only fields that will be controlled are the fields available in the user's interface. Therefore, if a field is defined as mandatory but is not visible in the interface, it will not trigger an error. When defining mandatory fields, the interfaces in which these fields are used are displayed.

A template is attached to the entity where it has been created and can be visible in sub-entities.

Default templates can be defined at entity level or at profile level. For the profiles, only the template of the root entity that are visible from sub-entities can be attached.

Default templates can also be defined by :ref:`ticket category <tickets-categories>`.

When creating a ticket, the used template is, with priority order:

1. First, the template defined in the selected category and type
2. Then,  the default template for the current profile of the user
3. Last, the default template for the creation entity of the ticket

.. warning::

   In last two cases, if the template defines a new couple type/category, then the first case is then tested again with these new values.

.. note::

   * When updating a ticket, the same priority order is applied to determine mandatory fields.
   * If one of the parameter entity, profile, type or category is modified when filling the ticket, the template to use is then searched again according to these new values.
   * The template is used to create :ref:`recurrent tickets <recurrent-tickets>`.


.. |autofill_mark| image:: images/autofill_mark.png
                 :alt: autofill marker
