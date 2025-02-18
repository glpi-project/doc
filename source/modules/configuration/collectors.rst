Receivers
=================

Receivers configuration can be reached from `Configuration -> Receivers ` menu.

A receiver allow to import emails from a mailbox ans turn them into GLPI tickets. A :ref:`routing mechanism <collectors_rules>` will bring them to the destination entity.

A receiver is associated with an email address. It is possible to add as many receivers as you want. Of course, the more receivers you configure, the more import will take time.

To declare a new collector, you will have to provide a server name, as well as connection options (IMAP or POP, SSL, TLS, certificate validation). It is possible to limit the maximum size for attachments (no import, or from 1 to 100 Mio). This configuration value is inherited from the main configuration (`Setup -> General -> Assistance`)
A configuration option permit to switch tickets creation date between import date or email date.

Optionally, you can set an archive directory in the mailbox where imported and refused emails will be stored.

Receivers that have errors will be indicated above the list. In that case, number of successive errors will be displayed in collector configuration form.

Once the form validated, you can test connection and messages retrieving by using the dedicated button.

An automatic action will do the import on configured receivers ; time between two executions can be configured in automated task form.

Another automatic action will send notifications when any collector repetitively fails to import emails. See `notifications configuration <modules/configuration/notifications>`.

.. warning::

   Answers to emails generated from GLPI for tickets are cleaned when importing from a collector: all content between up and bottom tags will be removed. Answers must be done before or after original message.

Blacklists
----------

Receivers can use a blacklist mechanism in order to remove recurrent but useless contents, like email signatures.

Blacklist can also prevent emails to be imported from specific email addresses; this can be useful to prevent spam, or to handle emails aliases.

.. _collectors_rules:

Rules for assigning a ticket opened via a receiver
--------------------------------------------------------

GLPI implements a mechanism for routing tickets opened by email, in order to create them in the right entity. This is based on the rules engine.

.. note:: if notifications are not enabled in the configuration, the menu does not appear in **Rules**.

Available criteria are:

* name of receiver
* requester
* email domain, whether it is known or not
* email headers: ``auto_submitted``, ``from``, ``in_reply_to``, ``received``, ``subject``, ``to``, ``X-Auto-Response-Suppress``, ``X-priority``, ``X-UCE-Status``
* email body.

Finally, there is a third type of criteria which operates on data specific to the user or to the configuration of the entities:

* **known email domain**: checks that the email domain of the email sent corresponds to a domain entered in an entity. This criterion makes it possible to eliminate, for example, all spam, i.e. messages not coming from authorized domains
* **user: group**: checks that the GLPI user associated with the sender's e-mail address belongs to a given group;
* **user with profile**: the user has a given profile;
* **user with single profile**: the user has one and only one profile in GLPI. If the profile is associated with several different entities, then the one that is defined as the default entity in the user's personalization options will be the entity of the ticket. If none is defined in the preferences, the rule does not match
* **user with the profile only once**: the user has a given profile only once: it does not have the profile assigned on several separate entities.

The actions are either the refusal of the ticket (with or without notification of the refusal to the issuer), or the import into an entity (manual, from TAG, from mail domain, from user profile).

.. warning:: The engine stops at the first matching rule.

.. todo:: example

   An example of using the engine is as follows:

   1. rule refusing emails whose email domain is unknown (not taking spam into account);
   2. rule refusing messages from mailing lists;
   3. rules affecting emails if the user has only one profile (case of users of the simplified interface);
   4. rule affecting emails to an entity if the user has a particular profile (e.g. for super administrators, who have access to all entities, but are physically in a particular entity).
