Understanding the ticket lifecycle
==================================

The viewing and editing options of the life cycle of tickets is managed
per profile and can be found in the menu Administration \> Profiles
under the tab Life Cycles.

The different statuses possible for a ticket are New, Processing
(assigned), Processing (planned), Pending, Solved, and Closed. These are
not configurable or changeable.

Management rules
----------------

Upon its creation, ticket status is **New**. When a technician defines
the assigned group and/or technician responsible for the incident, the
ticket status will automatically change to **Processing (assigned)**.
Similarly, if a new task is added then the status becomes **Processing
(planned)**. When a solution is added to the ticket, then it takes
status **Solved**. Finally, when the requester or editor validates the
proposed solution, then the ticket status is **Closed**.

Note: The technician can change the status at any time, particularly to
overcome the status **Pending**.

Note: The requester can delete their ticket if it is in status New and
no action was conducted for this ticket.

Matrix of calculus for priority
-------------------------------

ITIL best practices separate urgency (user defined), the impact of the
incident (a user, service, function ...) which is normally filled by the
technician. A matrix is then used to calculate the priority associated
with the ticket based on these two criteria. GLPI provides a standard
predefined matrix which allows compatability identical to the ticket
status function in previous versions of the application (where these two
notions of urgency and impact does not exist).

The matrix of calculus for priority of a ticket according to the urgency
and impact can be modified and is found in the menu Setup \> General
under the tab Assistance. (see [Configurer les paramètres
centraux](config_common.html "Les paramètres centraux se configurent depuis le menu Configuration > Générale")).

You can select different levels of impact, urgency, or priority to be
used in the helpdesk, as well as disable some levels: to do this, simply
set the level selected No. Note that the Medium level is not
deactivated.

**Parent topic:** [Manage
tickets](../glpi/helpdesk_ticket.html "Tickets in GLPI, characteristics and use")
