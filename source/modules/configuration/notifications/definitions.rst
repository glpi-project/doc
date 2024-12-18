Notification Definitions
========================

A notification definition in GLPI is composed of:

- One or more notification templates
    Templates are added for specific notifications modes.
    This allows you to use one template for email notifications and another for browser notifications.
- A set of recipients
    The list of recipients could include specific users, groups, etc or can include dynamic recipients such as "Requester" which would be replaced by all user's listed as requester on a Ticket for example.
- An item type (Ex: Ticket).
- An event from the specified item type (Ex: Add).

The different tabs
------------------

- **Notification**
    A notification is composed of a certain number of specific fields to fill in:
        - **Name**: Name of the notification.
        - **Active**: Allows you to temporarily deactivate a notification.
        - **Type**: Type of GLPI object to which the notification refers.
        - **Notification mode** The notification method (Email and Browser available by default).
        - **Event**: Indicates what will be the triggering event following the type of the object.

- **Notification templates**: Indicates the notification that will be sent for the object type and the event defined previously.
- **Recipients**
    This is where you define who will receive the notification.

    A certain number of actors of the application are proposed and the list
    The list varies according to the type of object defined.

    This list includes, but is not limited to:

    - **Administrator**: person whose email address has been defined in the global :doc:`configuration of email follow-ups <email_notifications>`.
    - **Entity Administrator**: person, for each entity, whose email address is defined in the entity :doc:`configuration of email follow-ups <email_notifications>`.
    - **Requester**: The person who is listed as the requester in the ticket.
    - **Technician in charge of the ticket**: Users assigned to the ticket.
    - **Group XXX**: All the people who have access in the entity and who are part of the group.
    - **Group XXX without supervisor**: All members of the group except the person declared Manager of the group.
    - **Group in charge of the ticket**: All the members of the group to which the ticket is assigned.
    - **Group in charge of the ticket without supervisor**: All members of the group assigned to the ticket, except for the person declared Manager of the group.
    - **Requesting group**: All members of the group indicated as the requesting group of the ticket.
    - **Observer group**: All members of the group indicated as the observer group of the ticket.
    - **Observer**: The person who is the observer of the ticket.
    - **Profile XXX** : All the people who have access in the entity and who have this profile.
    - **Writer**: person who enters the information.
    - **Technical manager**: The person designated as the user responsible for the asset(s) related to the ticket.