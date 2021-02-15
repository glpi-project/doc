Categories
==========

A category can be made hierarchical:

* by selecting a parent category using in first tab the field `As child of`
* by adding a new child category in tab `ITIL Categories`

Ticket categories
-----------------

Ticket categories can be managed in dropdown setup *Setup > Dropdowns > Ticket Categories*.

Ticket categories are also used by changes and problems.

.. image:: images/categorieTicket.png
   :alt: Ticket category
   :align: center

A person in charge and/or a technical group can be added to this category and will then be used for notifications.

A knowledge base category can also be associated to this category; this will register the solution in this category of the knowledge base.

In this example, if you have a ticket with the category "Hard disk failure" which is linked to the KB category "Failure > Computer", when you add a solution to the ticket with "Save to Knowledge base" set to "Yes", the default category in the new Knowledge base Article form that opens will be "Failure > Computer".

A category can be invisible in simplified interface, in order to reduce list of categories for end-users. It can also be made visible or not for incidents, demands, problems or changes.

A template can be associated with this category and will be loaded when this category is selected in ticket. This template can be different for demands and incidents.

.. ??? sentence and example not clear
.. La catégorisation faciliter le traitement d'un objet. Par exemple, pour un ticket, en fonction de la configuration souhaitée, le demandeur peut indiquer une catégorie, et le technicien la modifier.
.. proposed translation:

Using categories eases ticket processing (for example, for a ticket, depending on the configuration, the requester can select a category and the technician can change it).

.. hint::

   When building a helpdesk, it is important to choose carefully the list of available categories: a too large number visible by end-users will make ticket creation less easy, whereas a too small number will not allow you to correctly qualify the demand.

   Ticket categories allow to do automatic processing when creating a ticket, for instance modify ticket attributes; see :doc:`Business rules for tickets </modules/administration/05_Règles/04_Règles_métier_pour_les_tickets>`.


Task categories
---------------

Task categories are used to sort task in order to ease their processing or to build meaningful statistics.
