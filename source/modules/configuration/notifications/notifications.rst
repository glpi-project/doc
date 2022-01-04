Notifications
=============

In this menu, we link a GLPI event to a notification template and recipients.

.. note::
   A notification being linked to an entity, it is possible to delegate its management (contrary to the templates which are global).
   A notification defined at the level of a parent entity cannot be deactivated in the child entity.

Parameters
----------

- **Notification** tab:

   - **Name**: notification name
   - **Active**: to enable or disable the notification
   - **Allow response**: in the case of emails
   - **Type**: type of GLPI object to which the notification relates
   - **Event**: triggering event from the selected type

- **Templates** tab: notification template(s) to be sent
- **Recipients** tab: those to be notified. Some available values:

   - **Administrator**: corresponds to the email defined in **Setup > Notifications > Email followups configuration**
   - **Entity administrator**: corresponds to the email defined in **Administration > Entities**, **Notifications** tab of an entity
   - **Requester**: users in "Requester" field of the ticket
   - **Watcher**: users in "Observer" field of the ticket
   - **Technician in charge of the ticket**: users in "Assigned to" field of the ticket
   - **Supplier**: supplier in "Assigned to" field of the ticket
   - ...