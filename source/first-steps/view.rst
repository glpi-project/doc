View and manage records
=======================================

The display of all the lists of records and of all the details concerning a record always works in the same way in GLPI. Whether it's a list of computers, phones or tickets, the presentation follows the same principle.

A list of elements can be obtained in 2 ways:

* From the search engine

   From the search engine, after determining the criteria and validating the search, a list of records is displayed. By default, no search criteria limit the list of recordings offered and the display is limited to the first ``x`` records in the list, which is configurable in the preferences.

* From another list

   Some tabs offer a list of related items. For example, from a list of computers, click on the name of a computer then navigate to the software tab. The list of software installed on this computer is displayed.

Details concerning a record are displayed in the form of tabs grouping together similar information. For a computer, the financial information and the software list are in two separate tabs.

Customize the display
-------------------------

The columns displayed from the complete list of the inventory can be configured. Click on the button |btn_prefs|. It is possible to add, delete and order the displayed columns.

* The global view applies to all profiles having access to a part of the inventory: the modification of this part will therefore be visible by all users.
* The personal view applies only to the logged-in user and overrides the global view settings. This view is only available if you have the *User view* right regarding the *Search result display*.

   This tab also allows you to reset the display customization of the different lists. The user can, for each type of object, return to the default display by deleting this personalization.

.. |btn_prefs| image:: images/change_prefs_button.png
             :alt: Management of display preferences
