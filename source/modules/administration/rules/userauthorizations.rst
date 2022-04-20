.. not included in any toctree, but "included" with link

:orphan:

Rules for assigning authorizations to a user
============================================

GLPI has a dynamic authorization engine which is based on external authentication sources.

An authorization in GLPI results from the attribution of permissions over a scope (one or more entities); it is the joint membership to a profile and to an entity.

Authorizations can be assigned statically, by assigning a user to a profile in an entity; however this is not the recommended method.

It is recommended to use the entity and permissions assignment rules engine to automatically assign permissions. This requires using an external authentication.

.. note :: if no LDAP directory, POP server or IMAP server are configured, then the menu does not appear in **Administration > Rules**.

The engine executes all the rules and does not stop after the first rule that applies to the user. Several rules thus make it possible to assign different authorizations to the same user. A user with several authorizations can, during his session and according to his activities, change profile and entity context.

Default profile
---------------

If a default profile is defined in the configuration of GLPI profiles, and if an authorization assignment rule does not include a profile assignment, then the default profile is used when assigning a user to the entity.

If no default profile is defined, the user is imported without authorization: he is neither assigned to an entity, nor assigned to a profile. Only the super-admin profile can see it in the root entity.

Mail server based authorizations
--------------------------------

IMAP/POP email information can be used to automatically assign permissions. The IMAP/POP identifier (the user's login) and the URL of the mail server can be used as criteria. Users can be created on the fly when they log in. On the other hand, it is not possible to do a bulk import from the mail server.

Mail server URL based authorizations
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When multiple mail servers are defined as the authentication source and the mail server URL is a relevant criterion, this information can be used to define authorizations.

.. topic:: Example

   Authentication uses the following IMAP/POP servers: ``imap.exemple.fr`` et ``imap.exemple.be``. Each server is defined as an authentication source. This information allows to assign user to `France` or `Belgium` entities. To achieve that, two static rules are necessary:

   * Rule for `Belgium`:

     * Criteria: IMAP/POP is ``imap.exemple.be``
     * Actions: assign entity `Belgium`

   * Rule for `France`:

     * Criteria: IMAP/POP is ``imap.exemple.fr``
     * Actions: assign entity `France`

Email identifier based authorizations
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When the users' e-mail addresses contain several domain names, or information relevant to defining the authorizations, this information can be used to define the authorizations. It is also possible to assign an entity to a user using the mail domain if this is specific to an entity. The email domain used by the entity is defined in the :doc:`advanced information for entities </modules/administration/entities>`.

.. topic:: Example

   Users authenticate using e-mail addresses of the following form: ``user@example.fr`` and ``user@example.be``. It does not matter if one or more mail servers are used for authentication. This information is used to assign the user to the `France` or `Belgium` entity. For this purpose two static rules will be necessary:

   * Rule for `Belgium`:

     * Criteria: IMAP/POP identifier ends with ``exemple.be``
     * Actions: assign entity `Belgium`

   * Rule for `France`:

     * Criteria: IMAP/POP identifier ends with ``exemple.fr``
     * Actions: assign entity `France`

Authorizations based on LDAP directories
----------------------------------------

A user's LDAP attributes can be used as a source to dynamically assign permissions to that user using permission assignment rules. There are many ways to use an LDAP tree to create authorization rules for users, best solution depend on the context of the directory implementation.

Authorizations based on organizational units of an LDAP directory
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Given an LDAP directory where the organization of branches (organizational units) corresponds to the organization of GLPI entities. Each organizational unit (`ou`) contains the users, either directly or in a sub-branch. Each of the branches can be used to establish a rule for assigning a user to an entity. The case of users belonging to several entities must be dealt with elsewhere. This model is relevant when a default profile can be assigned to the majority of users. The assignment of non-standard profiles should be dealt with elsewhere. The information on the user sent from the directory is sufficient to create the assignment rules in GLPI.

.. topic:: Example

   Consider an LDAP tree of the following form:

   .. code-block::

      org
        +- exemple
          +- france
            +- paris
            +- lyon
            +- bordeaux
          +- belgique
            +- bruxelles

   Each of the branches is formalized as in the following example: ``ou=lyon,ou=france,dc=exemple,dc=org``

   In the configuration of each entity, in the advanced information tab, indicate the LDAP information representing the entity (in this case the "distinguished name" of the entity).

   For example, for the Lyon entity: LDAP information representing the entity: ``ou=lyon,ou=france,dc=example,dc=org``. Then, define the rule(s) in *Administration > Rules > Entity and rights assignment rules*.

   The user has two options: a static rule set or an adaptive rule.

   * Static rule: for each entity, define an assignment rule of the following form:

     * Criteria: (LDAP)DistinguishedName ends with: ``ou=lyon,ou=france,dc=exemple,dc=org``
     * Actions: assign entity `lyon`

   * Adaptive rule: a single rule based on regular expressions is sufficient to define the assignment to all entities:

     * Criteria: (LDAP)DistinghuishedName matches following regular expression: ``/(ou=.*)/``
     * Actions: assign entity from LDAP, value from regular expression: ``#0``

     or even

     * Criteria: (LDAP)DistinghuishedName matches following regular expression: ``/(ou=.*)/``
     * Actions: assign entity full name value from regular expression: Root entity > ``#0``

   Running the rule retrieves its organizational unit (``ou``) from the user's *distinguished name*. It will then compare it to the values ​​of the LDAP Information attribute representing the entity in the database. If an entity has the attribute whose value matches, then that attribute is used as the result of the rule.

.. note:: the value of the action ``#0`` indicates that we must use the first result of the regular expression. ``#1`` indicates the second and so on. The **Test** button of the form allows you to try values ​​and see the result obtained.

Authorizations based on groups or attributes of a user in an LDAP directory
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In the directory, each user is part of a group corresponding to a GLPI profile and of a group corresponding to an entity. A user can be part of several profiles and several entities. Depending on the directory configuration, the information of the user's group membership can be found in the user object or in the group object.

* In the first case, the information contained in the user object is sufficient to create authorization rules: it is not necessary to import the groups from the directory into GLPI
* In the second case, the information contained in the user object is not sufficient and it is necessary to retrieve the information on the groups. You must first configure the LDAP groups and the automatic linking of users to groups.

.. note:: this is not limited to group type attributes, but is valid for other types of attributes stored in the directory.

.. topic:: Example

   Consider an LDAP tree of the following form:

   .. code-block::

      org
        +- exemple
	  +- profil
	    += post-only
            += tech
            += admin
            += super-admin
	  +- entité
	    +- france
	    += paris
	    += lyon
	  +- people
	    +-

   In this example, profiles and entities are defined as groups. For example: ``cn=post-only,ou=profil,dc=exemple,dc=org`` ou ``cn=paris,ou=entité,dc=exemple,dc=org``

   No specific entity configuration is required.

   In *Administration > Rules > Entity and rights assignment rules*, define the following rules:

   * for assigning a profile to a user:

     * Criteria: Group directory LDAP is `post-only`
     * Actions: Profile assign `post-only`

   * for assigning to an entity:

     * Criteria: Group directory LDAP is `paris`
     * Actions: Entity assign *Exemple > France > Paris*

.. warning:: the calculation of authorizations is done once all the rules have been executed. In the previous example, one rule attributes only an entity and the other only a profile. The product of the 2 makes it possible to define the authorization of the user. Likewise, if the user is assigned 2 entities by 2 different rules and a single profile, then he will have 2 authorizations: one on each entity with the same profile.

Using different sources of authorization
----------------------------------------

Mixed cases can be encountered: the rules can use both membership of organizational units for assignment to an entity, and membership of a group for assignment to a profile.

.. note:: it is possible to add additional LDAP criteria by clicking on the *plus button* next to the drop-down list. A criterion is composed of a name (used in the drop-down list), a criterion (corresponding to the attribute in the LDAP directory) and a comment.


