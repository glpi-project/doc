Manage your password
====================

The change password form can be found in :doc:`user preferences <preferences>`.

You must enter and confirm your password before validation. The administrator can disable this feature, so the change password area does not appear in this case.

In the event that the user has forgotten their password, the possibility of resetting it is offered to them from the login page. **The link is only present if notifications are enabled**.

Only users with an e-mail address defined in GLPI and not authenticating via an external source (LDAP, mail server, etc.) can use this functionality. Once the renewal request has been made by entering their e-mail address, the user receives an e-mail providing them with a link allowing them to reset their password.

.. note:: If you use an external authentication source (such as LDAP, SSO, etc.), please reset your password from your identity provider.

Passwords must follow the defined security policy. A real-time check of the entered password is then carried out.

See the :doc:`secruity <../modules/configuration/general/security>` tab in the configuration module
