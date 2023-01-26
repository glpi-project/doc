Configure automatic actions
===========================

GLPI has multiple automatic actions (also referred to as crontasks) that are periodically scheduled jobs.
These actions can be configured to run at a specific frequency and run in either GLPI or CLI mode.

In GLPI mode, the actions are started occasionally when users navigate GLPI.
In CLI mode, the actions are started in their own session via cron, Scheduled Tasks, or some other external task scheduler.
You may configure some actions to run in GLPI mode and others to be CLI.
Some actions may support only one of the modes.

Configure CLI mode
------------------

To run CLI mode tasks, you will need to configure your external task scheduler to call GLPI's `front/cron.php` file periodically.
It is recommended to have it run every minute to ensure that actions that are ready to run, get ran as soon as possible.

For Linux/MacOS, you should add the following to the web server's user's (www-data, apache, etc) crontab:

::

   * * * * * php GLPI/front/cron.php

You will need to replace `GLPI` with the path to your GLPI folder.
You may also need to replace `php` with the full path to your php binary if it is not in the PATH.

Force execution of action from CLI
----------------------------------

To execute a specific action from the command-line, you can run (for mailgate action):

::

   php GLPI/front/cron.php --force mailgate

You will need to replace `GLPI` with the path to your GLPI folder.

Forcing the action to run will ensure it is run even if it is not scheduled to run again yet.

Default actions
---------------

alertnotclosed (Ticket)
~~~~~~~~~~~~~~~~~~~~~~~

Send notification alerts for tickets that have been open a certain number of days without being closed.
Notifications must be enabled for this action to work.
The number of days can be configured for each Entity.


cartridge (CartridgeItem)
~~~~~~~~~~~~~~~~~~~~~~~~~

Send notification alerts for cartridge stock under the alert threshold.
Notifications must be enabled for this action to work.
The alert threshold can be changed for each Cartridge.

certificate (Certificate)
~~~~~~~~~~~~~~~~~~~~~~~~~

Send notification alerts for certificates that are about to expire.
Notifications must be enabled for this action to work.
The expiration warning delay can be changed for each Entity.

checkAllUpdates (Glpi\Marketplace\Controller)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Checks all installed plugins to see if there is an update available.
The plugins must be available via the `marketplace <plugins.html>`_ even if they weren't installed that way in order for the update detection to work.
If you have notifications enabled, you can receive a notification regarding the available updates.
Otherwise, the available updates are listed in the action's log.

checkdbreplicate (DBconnection)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Checks the status of all database replicates including that it is reachable from GLPI and that it is in sync with the main database.
If you have notifications enabled, you can receive a notification regarding any issues with the replicates.
Otherwise, the issues are listed in the action's log.

checkupdate (CronTask)
~~~~~~~~~~~~~~~~~~~~~~

Checks for a new GLPI version.

circularlogs (CronTask)
~~~~~~~~~~~~~~~~~~~~~~~

Removes entries in logs in the `files/_log` folder that are older than a certain number of days which is configurable within the action form itself.

cleanorphans (Document)
~~~~~~~~~~~~~~~~~~~~~~~

Deletes all documents that aren't associated with other GLPI items like Tickets.

.. note::

   This doesn't account for direct links to documents added for example in Ticket tasks, comments, etc.

cleanorphans (Glpi\Inventory\Inventory)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Deletes all inventory submission files that are not related to an existing asset in GLPI.

cleansoftware (CleanSoftwareCron)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Deletes all software versions without an installation and deletes all software without a version.

cleantemp (Glpi\Inventory\Inventory)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Deletes all temporary inventory files older than 12 hours.

closeticket (Ticket)
~~~~~~~~~~~~~~~~~~~~

Closes all tickets that were solved for a certain amount of working time.
The amount of time can be configured for each Entity.

.. note::

   The working hours on the Entity's calendar are considered when determining how much working time had passed.

consumable (ConsumableItem)
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Send notification alerts for consumable stock under the alert threshold.
Notifications must be enabled for this action to work.
The alert threshold can be changed for each consumable.

contract (Contract)
~~~~~~~~~~~~~~~~~~~

Send notification alerts for contracts that are about to expire.
If you don't have notifications enabled, the expiration warnings are still listed in the action's log.
The expiration warning delay can be changed for each Entity.

countAll (SavedSearch)
~~~~~~~~~~~~~~~~~~~~~~

Updates the estimated execution time for saved searches.

createinquest (Ticket)
~~~~~~~~~~~~~~~~~~~~~~

Creates ticket satisfaction surveys after a certain amount of time and closes surveys after a certain amount of time.
Both durations can be changed for each Entity.

