Service Levels
==============

There are two types of service level agreements that can be tracked in GLPI.
- Service Level Agreement (SLA): Agreement between an IT provider and the customer
- Operation Level Agreement (OLA): Agreement between groups/departments of the IT provider

Both of these types of agreements are used in GLPI to optionally track:
- The maximum amount of time that should pass before a ticket has a technician assigned
- The maximum amount of time that should pass before a ticket is resolved

A calendar can be associated with an SLA/OLA (see :doc:`calendars <dropdowns/calendar>`).
By default, no calendar is associated and calculations are done on a working basis 7 days a week and 24 hours a day.
It is also possible to use the calendar associated with the ticket (i.e. the one of the entity to which the ticket is attached).

.. note::
    If the maximum resolution time is expressed in days, all the calculations will be done in days (D+1, D+4 for example) taking into account the calendar to determine the working days.
    In the use of the End of the working day indicator, the due date will correspond to the end of the corresponding working day.
    If the maximum resolution time is expressed in hours or minutes, then the calculations will be made taking into account the opening hours.

    For example, for an SLA in H+4 with a calendar defining opening hours from 8am to 6pm, a ticket opened at 4pm will have a due date of 10am the next day.

Changing the ticket to pending status puts the SLA in sleep mode.
If the ticket remains pending for 3 hours for example, the due date will be postponed by 3 hours.

Automatic assignment of service levels
--------------------------------------

You can automatically assign an SLA or OLA to tickets through the :doc:`ticket rules engine <../administration/rules/ticketbusinessrules>`.
The association of the SLA with the ticket allows the automatic calculation of its the expiration date.
Several SLA/OLAs can thus be defined and assigned according to precise criteria.

For example, SLA 1 will be assigned if the ticket is associated to a specific category and SLA 2 for the other categories.

.. warning::
    If an SLA/OLA is assigned manually when the ticket is opened (by the user or via a ticket template), the business rules cannot redefine it.

When it is assigned, it will be completely replayed and the actions associated with the escalation levels will be executed.

Escalation levels
-----------------

After adding an SLA/OLA to a service level, you can click on the name of the SLA/OLA in the related tab of the service level to configure it more including escalation levels.

After adding an escalation level to an SLA/OLA you can click its name to configure the criteria to trigger it and the actions to take after it is triggered.

Each level triggers automatic actions to resolve the ticket as soon as possible.
A level is triggered before or after the expiration date of the SLA/OLA according to the defined delay.

::

    For example, one day before the deadline, the ticket is assigned to level 2 support and its priority is changed to High.

Escalation levels can be conditioned by trigger criteria.
Without criteria, the level will be triggered but if criteria are criteria are defined, they will be checked before applying the escalation level.

::

     For example, if 1 day before the due date you want to send a reminder to the administrator if the ticket is still in *New* status, you need to set the criteria as `Status is New`.