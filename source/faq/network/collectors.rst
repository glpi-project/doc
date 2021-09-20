Collect emails
--------------

.. note::

   Also see :doc:`generic collectors configuration </modules/configuration/collectors>`.

From GMail
**********

If you want to collect emails from a Gmail mailbox to transform them into GLPI tickets, here are the instructions.

Google Account
^^^^^^^^^^^^^^

The authentication method of GLPI with Gmail is not considered as sufficiently secure by Google, incoming connections coming from your GLPI will by default be blocked. But Google gives you the option of allowing connections from "less secure" applications.

To do this, go to `https://myaccount.google.com/lesssecureapps <https://myaccount.google.com/lesssecureapps>`_ or go to the security settings of your Google account and activate the setting: `Allow less secure apps on`

GMAIL
^^^^^

IMAP must be allowed in your email settings: `Settings -> Forwarding and POP/IMAP -> IMAP access -> Enable IMAP` and then `Save changes`.

GLPI
^^^^

In your Collector, you must enter your IMAP authentication parameters. Google provides `authentication settings to enter on third-party applications <https://support.google.com/mail/answer/7126229?visit_id=637183900419043547-681970765&hl=fr&rd=1>`_.

You can find the generic configuration of a collector here .

From iCloud
***********

If you want to collect emails from an iCloud mailbox to transform them into GLPI tickets, here are the instructions.

iCloud account
^^^^^^^^^^^^^^

Your iCloud account must have an email address in the `icloud.com` domain. The Apple ID cannot be used, only the email address.

Your iCloud account password will not work. You must generate an application password in the security settings of your iCloud account. To do this, `Apple provides documentation <https://support.apple.com/fr-fr/HT204397>`_.

`Apple provides IMAP connection settings <https://support.apple.com/fr-fr/HT202304>`.

GLPI
^^^^

Configure the collector with the IMAP connection settings provided by Apple.

Remember to enter the application password and not the account password.

From Office365
**************

If you want to collect emails from an Office365 / Outlook mailbox to transform them into GLPI tickets, here are the instructions.

Outlook web interface
^^^^^^^^^^^^^^^^^^^^^

It is necessary to recover the IMAP connection parameters provided by Microsoft. To do that go to `Settings -> View all Outlook settings -> Mail -> Synchronize mail`.

The parameters will be given to you in a box.

GLPI
^^^^

Enter your IMAP connection settings as written in the instructions by Microsoft.

.. warning::

   Microsoft will inform you that the encryption must be TLS. On the GLPI collector side, you will only have to choose SSL to ensure compatibility.