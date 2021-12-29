Reccurent tickets
=================

Using templates, it is possible to program recurrent ticket opening.

.. note::

   * Open a ticket every Monday to check that weekend backup was correctly executed
   * Open a ticket first day of the month to perform initialization operations

The different fields
--------------------

* **Active**: allows to disable temporarily ticket creation;
* **Ticket template**: model that will be used for ticket creation;
* **Start date**: start date for ticket creation, mandatory;
* **End date**: optional, defines ticket creation end date;
* **Periodicity**: ticket creation period;
* **Preliminary creation**: time for anticipated ticket creation;
* **Calendar** : allows to limit ticket creation days.

.. note::

   Tickets will only be created if `Active` is `Yes` and if current date is between `Start date` and `End date`.

Reccurent ticket opening is done through an automatic action named *recurrent ticket*, see :doc:`Configure automatic actions <../../configuration/crontasks>`.
