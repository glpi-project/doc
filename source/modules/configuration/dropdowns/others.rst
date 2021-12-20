Others
++++++

.. note::

   Some plugins can provide additional headings, which are configurable in the same menu.

Types
-----

Whatever the type, the list is a flat list of values valid for all entities.

It allows to define the name of the tab type and can be translated.

Models
------

Whatever the model, the list is a list of flat values valid for all entities.

It allows to define the name of the model of the tab and can be translated.

Virtual machines
----------------

Whatever the sub-title (models or virtualization system, state of virtual machines), the list is a flat value list valid for all entities.

It allows you to define the name of the virtualization model or system or the name of the state of the virtual machines. 

Only the state of the virtual machines can be translated.

Document headings
-----------------

This list is tree-like: each element can have sub-elements. It is valid for all entities.

The *Document headings* tab lists the subheadings already created and allows you to add a new one.

Document types
--------------

This list is a flat list of values valid for all entities.

The application offers a number of types by default, but it is possible to add more by providing the following information:

* the name of the document type 
* the extension, for example: `.txt` or `.pdf`; the detection of the documents that can be added is based on this information
* the file name for the desired document icon (Place the icon files in the pics/icones directory under the GLPI installation file tree)
* the MIME type if necessary
* the authorization to download this type of file (yes or no)

.. note::

   The type of document can be a regular expression.
   This allows for example to authorize to define a set of documents FILENAME.XXXXYYY where XXXX is a number and YYYY the date of the current fiscal year.
   In this case the regular expression could be /[0-9]+/ to indicate any extension composed exclusively of numbers.

Knowledge base categories
-------------------------

This list is tree-like: each element can have sub-elements, which facilitates navigation and search. It can be delegated by entity.

In the record of a category in the knowledge base, in addition to the name of the category, there is information about the parent category (as a child of) and whether the category can be visible to sub entities.

The *Knowledge Base Categories* tab lists the sub-categories already created and allows you to add a new one.

Operating systems
-----------------

Whatever the sub-title, the list is a flat list of values valid for all entities.

Only the update sources can be translated.

Networks
--------

All lists in this part are flat value lists.

Network interfaces, firmware and networks are valid for all entities.

Network sockets, domains and VLANs can be delegated per entity with or without sub-entity visibility.

Software categories
-------------------

This list is tree-like: each element can have sub-elements. The values are defined for all entities

The *Software categories* tab lists the subcategories and allows you to add a new one.

User titles
-----------

The lists in this part are flat lists of values valid for all entities.

LDAP criteria
-------------

This list is a list of flat values valid for all entities.

It is also possible to add a particular LDAP criterion.

Ignored values for the unicity
----------------------------------------------------

This list is a list of flat values which can be delegated by entity and applicable or not to the sub-entity.

It is possible to indicate, for each type of object, values that must not be taken into account when checking the uniqueness of an object in the database. 

For example not to use the generic serial number "To Be Filled By OEM" to check if a computer already exists in GLPI.

Fields storage of the login in the HTTP request
-----------------------------------------------

The list is a list of flat values valid for all entities.