DomainsAlert (Domain)
~~~~~~~~~~~~~~~~~~~~~

Send notification alerts for domains that are about to expire.
If you don't have notifications enabled, the expiration warnings are still listed in the action's log.
The expiration warning delay can be changed for each Entity.

graph (CronTask)
~~~~~~~~~~~~~~~~

Cleans generated graphs older than an hour.

These graphs were only created in GLPI before version 9.2 for statistics and possibly some plugins from those versions or newer.

infocom (Infocom)
~~~~~~~~~~~~~~~~~

Send notification alerts for warranties (Set in the Management tab on an asset form) that are about to expire.
If you don't have notifications enabled, the expiration warnings are still listed in the action's log.
The expiration warning delay can be changed for each Entity.

logs (CronTask)
~~~~~~~~~~~~~~~

Cleans old automatic action log entries.
The amount of time to keep log entries can be changed for each automatic action.

mailgate (MailCollector)
~~~~~~~~~~~~~~~~~~~~~~~~

Retrieves emails from `configured mailboxes <collectors.html>`_ and creates tickets from the mail.

mailgateerror (MailCollector)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Send notification alerts for any errors encountered when collecting emails by the collectors.

olaticket (OlaLevel_Ticket)
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Evaluate OLA levels for tickets.

passwordexpiration (User)
~~~~~~~~~~~~~~~~~~~~~~~~~

Send notification alerts for user passwords that expired and handle disabling the affected accounts.

pendingreason_autobump_autosolve (PendingReasonCron)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Automatically add followups for tickets that are in a pending status to try and get a response from or to remind an end-user of the pending reason.
If the end-user doesn't respond after a certain number of reminders, the ticket will be automatically resolved.

planningrecall (PlanningRecall)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Send notification reminders for planned events.

PurgeLogs (PurgeLogs)
~~~~~~~~~~~~~~~~~~~~~

Deletes historical data entries that are older than a certain amount of time.
The amount of time can only be changed globally for all Entities, but some of the types of entries can be configured with different durations.

purgeticket (Ticket)
~~~~~~~~~~~~~~~~~~~~

Purge tickets that have been closed for a certain amount of time.
The delay can be changed for each Entity.

queuednotification (QueuedNotification)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Try sending all queued notifications.
If a notification cannot be sent, the failure is recorded and then the notification will try to be sent again during the next action run in case it was a temporary issue.
After continued failures, the notification is cancelled.

queuednotificationclean (QueuedNotification)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Deletes all notifications that are older than a certain number of days.
The number of days can be configured within the action itself.

RecurrentItems (CommonITILRecurrentCron)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create scheduled recurring tickets or changes.

reservation (ReservationItem)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Send notification alerts for the end of reservations.

savedsearchesalerts (SavedSearch_Alert)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Send notification alerts for saved searches.

session (CronTask)
~~~~~~~~~~~~~~~~~~

Delete expired session files.

slaticket (SlaLevel_Ticket)
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Evaluate SLA levels for tickets.

software (SoftwareLicense)
~~~~~~~~~~~~~~~~~~~~~~~~~~

Send notification alerts for software licenses that are about to expire.
Notifications must be enabled for this action to work.
The expiration warning delay can be changed for each Entity.

telemetry (Telemetry)
~~~~~~~~~~~~~~~~~~~~~

Send telemetry information.

temp (CronTask)
~~~~~~~~~~~~~~~

Clean all temporary files older than an hour.

unlockobject (ObjectLock)
~~~~~~~~~~~~~~~~~~~~~~~~~

Automatically remove locks on items older than a specific number of hours.
The number of hours can be changed within the action itself.

watcher (CronTask)
~~~~~~~~~~~~~~~~~~

The watcher automatic action is an action that monitors the execution of the other automatic actions.
If one of them has an error, a notification will be sent.
For this to work properly, notifications will need to be configured.

The different tabs
------------------

-  **Automatic action**

   For each action, it is possible to configure:

   - Run frequency
   - Status (Allows you to disable the action if needed)
   - Run mode
   - Run period (Allows you to disable certain actions at night for example)
   - Number of days this action's logs are stored

   The interface also allows you to reset the execution date and to manually force the execution manually.

   Some automatic actions can have particular parameters, such as the maximum number of emails to be sent each time for the mailqueue action.
   Also plugins can define their own automatic actions.

-  **Statistics**
   Displays information about the execution of this task (number of executions, start date, minimum, maximum, average and total durations).

-  **Logs**
   Lists the last executions according to the parameter defined in the *Automatic action* tab (see above).
   A link on the execution date allows to have the details of a specific execution.

The different actions
---------------------

- **Reset last run**: Clear the last run
