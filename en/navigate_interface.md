The standard interface and simplified interface
===============================================

According to its clearance, the user uses the **standard interface** or
the**simplified interface**.

Standard Interface
------------------

This is the main interface of the application. All modules are
available.

Figure 1. Standard Interface Menu
![image](../image/GLPI-Interface%20standard.png)

The home page **standard interface** provides an overview for quick
access to active elements (tickets, notes, schedules, contracts, etc.).

It is divided into three views :

-   **Personnal View** displays open tickets, rejected, in progress,
    approve (when the user is a requester) on those which that user has
    interaction as validator or technician (in Pending validation,
    ongoing, to be closed, pending). This view also offers the problems
    in progress, the user's schedule and available notes.
-   **Group View** provides the same information about the tickets and
    the problems as personal view with relation to the reference groups
    to which the user belongs. According to its profile, it will have
    access to tickets or not depending on the actor groups that are
    associated.
-   **Global View** displays statistics on the tickets and the problems
    depending on their status and contracts according to their
    expiration date. It also offers the latest additions to the objects
    in GLPI. Depending on the configuration used, new tickets may also
    be presented in this tab.
-   **RSS Feeds** offers defined RSS feeds content (see [Gérer les flux
    RSS](tool_rssflow.html "Les flux RSS se gèrent depuis le menu Outils > Flux RSS")).

Figure 2. Home ![image](../image/GLPI%20-%20accueil.png)

Note: A security message may be displayed when you first login after the
installation procedure. This message prompts you to change passwords
accounts created by default in GLPI. The messages will remain until all
default account passwords are changed.

Figure 3. Menu personalized standard interface
![image](../image/GLPI-Interface%20personnalisee.png)

Display to a user using the standard interface, but having no read and
writing access to the inventory. The menus presented in the navigation
bar is thus limited.

Simplified Interface
--------------------

This interface is the most restrictive. It is intended for users with
very limited clearances on application: self-service helpdesk. The
number of available menus is minimized. In default configuration, a user
can, using this interface, only create tickets, follow the treatment of
its tickets, make reservations and check out the FAQ. The home page
provides the number of its tickets following their rules and the most
popular and most recent FAQ topics.

Figure 4. Simplified Interface Menu
![image](../image/GLPI-interface%20simplifiee.png)

Note: The choice of the default interface and the different modules to
display or are not configured in the profiles (see [Manage user's
profiles](administration_profile.html "In GLPI, profiles are managed from the menu Administration > Profiles.")).

**Parent topic:** [Use GLPI](../glpi/use.html "Use GLPI")
