Email follow-ups configuration
==============================

For GLPI to be able to send notification via email, an email server connection will need configured.

The email server configuration can be configured globally, and then some options can be overridden at the entity level.

Global settings can be accessed from the "Email followups configuration" option on the **Setup > Notifications** page.

Global Configuration
--------------------

The global configuration allows you to set the following options:

+------------------------------------------------------+------------------------------------------------------------------------------------------------+
|                           **Option**                 |                                  **Meaning**                                                   |
+------------------------------------------------------+------------------------------------------------------------------------------------------------+
| `Administrator email`                                | | GLPI Administrator email.                                                                    |
|                                                      | | This can be used as a special recipient in notifications                                     |
+------------------------------------------------------+------------------------------------------------------------------------------------------------+
| `Administrator name`                                 | The display name to use for the Administrator email address.                                   |
+------------------------------------------------------+------------------------------------------------------------------------------------------------+
| `From email`                                         | The email address to use in the From field for emails sent by GLPI.                            |
+------------------------------------------------------+------------------------------------------------------------------------------------------------+
| `From name`                                          | | The display name to use for the From email address.                                          |
|                                                      | | This name will be seen by end users.                                                         |
+------------------------------------------------------+------------------------------------------------------------------------------------------------+
| `Reply-to address`                                   | The email address to use when user's reply to the email notifications.                         |
+------------------------------------------------------+------------------------------------------------------------------------------------------------+
| `Reply-to name`                                      | The display name to use for the Reply-to email address.                                        |
+------------------------------------------------------+------------------------------------------------------------------------------------------------+
| `No-Reply address`                                   | The email address to use for emails that shouldn't be responded to.                            |
+------------------------------------------------------+------------------------------------------------------------------------------------------------+
| `No-Reply name`                                      | The display name to use for the No-Reply email address.                                        |
+------------------------------------------------------+------------------------------------------------------------------------------------------------+
|  | `Add documents into`                              | | If enabled, documents attached to a ticket will be added                                     |
|  | `ticket notifications`                            | | to related notifications as links.                                                           |
|                                                      | | The links will use the GLPI URL specified in the general configuration.                      |
+------------------------------------------------------+------------------------------------------------------------------------------------------------+
| `Email signature`                                    | Text added at the end of every notification.                                                   |
+------------------------------------------------------+------------------------------------------------------------------------------------------------+
| `Way of sending emails`                              | Method to send emails (PHP, SMTP, SMTP+SSL, SMTP+TLS).                                         |
+------------------------------------------------------+------------------------------------------------------------------------------------------------+
| `Max delivery retries`                               | Number times GLPI will try to send a notification.                                             |
+------------------------------------------------------+------------------------------------------------------------------------------------------------+
| `Try to deliver again in (minutes)`                  | Time between notification delivery attempts.                                                   |
+------------------------------------------------------+------------------------------------------------------------------------------------------------+

You can test the sending of notifications from the global notification configuration form by trying to send an email to the specified Administrator email address.

Email Method - PHP
------------------

This option cannot be configured within GLPI and must be done in your PHP configuration.
This option uses the `mail()` function of PHP.

.. note::
    The PHP email method is blocked by most hosting providers.

Email Method - SMTP
-------------------

The following configuration options are available for the `SMTP` email method(s):

- Check certificate - Verify the email server has a valid certificate.
- SMTP host - The SMTP server address.
- Port - The port to communicate with the SMTP host over.
    | Typically, this is port 25. Check your provider's documentation for more info.
    | Also, additional configuration may be needed if your provider needs `IMAP OAuth <https://glpi-plugins.readthedocs.io/en/latest/oauthimap/index.html>`_.
- SMTP login (optional) - Username to authenticate with the email server.
- SMTP password (optional) - Password to authenticate with the email server.
- Email sender - This may be needed for some email providers.
    If this is not specified, the Administrator email will be used.

Email Method - SMTP+SSL
-----------------------

The configuration options are the same as the `SMTP` option but GLPI will use `SSL` security for the connection.

Email Method - SMTP+TLS
-----------------------

The configuration options are the same as the `SMTP` option but GLPI will use `TLS` security for the connection.

Entity Configuration
--------------------

The following options can be overridden at an entity level (see global configuration for more information about each option):
- Administrator email
- Administrator name
- Reply-to address
- Reply-to name
- Email signature

The entity level options can be accessed for the **Notifications** tab in the entity's form.

The following options can only be configured at the entity level:

- `Prefix for notifications` - Text to prefix to the subject of email notifications.
- `Delay to send email notifications` - Optional delay to the initial sending of notifications.
- `Enable notifications by default` - If enabled, a user is automatically set to receive notifications in some cases such as when they are assigned to a ticket.

Fields that are no set, will be inherited from their parent entity by default.


.. |br| raw:: html

      <br>