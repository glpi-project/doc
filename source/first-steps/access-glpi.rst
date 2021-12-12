Administering access controls
=============================

This section describes how to administer the access control system that allows each user to access a specific context of use.

In GLPI each user does not have access to the same interface nor to the same same functionalities.
For each user, a specific context of use is determined, which grants them access only to the functionalities and information that is needed.
Access to identity information about the user allows us to determine his or her authorizations.

The first step is to configure the desired authentication method(s).
GLPI is able to manage user authentication and information completely locally in its database, however it is recommended to delegate the authentication to an external service like LDAP.
See :doc:`Configuring authentication methods <../modules/configuration/authentication/index>` for more information.

The import or creation of new users and management of users known to GLPI including deletion, syncronization, activation/deactivation and management of information such as email, phone, etc is covered in `the user administration documentation <administration_user.html>`__.

A user can associated with groups, entities, and profiles which are the means of determining usage contexts.

Groups allow users to be grouped according to similarities in skills or organizational units.
See :doc:`Administering groups <../modules/administration/groups>` for more information.


Entities allow you to segment your asset fleet, help desk, etc into departments that are isolated from each other.
See :doc:`Administering entities <../modules/administration/entities>` for more information.

Profiles are sets of permissions that can be granted to users. Multiple profiles can be given to a user but only one can be active at a time.
See :doc:`Administering profiles <../modules/administration/profiles/profiles>` for more information.

Finally, you can configure :doc:`Rules for assigning authorizations to a user <../modules/administration/rules/userauthorizations>` to dynamically assign entities, groups and profiles to users.