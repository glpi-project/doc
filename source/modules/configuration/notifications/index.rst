Notifications
=============

In GLPI, it is possible to send notifications following an event in the application.

To do this, you must activate the **Enable followup** option then **Enable followup via email** or **Browser followups from browser** to display the settings menu:

.. toctree::
   :maxdepth: 1

   templates
   template_example
   notifications
   emailconfig


.. note::
   Notifications work as follows (*e.g.: ticket creation notified by email*):

   1. The ticket is created in GLPI
   2. GLPI looks for notifications of the "**ticket creation**" event in the ticket entity (otherwise in the parent entities)
   3. GLPI builds the list of recipients according to the settings
   4. For each recipient, GLPI generates the mail in the language of the user if the translation exists, otherwise it is the "**Default translation**".
   5. The emails are placed in **Administration > Notification queue** waiting to be sent by the automatic task ``queuednotification``.

