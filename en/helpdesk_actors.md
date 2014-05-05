Define the actors and their roles
=================================

Define the actors and their roles

Here are the different roles that traditionally found in support
services :

-   Requesters : are the users or user groups known in GLPI to be
    initiating the ticket.
-   Technicians ("Assigned"): the management of a ticket is made either
    by a technician or by skill group or by a provider referenced in the
    application.
-   Watchers : are users or groups of users that receive notifications.

Depending on the user's role, GLPI changes the information visible and
possible actions.

Technicians are the actors with the most complete information, and the
wider latitude of action on the tickets.

The requester and the watcher roles will see only the information
necessary to meet their demand.

In the case of multiple users or groups, only the first user or group is
defined when creating the ticket, additional players are added later. A
user, having no right to change but the actors can see the ticket with
his clearances, has the opportunity to become an observer.

On adding a new actor, you could also see the number of tickets in
progress for this actor in order to facilitate the distribution of tasks
between technicians.

Note: In the case of unknown requestors GLPI, emails can also be
associated with a ticket. The default option (no user selected) at the
level of requester or watcher can enter an email in the box. In
addition, notifications must be activated (see [Configure
Notifications](config_notification.html "Notifications are configured from the menu Setup > Notifications ;")).

Note: In GLPI, assigning one of these roles is at the level of
management clearances of users (see [Attribuer des habilitations à un
utilisateur](administration_rule_right.html "GLPI dispose d'un moteur d'habilitations dynamiques qui se base sur des sources externes d'authentification. Il est accessible depuis le menu Administration > Règles > Règles d'affectation d'entité et de droits.")).

**Parent topic:** [Help Desk
Implementation](../glpi/helpdesk_begin.html "Help Desk Implementation")
