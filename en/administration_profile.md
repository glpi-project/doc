Manage user's profiles
======================

In GLPI, profiles are managed from the menu Administration \> Profiles .

The profile's concept is very important in the setup of GLPI. It's it
which accredite the users of some rights, it's it which allows to
securitize and isolate data to some users.

A profie can be associated to:

-   a user ;
-   an entity (**recursive** or **dynamic** way).

To pass rights linked to this profile on to all entities daughters of
recorded entity, it's necessary to associate profile in recursive way.
It's all principle of recursion there.

It's also possible to add a profile to a user on several entities
without real link between them. To do that, it's enough to add a profile
to a user x time, x being the number of entities to be covered.

It's also possible to associate differents profiles to a same user!

By default, 7 profiles are prerecorded in GLPI :

-   **Super-Admin**: this profile allows all rights!
    Important: if the super-admin profile is deleted or if **simplified
    interface** is associated to this profile, the access to th GLPI's
    setup can be definitely lost.
-   **Admin**: this profile allows setup rights on all GLPI. Some
    limitations are applied to it for configuration of rules, of
    entities as well as others sections which can distort the behavior
    of GLPI.
-   **Supervisor**: this profile has the same elements as the Technician
    profile by adding it elements allowing the management of the team
    and it's organization (attribution of tickets...).
-   **Technician**: this profile corresponds to that used for a
    technician of maintenance. It has access to all assets in read only
    and to the helpdesk to handle tickets.
-   **Hotliner**: this profile corresponds to the one that we could give
    for a department of hotlline. It allows to create tickets and to
    follow them but not to handle it as can be a technician.
-   **Observer**: this profile allows read rights for all assets an
    management datas. For assistance, he will be able to create a ticket
    or to see himself assigning but won't be able to manage this rubric
    (t*o assign a ticket, to steal a ticket...*).
-   **Self-Service**: this profile is more limited. it's the only one to
    have different interface, the **simplified interface**, in
    opposition to the **standard interface**. He will however be able to
    create a ticket, to add to it a followup, to consult the FAQ or else
    to reserve an equipment. This profile is recorded as default
    profile.e

To create a profile
-------------------

Since the interface os adminstration of profiles, it's possible to
create it of new. It's necessary to complete:

-   a name,
-   if it's the **profile by default**,
-   an **interface**.
-   possibility or not of **changing his password.**

**Profile by par défault?**

When this field is checked, every created or imported user will have
this profile associated.

Important: if more than one profile is recorded as profile by default,
the first recording will make authority on all the others.

**Interface**

It's possible to choose between two interfaces: the **standard
interface** of GLPI and the **simplified interface**. The **simplified
interface** introduces a very limited menu, giving access by default
only to tickets, to reservation of equipment, to fluxes RSS, to public
notes and to consultation of the FAQ. This interface is fluently used by
final users, the employees of a society having no real needs as part of
the assets management.

**Changing his password**

With this functionnality, a user will have the possibility of changing
his password since the link **My settings**.

Important: if the authentication by Directory is activated, a user will
lose his capacity to change his password, also for quite other data
linked to the directory.

**Creation form of tickets at the connection**

This option allows to redirect the users of profile directly on the
creation page of tickets instead of the home page.

Contents of profiles
--------------------

Once created profile, it will be possible to establish rights on the
differents functionnalities of GLPI. 7 tabs will be available to manage
this whole rights:

-   **Assets**: rights on all or part types of equipment ;
-   **Management**: rights on contacts ans suppliers as well as on
    documents, contracts, financiel information and budget ;
-   **Assistance**: rights on tickets, followups, tasks, validation,
    associations, problems ans changes. This tab also manages the
    visibility of statistics and of plannings as well as allocation of a
    template for the profile ;
-   **Life cycles**: rights on the process of change status of a ticket,
    of a problem and of a change (*example: a ticket can be closed only
    having been solved*) ;
    Note: For simplified interface, the life cycle of tickets allows to
    define if user has the right to close a ticket and if he has the
    right to re-open it even it's closed.
-   **Administration**: rights on the users, groups, entities and
    profiles but also on logs, transfers, authentication methods,
    maintenance, mail queue and users additions; rights on rules for
    assigning as well as on dictionaries (*dropdown, software...*) ;
-   **Setup**: rights on the setup, components, display and global
    dropdowns; rights on the entity dropdowns (*domain, location,
    categories of ticket, of task and of knowledge base, network
    outlets, statuses, solution templates, calendars, document types,
    external links, notifications, SLA*) ;
-   **Tools**: rights on projects, notes, FAQ, knowledge base, reports,
    reservation of equipment and fluxes RSS. The right of knowledge base
    administration allows to see and edit all items without recognition
    of the defined targets. the right of administration of reservations
    allows to see, to edit and to delete all reservations.

Tip: Right "entities" allows to define delegated administration of this
one (assistance part) by choosing **Update parameters** option

Note: the display of the profile's management is function of the profile
on which the connected user depends. It can change according to profile.

**Explanation of rights:**

The differents rights of an object are listed on the line of its name.
To activate a right it's enough to check the corresponding box (an
conversely to delete a right).

**No deduction of right is made**; for example, to be able to update an
object you must also give the right of reading (it's besides often this
right wich displays the object or not in the differents menus).

If Delete right appears, it's because the object has a basket,
otherwise, the option vill be Delete permanently. But, for objects with
basket, you can now refine your rights on by allowing, for example, the
deletion in a profile and the permanently deletion to other one..

**Rights after migration:** migration takes back your old rights,
whatever is the object and activates the corresponding values in the new
system..

Your old rights of writing are transformed in Reading, Upodate, Create,
Delete and Delete permanently for the majority of the objects, that you
can refine them if needed.

For others, rights are grouped by object (for example, the rights FAQ
are rights of the object Knowledge base).

**Parent topic:** [Administer access
control](../glpi/access_control_intro.html "This section describes how to administer the system access control which allows each user access to specific use.")
