To go further
=============

Tickets categories
------------------

See :doc:`Categories </modules/assistance/categories>`

Tickets templates
-----------------

Using ticket templates, it is possible to customize ticket creation form by masking, pre-defining or making mandatory some fields.

See :doc:`Ticket templates </modules/overview/templates>`

Collectors
----------

External tools can interact with assistance module using mail collectors.

Email is used to create tickets and add follow-up to existing tickets. A GLPI internal task will connect to a mailbox and fetch messages.

.. note::
   The solution or closure of a ticket are not available via collectors.

A mail message will go through the following steps:

* Mail box;
* Collector, configured using :doc:`Configure collectors </modules/configuration/collectors>`;
* Rules, see :ref:`Assigned a ticked opened by mail to an entity <collectors_rules>`
* Business rules, see :doc:`Business rules for tickets </modules/administration/rules/ticketbusinessrules>`
* Ticket is created

An answer to a mail coming from GLPI will go through the following steps:

* Mail box;
* Collector ;
* Creation of a follow-up for concerned ticket.


Recurrent tickets
-----------------

See :doc:`Recurrent tickets </modules/assistance/tickets/recurrentticket>`


Attached costs
--------------

See :doc:`Attached costs </modules/assistance/tickets/ticketmanagement>`


Links between tickets
---------------------

It is possible to define links between tickets or to mark tickets as duplicates.

See :doc:`Links between tickets </modules/assistance/tickets/ticketmanagement>`


Processing time
---------------

Incidents resolution delays or SLA can be configured.

See :doc:`Configure SLAs <modules/configuration/service_levels>`.


Business rules
--------------

Business rules can be defined to modify and assign tickets.

See :doc:`Business rules for tickets </modules/administration/rules/ticketbusinessrules>`.


Administrative closure
----------------------

Administrative closure moves the status of a ticket from *Solved* to *Closed*.

ITIL best practices recommends a validation of the solution by the ticket requester, who validates that the answer provided by the technician corresponds to the demand. However, if the requester does not fulfill this validation, it is possible to parameterize an administrative closure after a delay which can be configured at entity level (see :doc:`Assistance tab </modules/administration/entities>`). If this delay is set to zero, the ticket is automatically closed.


Satisfaction
------------

(I can't get no)

A satisfaction survey is triggered when the ticket status is set to *Closed* and the triggering delay is elapsed. This triggering delay is parameterized at entity level (see :doc:`Delegate administration at entity level </modules/administration/entities>`).

.. note::

   The automatic task that triggers the survey must be activated.

When ticket is closed, a notification that includes a link to the satisfaction survey can be sent to the requester. The requester will also have access to the survey from the ticket form in tab `Satisfaction`.

The requester can then select the satisfaction level (from 0 to 5, given as stars) about the ticket solution. A comment can also be added.

Statistics on surveys are available in :doc:`statistics </modules/assistance/statistics>`.

.. note::

   * the requester can change the answer to the satisfaction survey within a delay of 12 hours after first answer
   * a notification can be sent when satisfaction survey is generated, but also on each answer to this survey


See also
--------

See :doc:`Advanced configuration </modules/assistance/categories>`.

