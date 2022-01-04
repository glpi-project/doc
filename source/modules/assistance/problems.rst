Manage problems
===============

A problem is the cause of potential incidents and, once identified, can be managed in GLPI.

Creating a problem object can be done either from the ticket form, in tab *Problem*, or directly from menu *Assistance > Problems*.

The problem creation form is very similar to the ticket creation form and shares with it many concepts: `Requester`, `Watcher`, `Assigned to`, `Status`, `Urgency`, `Impact`, `Priority`, `Category`. For more information, see :doc:`Manage tickets </modules/assistance/tickets/ticketmanagement>`.

.. todo::
   Check what is means
   From tickets list, an alternative solution can be associated to linked tickets without solving the problem.
   Depuis la liste des tickets, une solution de contournement peut être associé massivement aux tickets liés sans pour autant résoudre le problème.

Problems use their own notifications, see :doc:`configuration of email follow-ups <email_notifications>`.

Statistics similar to tickets are available for problems, see :doc:`Display statistics </modules/assistance/statistics>`.


The different tabs
------------------

Changes
~~~~~~~

This tab allows to display changes associated with the problem and add new changes. See :doc:`Solutions </Les_différents_onglets/Onglet_Changements>`

Analysis
~~~~~~~~

This tab contains problem analysis and describes impacts, causes and symptoms.

Solutions
~~~~~~~~~

This tab allows to describe the resolution of the problem. See :doc:`Solutions </Les_différents_onglets/Onglet_Solution>`

Statistics
~~~~~~~~~~

Statistics similar to tickets are available for problems. See :doc:`Statistics </Les_différents_onglets/Onglet_Statistiques>`

Tasks
~~~~~

A task is an action linked with a problem, usually a technical intervention. See :doc:`Tasks </Les_différents_onglets/Onglet_Tâches>`

Costs
~~~~~

This tab defines the costs applicable to this problem. See :doc:`Costs </Les_différents_onglets/Onglet_Coûts>`

Elements
~~~~~~~~

This tab allows to attach an item to the problem by choosing the type and the selected item. See :doc:`Items </Les_différents_onglets/Onglet_Eléments>`

.. include:: ../tabs/tickets.rst

.. include:: ../tabs/documents.rst

.. include:: ../tabs/notes.rst

.. include:: ../tabs/historical.rst

.. include:: ../tabs/all.rst
