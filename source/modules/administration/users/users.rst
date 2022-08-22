Users
=====

User management allows to add, modify, delete, search users and to import and export users list.

.. toctree::
   :maxdepth: 1

   usersimport

It is possible to deactivate a user if needed. If deactivated, the user can no longer be selected in drop-down menu for tickets or inventories, but keeps associated items and tickets. Validity dates can also define the activity time slot of user: the user account will be considered as active only after the start date and/or before the end date. Both dates can be defined independently.

A photo can be added manually or imported automatically from a directory (see :doc:`Authenticate users with LDAP </modules/configuration/authentification/ldap>`).

Impersonate
------------------

For debugging or administrative purposes, it's possible for a “super-admin” account (or any profile with the configuration rights) to temporarily take the ownership of another user’s account without knowing its password.
An icon is available at the top of the user´s form to perform this action.

.. image:: /modules/administration/images/impersonate_icon.png
   :alt: Impersonate user icon
   :align: center

To note:

* A special banner will show permanently as long as the function is active and will allow you to exit this mode.
* After the exit, the admin will retrieve its session as it was before using the feature.
* The history of actions taken by the administrator will appear with a special note: “user (xxx) impersonated by admin (yyy)”.

.. image:: /modules/administration/images/impersonate_banner.png
   :alt: Impersonate banner
   :align: center

The different tabs
------------------

Authorizations
~~~~~~~~~~~~~~

This tab allows to manage user authorizations. To add an authorization, select entity for which authorizations must be given, then select the profile to attribute. the option `Recursive` allows to associate the chosen profile to all sub-entities of selected entities.

A summary tab displays already attributed authorizations for the user.

Groups
~~~~~~

This tab lists the groups associated to the user. Table includes group name, whether the group is dynamic (i.e. linked to a directory service), whether the user is delegatee or manager for the group (see :doc:`Manage groups </modules/administration/groups>`).

If modify user authorization is granted, it is also possible from this tab to assign a group to the user.

Settings
~~~~~~~~

This tab allows to edit user's settings (see :doc:`Manage settings </first-steps/preferences>`). In order to be able to modify data in this tab, general configuration modification authorization must be granted.

Used items
~~~~~~~~~~

This tab lists the items for which user is defined in field *User* of the item or for which user is member of the group defined in field *Group* of the item.

See :doc:`Tab "Used items" </Les_différents_onglets/Onglet_Eléments>`

Managed items
~~~~~~~~~~~~~

This tab lists the items for which user is defined in field *Technician in Charge* of the item or for which user is member of the group defined in field *Group in Charge* of the item.

See :doc:`Tab "Managed items" </Les_différents_onglets/Onglet_Eléments>`

Reservations
~~~~~~~~~~~~

This tab lists passed, current and future reservations of the user. In order to see this tab, read authorization on reservation management must be granted.

See :doc:`Tab "Reservations" </Les_différents_onglets/Onglet_Réservations>`

Synchronization
~~~~~~~~~~~~~~~

This tab is displayed if *Update Authentication and Synchronization* right is granted. It allows to change authentication method for the user and to force its synchronization.

External Links
~~~~~~~~~~~~~~

This tab list external links defined for users.

See :doc:`Tab "Links" </modules/tabs/external-links>`

.. include:: ../../tabs/tickets.rst

For users, this tab allows to list tickets created by the user but also to create directly a ticket (the user will then be defined automatically as *Requester*).

.. include:: ../../tabs/documents.rst

.. include:: ../../tabs/historical.rst

.. include:: ../../tabs/debug.rst

.. include:: ../../tabs/all.rst
