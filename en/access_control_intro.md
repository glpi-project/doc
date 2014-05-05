Administer access control
=========================

This section describes how to administer the system access control which
allows each user access to specific use.

Each user in GLPI does not have access to the same interface or to same
functionality. For each user, a specific user environment is determined,
which allows them access to features and elements of information to
which access is enabled. Access information in user profiles is used to
determine the permissions.

At first, you must link GLPI to an identity management system. GLPI can
locally manage authentication and user personal information. However,
the management of users and authentications often has an similar
external identity management system (directory), and it is preferable to
delegate authentication to it and use the information in this external
system. This is addressed in Chapter [Configurer la gestion
d'identité](config_auth.html "La manière dont GLPI gère l'authentification et les informations personnelles des utilisateurs se configure depuis le menu Configuration > Authentification.").

The daily implementation of or related to the identity management
repositories lead to the creation and deletion, synchronization,
activation and deactivation of user accounts and their associated
personal data. This is addressed in Chapter [Manage the
users](administration_user.html "In GLPI, manage the users can be done from menu Administration > Users.").

The personal data of users can associate them with groups, entities and
profiles, which are the means of determining contexts of access control.

The groups bring together the users based on similarity of skills or
organizational units. This issue is discussed in Chapter [Administrer
les
groupes](administration_group.html "Dans GLPI, administrer les groupes peut se faire à partir du menu Administration > Groupes.").

Entities can segment the organization and departmentmental groups that
are separate from each other. This is addressed in Chapter [Administrer
les
entités](administration_entity.html "Dans GLPI, administrer les entités peut se faire à partir du menu Administration > Entités.").

The profiles define the access permissions to be granted to their
members. This is addressed in Chapter [Manage user's
profiles](administration_profile.html "In GLPI, profiles are managed from the menu Administration > Profiles.").

Finally, we must administer access control: determine authorizations and
assign them to users. These authorizations are used by assignment rules
to determine the dynamic clearances of users. This is addressed in
Chapter [Attribuer des habilitations à un
utilisateur](administration_rule_right.html "GLPI dispose d'un moteur d'habilitations dynamiques qui se base sur des sources externes d'authentification. Il est accessible depuis le menu Administration > Règles > Règles d'affectation d'entité et de droits.").

-   **[Configurer la gestion d'identité](../glpi/config_auth.html)**\
     La manière dont GLPI gère l'authentification et les informations
    personnelles des utilisateurs se configure depuis le menu
    Configuration \> Authentification .
-   **[Manage the users](../glpi/administration_user.html)**\
     In GLPI, manage the users can be done from menu Administration \>
    Users .
-   **[Administrer les groupes](../glpi/administration_group.html)**\
     Dans GLPI, administrer les groupes peut se faire à partir du menu
    Administration \> Groupes .
-   **[Administrer les entités](../glpi/administration_entity.html)**\
     Dans GLPI, administrer les entités peut se faire à partir du menu
    Administration \> Entités .
-   **[Manage user's profiles](../glpi/administration_profile.html)**\
     In GLPI, profiles are managed from the menu Administration \>
    Profiles .
-   **[Attribuer des habilitations à un
    utilisateur](../glpi/administration_rule_right.html)**\
     GLPI dispose d'un moteur d'habilitations dynamiques qui se base sur
    des sources externes d'authentification. Il est accessible depuis le
    menu Administration \> Règles \> Règles d'affectation d'entité et de
    droits .

