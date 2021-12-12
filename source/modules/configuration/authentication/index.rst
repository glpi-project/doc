Authentication
==============

This is where GLPI manages the authentication and information of users.

GLPI uses its own internal database of users. These are either created in GLPI itself or imported from one or more external sources.
Depending on the type of source, the import can be done in bulk or at the time of login if the user is not yet known to GLPI but exists in an external authentication server with matching credentials.

The general authentication configuration and the management of external authentication servers can be done in the :doc:`Setup > Authentication menu <configuration>`.

The attribution of authorizations is described in the :doc:`Rules for assigning authorizations to a user <../../administration/rules/userauthorizations>` documentation.

.. note::

   The authentication process is as follows:

   #. A user enters their login and password in GLPI
   #. GLPI checks if the user is already registered in its database and if not:

      #. GLPI tries the configured methods of authentication one after another (Internal > LDAP > IMAP > Other)
      #. When the authentication is successful, the user is created in the GLPI database and the method of authentication is stored with it
      #. If no method of authentication is able to authenticate the user, they are shown an error indicating that their username or password is incorrect

   #. If the user already existed in the GLPI database or was imported in the previous step:

      #. GLPI tries authenticating the user only with the last source that was able to successfully authenticate them
      #. If the authentication fails, they are shown an error indicating that their username or password is incorrect

   #. The authorization engine is launched with the user's information:

      #.  If the engine has granted one or more authorizations to the user, then that user has access to GLPI
      #.  If the user is not granted any authorizations, then the user will be known to GLPI but will not be able to login


In order to use an external source of authentication you may need to enable the relevant PHP extension(s).
For example, LDAP sources will require the `php-ldap` extension.

There is no limit to the number of authentication sources that can be configured.

To allow GLPI to create users automatically from external authentication sources as they try to log in, it must be enabled in the **Setup > Authentication > Setup** form.
When using LDAP directories, it is possible to configure the action that GLPI takes when a user is no longer present in the LDAP directory from this same form.

.. toctree::
   :maxdepth: 1

   configuration
   ldap
   imap
   other
