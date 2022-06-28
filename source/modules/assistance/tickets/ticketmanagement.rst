Manage tickets
==============

Manage tickets following ITIL recommendations
---------------------------------------------

GLPI assistance module is compliant with ITIL best practices guide for incident and request management: it integrates therefore notions such as impact, ticket urgency, priority calculus matrix and status standardization. Despite the fact that GLPI is ITIL compliant, it is not mandatory to follow these best practices and freedom is given to implement an incident management best tailored for organization's need.

Statistics are available for tickets, see :doc:`Display statistics </modules/assistance/statistics>`.

Description of specific fields
------------------------------

* **Opening date**: ticket creation date;

* **Time to Resolve**: date at which ticket must be solved;

  These two dates allow to limit in time incident or service request. A **SLA** can also be associated with the ticket; in this case the SLA and the next escalade level are displayed (see :doc:`Configure SLA <modules/configuration/service_levels>`).

* **By**: references the GLPI user having opened the ticket;

* **Type**: defines whether it is a request or an incident;

* **Category**: allows to sort request or incident by their nature, a category being associated to only one type;

* **Status**: status attributed manualy by the technician or dynamically by performed actions, see :doc:`Management rules </modules/assistance/tickets/ticketlifecycle>` and :doc:`life cycle matrix </modules/assistance/lifecyclematrix>`;

* **Request Source**: indicates the channel used to create the ticket, see :doc:`Configure drop down </modules/configuration/dropdowns/index>`;

* **Urgency**: importance given to the ticket by the requester;

* **Impact**: importance given by the technician;

* **Priority**: importance of the ticket automaticaly computed from defined impact and urgency using a predefined calculus matrix, see :doc:`life cycle matrix </modules/assistance/lifecyclematrix>`;

* **Approval**: by default the ticket is *Not subject to approval*;

* **Items**: list items associated to this ticket; field appearing only in ticket creation form, later editions will display items in a separate tab also used to associate new items to the ticket;

* **Location**: indicates the intervention location, has no link with the location of associated items nor with the requester location (for example roaming requester with a laptop);

* **Actor**: implied actors are referenced in the ticket, which allows them to be notified during ticket life cycle, see :doc:`Defining actors and roles </modules/assistance/actors>`.

  If email followup have been configured (see :ref:`notification management <configure_notifications>`), information about notifications are displayed for a user or a supplier: *Email Followup* (yes or no) and *Email*. Email is pre-filled with user's email if defined in user or supplier form. If no email is defined in user or supplier form, an email can be entered in text field.
 
  .. todo:: proof read following paragraph

  When using GLPI with multiple entities and having technicians with authorizations for several entities, it is not needed to switch current entity to declare a new incident inside an entity. Entity to which ticket will be assigned is determined as so: technician selects requester and GLPI find entities for which this requester has authorizations; if only one entity, ticket creation form is updated and ticket will be declared in this entity, if several entities, a drop-down list allows to select the entity to which ticket will be assigned.

* **Title**: if no tile is defined by the user when creating the ticket, the first 70 characters of the description will be used to define ticket title;

* **Description**: mandatory, for above reason;

* **Linked Tickets**: defines a link between tickets, this link being of two types:

  * *Linked to*: a simple link only used as information;
  * *Duplicates*: when solving one of the duplicated tickets, the same solution is applied for other duplicated tickets which are therefore automatically solved.

  .. todo::

   Missing description of *Son of* and *Parent of*


The different tabs
------------------

Processing ticket
~~~~~~~~~~~~~~~~~

This tab displays exchanges between requester and personal in charge of the ticket; it allows to add information on the ticket such as requester call, ticket waiting for requester disponibility...

This tab is the default tab when consulting a ticket except when the ticket is waiting for approval.

To add a followup, click on **Followup** and enter a description.

It is possible to choose the source of the followup, see :doc:`Configure dropdown </modules/configuration/dropdowns/index>`.

A followup can be public or private. A private followup is only visible by GLPI users having the authorization `See all followup and tasks`. It allows for instance to have an exchange between technician which is not visible by requester.

Adding, modifying and deleting a followup is submited to authorizations defined in profile, see :doc:`Administer user profiles </modules/administration/profiles/profiles>`.

Approvals
~~~~~~~~~

See :doc:`Validation </Les_différents_onglets/Onglet_Validations>`

Project Tasks
~~~~~~~~~~~~~

A task is an action corresponding to a technical intervention related to the ticket.

See :doc:`Tasks </Les_différents_onglets/Onglet_Tâches>`

Solution
~~~~~~~~

This tab allows resolution of a ticket by a technican and approval of solution by requester.

See :doc:`Solutions </Les_différents_onglets/Onglet_Solution>`

Statistics
~~~~~~~~~~

See :doc:`Statistics </Les_différents_onglets/Onglet_Statistiques>`

Items
~~~~~

Allows to associate several items to the ticket.

See :doc:`Items </Les_différents_onglets/Onglet_Eléments>`

Changes
~~~~~~~

Allows to add and display changes associated with the ticket.

See :doc:`Changes </Les_différents_onglets/Onglet_Changements>`

Problems
~~~~~~~~

Allows to display and add problems associated with the ticket, or to create a problem from this ticket.

.. image:: ../images/ticket_problems.png
   :alt: Creating a problem from a ticket
   :align: center


See :doc:`Problems </commontabs/item_problemes>`

Historical
~~~~~~~~~~

Display the history of the ticket.

See :doc:`Historical </commontabs/item_historique>`

.. include:: ../../tabs/debug.rst

.. include:: ../../tabs/all.rst
