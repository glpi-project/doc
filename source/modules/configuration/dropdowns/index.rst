Dropdowns
=========

Some dropdown lists can be configured in GLPI including but not limited to:

* Locations
* Status of items
* Ticket categories
* Software names
* Manufacturers

Some of the dropdowns have some default values added during the installation of GLPI when they may benefit many users.
For example, GLPI defines multiple files system formats by default.

The list of dropdown types may vary depending on the user's current profile.

The dropdown options can be translated into multiple languages, however this feature is disabled by default.
It can be enabled in `Setup > General > General setup`.
This will add a new tab in the dropdown form to manage the translations.

Some of the dropdowns are simple, flat lists while others can be organized into a tree structure by defining their parent option.

All dropdown options can be given a comment that will show in other GLPI forms by hovering over the **Help** icon next to the dropdown.

The types of dropdowns that can be associated with specific entities will show a "stack" icon (Same as the Entity menu item).

.. toctree::
   :maxdepth: 2

   general
   assistance
   calendar
   internet
   others
