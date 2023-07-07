Opening a ticket
================

A requester formulating a need can use several tools:

* filling an online form, the requester being known to GLPI or not;

* asking a delegate in the group to open the ticket (see :doc:`Administer groups </modules/administration/groups>`. In simplified interface, this is put into evidence by an option allowing to indicate if the ticket concerns the requesting user or another user. In standard interface, this mechanism is active as long as authorization **See all tickets** is set to *No* in the profile; all users for which delegation is active will be added as requester;

* contacting an operator directly or by phone, the operator will open the ticket;

* sending the demand by mail. 


Opening a ticket in GLPI
------------------------

A ticket can be opened:

* through the anonymous ticket opening interface, this interface being accessible by all non-authenticated users if GLPI general configuration allows it;

* through the graphical interface:

  * simplified interface: lightweight form for an authenticated end-user;
  * standard interface: full-fledged form.

Anonymous ticket opening interface for non-authenticated users
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This interface can be accessed at URL http:///front/helpdesk.html; it allows users having no GLPI account to send an incident signaling form to the help desk. Once filled and submitted, a mail will confirm the ticket opening.

The form can be customized by modifying directly file `helpdesk.html`.

By default, ticket is created in root entity.

Opening a ticket in graphical interface
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If templates are used (see :doc:`Using templates </modules/overview/templates>`), some fields can be made mandatory, predefined or masked when opening the ticket (content, title and/or category). If a mandatory field is missing, the ticket will not be opened.

The different fields are described in :doc:`Manage tickets <ticketmanagement>`.

It is possible to attach to the ticket one or more documents in one operation.

When activating option **Use rich text for assistance** in general configuration, the *Description* field of the ticket will be able to be formatted as HTML. Moreover, an added zone will be available for images drag and drop, for example screenshots. A tag will then be added automatically to the description in order to formalize the content of the demand.

Simplified interface
^^^^^^^^^^^^^^^^^^^^

This interface allows an authenticated user to open quickly a ticket, for the user or by delegation for another person.

Ticket opening form can be accompanied by a message inviting user to check personal information (location, phone number) in order to be easily contacted by technicians.

Specific fields:

* **Inform me about he actions take**:
  Appears if email followup are configured, see :ref:`notification management <configure_notifications>`. If set to `Yes`, the requester will be kept informed by mail of the different processing of the ticket. The field *Mail* contains the email address to which notifications will be sent. If several email addresses are defined, GLPI will select the default email defined in user's preferences. It is possible to select another email address or to enter an address if user's profile does not mention an email;

* **Associated elements**:
  Allows to associate an item of the inventory with the ticket. The content of the list depends upon parameters defined in user's profile (see :doc:`Administer user profile </modules/administration/profiles/profiles>`.

* **Watchers**:
  Allows to add a watcher and to define notification parameters.

  .. hint::

     Users can add new email addresses to the profile, see :doc:`Manager preferences </first-steps/preferences>`.

.. warning:: 

   If images or documents are added to the ticket, it is important to add them **after** having filled **all** mandatory fields marked with a red star, this because the reloading of the ticket opening form triggered by a missing mandatory field suppress attached images or documents.

A message confirms the creation of the ticket which is then accessible by clicking on the ticket number highlighted in green.

Standard interface
^^^^^^^^^^^^^^^^^^

To create a ticket, go to menu **Assistance > Ticket** then click add button with the "+" icon.

When adding a new image from tab *Documents* of the ticket, the generated tag can also be used to insert image in ticket's description.

A message confirms the creation of the ticket which is then accessible by clicking on the ticket number highlighted in green.

A validation demand can also be done at ticket opening by indicating the desired validating user.

.. note::

   When filling assigned requester, technician or group, information is displayed about the number of tickets this person or this group has opened or is in charge of. Similarly, when selecting an item, a simplified view of current tickets for this item is displayed.

Open a ticket by mail
---------------------

Opening a ticket by mail is done by sending a mail to an email address defined in the collector (see :doc:`Configure collectors </modules/configuration/collectors>`

On reception of the mail, a ticket will be opened automatically:

* message object will become ticket title
* body will become ticket description
* Cc: will become observers if emails are known to GLPI
* attachments will become attached documents of the ticket

When activating option **Use rich text for assistance** in general configuration, the images present in the message body will become visible in the description of the ticket.


Open a ticket automatically
---------------------------

This mechanism is activated through :doc:`Recurrent tickets <recurrentticket>`.
