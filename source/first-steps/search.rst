Search for information in GLPI
==============================

GLPI has a search engine allowing you to display a set of elements satisfying a certain number of criteria. The proposed lists are paginated. A navigation bar at the top and bottom of the list is used to define the number of items to display per page and to navigate between pages.

A global search engine (that is, one that can use data from objects of different type) is also available.

In addition to the list of elements corresponding to the stated criteria; these lists offer some additional features:

* Export in different formats (CSV, PDF, ...)
* Massive (Bulk) actions
* A :ref:`marque-pages <bookmarks>` system to save searches

Perform a basic search
----------------------

The basic search makes it possible to carry out multiple searches configured and sorted, on one of the types of the inventory. Depending on the data on which the search is carried out, the following operators can be proposed:

* ``contains``,
* ``is``,
* ``is not``,
* ``before``,
* ``after``.

Searching on dates allows you to specify a specific date (*Specify a date*) or to define it in relation to the current date (*Now*, *+* ou *-* *X* *hour(s)*, *day(s)*, *month* or *year(s)*). It is also possible to specify a search before or after a given date, as defined intervals (*Monday*, *Last Saturday*, *Start of month*, *Start of year*, *Start of year*, etc).

For labels, it is possible to search for a given value (*is*). If the dropdowns can be visible in the sub-entities, the choices under and not under appear. The criteria are added with the ``+`` on a gray background.

For example, to find computers with more than 1024 MiB of memory and more than 80% free disk space:

=====  ========  =============================  ===========  ======
*-*    Type      Field                          Comparison   Value
=====  ========  =============================  ===========  ======
*-*    *simple*  *Memory*                       *contains*   ``> 1024``
*AND*  *simple*  *Volumes - Percentage free*    *contains*   ``> 80``
=====  ========  =============================  ===========  ======

.. note::

   Once the criteria have been defined, the search is launched by pressing the Search button.

Perform a multi-criteria search
-------------------------------

The multi-criteria search makes it possible to refine the search by extending it to other types of objects by adding global search criteria. This type of search is obtained by adding criteria with the ``+`` on a white background.

For example, to find computers with more than 1024 MiB of memory and more than 80% free disk space, attached to a 17-inch monitor and having LibreOffice software installed:

=====  ========  =============================  ===========  ======
*-*    Type      Field                          Comparison   Value
=====  ========  =============================  ===========  ======
*-*    *simple*  *Memory (Mio)*                 *contains*   ``> 1024``
*AND*  *simple*  *Volumes > Percentage free*    *contains*   ``> 80``
*AND*  *multi*   *Monitor > Size*               *contains*   ``17``
*AND*  *multi*   *Software > Name*              *contains*   ``LibreOffice``
=====  ========  =============================  ===========  ======

Items in Trash
--------------

Some items in GLPI can be trashed. To view them in order to restore them or delete them permanently, click on the icon representing a recycle bin. To return to the display of active elements, click again on this icon.

Perform an advanced search
--------------------------

Here are some examples of search operators:

``NULL``
   * Find the records with such empty field with a date field: <number_of_months or> number_of_months
   * Search for materials with a deadline corresponding to the number of months
   * Search for computers that are 5 years old: Date of purchase contains <-60.
``^123``
   Find the records containing 123 at the start of the field.

   .. warning::

      On some systems, you have to type ^, the space bar then the first character.

``^Windows``
   Find records containing Windows 2000, Windows XP but not with Windows.
``123$``
   Find the records containing 123 at the end of the field.
``^123$``
   Find records containing only the text 123.
Two search criteria linked by the operator ``AND NOT``
   Find records that do not match a criterion (other than).
*Entity is « Root entity »* ``AND NOT`` *Type contains « Laptop »*
   Search for all computers in the « Root entity » which are not laptops.

   .. image:: images/search_example.png
      :alt: Search interface

``[Year]-[Month]-[Day]`` (YYYY-MM-DD)
   Search by date.
``\\``
   For security reasons, the ``\\`` operator is not usable.

Export the result of a search
-----------------------------

The export of the search result in SLK or CSV spreadsheet formats, or in PDF format can be done in two different forms:

* The *current page* exports only the data displayed on the screen (for example the first 10 results out of 200)
* *All pages* exports all of the search results

The SLK format can be used by many spreadsheets. Fields that are too long will be truncated when using software that does not fully comply with the standards. In this case, it is preferable to use the exports in CSV format.

If the data exported in CSV format is imported into Microsoft Excel software, accented characters may not be displayed correctly. This software seems to have difficulty with data encoded in UTF-8.

Perform massive actions
-----------------------

A massive action system is integrated into the search engine. It allows you to make bulk modifications and perform actions to all the selected elements. Some examples of the available massive actions (Will differ based on the type of item):

* *Put in trashbin*
* *Delete permanently*
* *Restore*
* *Connect* / *Disconnect*
* *Install*
* *Update*
* *Add a contract*
* *Enable the financial and administrative information*
* *Add to transfer list*
* *Synchronize*

To use it, simply select the elements for which you want to perform an action then click on the Actions button available at the top and bottom of the list. Then, once the type of action has been selected, options are optionally presented, as well as a validation button.

The results of the actions as well as the information messages are presented at the end of the execution of all the actions.

.. note::

   * You will find in the headers of the table (at the top and at the bottom) a checkbox allowing you to select or unselect all the elements of the list.
   * A similar system of actions is available in certain lists present within the objects themselves. The operation is identical to that explained here.

.. warning::

   The number of elements that can be handled simultaneously is limited by the values ​​of ``max_input_vars`` or ``suhosin.post.max_vars`` in your PHP configuration. You may therefore get a message indicating that massive edits are disabled. You just need to increase the values ​​of your PHP configuration or reduce the number of items displayed.

Quick search
------------

.. image:: images/search_quick.png
   :alt: Quick search box

This tool is located at the top right of the GLPI screen. It allows searching within elements including but not limited to:

* Tickets
* Problems
* Changes
* Projects
* Computers
* Monitors
* Software
* Network Equipment
* Peripherals
* Printers
* Phones
* Contacts
* Contacts
* Suppliers
* Documents
* Budgets
* Licenses
* Users
* Groups

.. note::

   The search is carried out only on the fields displayed by default for each of the elements mentioned above. In essence, it is the same as an ``items seen`` search on each type of element.
