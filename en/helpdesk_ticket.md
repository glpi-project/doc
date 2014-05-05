Manage tickets
==============

Tickets in GLPI, characteristics and use

Managing incidents in accordance with ITIL or not
-------------------------------------------------

The support module of GLPI is consistent with the best practice guide
for the ITIL Incident Management part and service management requests:
it therefore includes concepts such as the impact, the urgency of a
ticket, the matrix calculation of priorities and associated
normalization of the statutes. Although the tool complies ITIL, there is
no obligation to follow these practices: everyone is free to implement
incident management that is best suits their needs.

The opening date (**Opened on**) and maturity allow for time
identification of the incident or service request. A **SLA** can also be
associated to a ticket. In this case, the SLA and the next level of
escalation are displayed (see [Configurer les
SLAs](config_sla.html "Dans GLPI, administrer les SLAs peut se faire à partir du menu Configuration > SLAs.")).

Actors are referenced in the ticket, allowing their notification during
the life cycle of the ticket: the **Requesters** are the users or user
groups known in GLPI involved in the ticket and the **Watchers** are
users or groups of users that receive notifications. Support (**Assigned
to**) of a ticket is performed either by a **technician**, or by a
**group** of technicians or by a **supplier** referenced in the
application.

In the case of multiple users or groups, only the first user or group is
defined when creating the ticket, additional players are added later. A
user with no right to change but can see the ticket with their
clearances has the possibility of becoming a watcher.

Note: In the case of unknown GLPI users, emails can also be associated
with a ticket. The default choice (no user selected) at the requester or
watcher level can enter an email in the corresponding field. In
addition, notifications must be activated (see [Configure
Notifications](config_notification.html "Notifications are configured from the menu Setup > Notifications ;")).

A ticket has content (**title** and **description**). If no title is
defined by the user when creating the ticket, the first 70 characters of
description are used to define the title of the ticket. The **category**
can classify incidents according to their nature. The **type** used to
define if it is a request or incident. The **Associated Element**
drop-down list allows the association of one or more inventory items to
the ticket: the contents of the list depends parameters defined in the
profile (see [Manage user's
profiles](administration_profile.html "In GLPI, profiles are managed from the menu Administration > Profiles.")).
The location permit to set the location of the intervention.

Tickets keep reference to the GLPI user who opened the ticket (**By**)
and the (**Request source**) (see [Configurer les
intitulés](config_dropdown.html "Les intitulés se configurent depuis le menu Configuration > Intitulés")).

A ticket has a **status** (see [Understanding the ticket
lifecycle](helpdesk_lifecycle.html "The viewing and editing options of the life cycle of tickets is managed per profile and can be found in the menu Administration > Profiles under the tab Life Cycles.")),
and may require **validation** : by default there is *not subject to
validation*.

**Urgency** indicates the importance given by the requester of the
ticket, while the **impact** is determined by the technician. The
**priority** the ticket is automatically calculated according to a
predefined matrix (see [Onglet
Assistance](config_common_assist.html "Cet onglet permet de paramétrer le comportement de la partie assistance de GLPI.")).

Finally, two pieces of information on notifications appear if followed
by emails have been configured (see [Configure
Notifications](config_notification.html "Notifications are configured from the menu Setup > Notifications ;"))
: **Email Follow-ups** is activated for the ticket and **Email** is used
for monitoring. This is pre-filled with default value and set this
default in the form of the user or the supplier (if exists) and can be
changed in the dropdown if required.

For use of GLPI multi-entities with technicians having clearances on
several entities, it is not necessary to change the current entity to
create a new incident in a separate entity. The path to open a new
ticket is as follows: the technician begins by selecting the requester
and GLPI will determine the entities to which the user has
authorization. If it has only one entity, then the creation form is
updated and the ticket will be declared in the corresponding entity, but
if it has several an additional drop-down list is used to select one on
which you want to work.

-   **[Understanding the ticket
    lifecycle](../glpi/helpdesk_lifecycle.html)**\
     The viewing and editing options of the life cycle of tickets is
    managed per profile and can be found in the menu Administration \>
    Profiles under the tab Life Cycles.
-   **[Associate documents](../glpi/inventory_document.html)**\
     Associated documents can be managed from the tab Documents
-   **[View History](../glpi/inventory_log.html)**\
     The history is viewed from the tab Historical

**Parent topic:**
[Assistance](../glpi/helpdesk.html "The GLPI Assistance help desk")
