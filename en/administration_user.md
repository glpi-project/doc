Manage the users
================

In GLPI, manage the users can be done from menu Administration \> Users
.

It's possible to add, to modify, to delete some users or to search and
to export the list of the users. The list of recorded users works
similary the the list of the elements of inventory.

Besides the information of the user, it's possible to desactivate him if
needed (field Active). In that cas, the user isn't effluent any more in
dropdowns of ticket or of asset, but he keeps his associated equipements
or tickets. Dates of validity also allow to define the period of
activity of the user ; the account of the user will then considered as
active only after the begin date and/or before the end date (2 values
are optionnals and can be defined independentlyl).

A photography can be manually associated or automatically associated
sinc a directory (see [Authentifier des utilisateurs à partir
d'annuaires
LDAP](config_auth_ldap.html "L'interface de GLPI avec les annuaires LDAP se configure depuis le menu Configuration > Authentification > Annuaire LDAP.")).

Additional functionnalities linked to the users are usable with the
differents tabs:

-   Authorizations allow to manage the authorizations of the user ;

    For that, select first the entity on which rights must be given,
    after rights (profile) to give. The option **Recursive** associates
    the profile to all sub-entities of selected entity ;

-   Groups

    Allow to associate or delete groups to the user ;

-   Settings

    Allow change settings of the user. See [Managing user
    preferences](start_pref.html "User preferences are changing from the menu Settings").

-   Used items

    List assets affected to the user or to a group he is member of ;

-   Managed items

    List assets for which the user is the technician in charge of the
    hardware or member of the group in charge of the hardware ;

-   Created tickets

    List tickets of which the user was the requester ;

-   Documents

    Allow to add a document. See [Associate
    documents](inventory_document.html "Associated documents can be managed from the tab Documents").
    ;

    Réservations

    List past, current an future réservations of the user ;

-   Synchronization

    Allow to change authentication method of a user ;

-   Links

    Allow to see external links defined for users. See [Configurer les
    liens externes
    protocolés](config_link.html "Les liens externes se configurent depuis le menu Configuration > Liens externes")
    ;

-   **Historical**

    See [View
    History](inventory_log.html "The history is viewed from the tab Historical")
    ;

-   All

    See [View all information on one
    page](inventory_all.html "For an item all information are showed on only one page from tab All").

When an external authentication is defined (LDAP directory, IMAP/POP,
CAS) new buttons appeared to allow import of new users or
synchronization of existing users (only LDAP directory).

-   **[Ajouter un
    utilisateur](../glpi/administration_user_t_create.html)**\
-   **[Supprimer un
    utilisateur](../glpi/administration_user_t_delete.html)**\

**Parent topic:** [Administer access
control](../glpi/access_control_intro.html "This section describes how to administer the system access control which allows each user access to specific use.")
