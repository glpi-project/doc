Open a ticket
=============

Open a ticket in GLPI

The user can open a ticket :

-   in GLPI
    -   via the interface to anonymously open tickets accessible by
        unauthenticated users
    -   using the simplified (reduced entry form) for an authenticated
        user
    -   via the standard interface (complete entry form)

-   Email: The user sends an email to an defined email address. Upon
    receipt of the email, a ticket is opened automatically (see
    [Configurer les
    collecteurs](config_mailcollector.html "La configuration des collecteurs s'effectue depuis le menu Configuration > Collecteurs")).

Whatever the creation method of a ticket, if no title (or subject to an
email) is specified, the ticket will name as the first 70 characters of
the description field (or the body of the email).

Depending on the configuration, some fields may be required to open a
ticket (content, title and / or category). If one of them is missing the
ticket will not be created.

Note: The fields are described in the section [Manage
tickets](helpdesk_ticket.html "Tickets in GLPI, characteristics and use").

Note: Delegation allows a user to report an incident for another person.
Configuring this feature is described in chapter [Administrer les
groupes](administration_group.html "Dans GLPI, administrer les groupes peut se faire à partir du menu Administration > Groupes.").
In the simplified interface, an option to specify whether the incident
involved the user himself or another. In the standard interface, the
option is active when the right **See all tickets** is disabled in the
profile. This results in the addition as applicant of all users for whom
the delegation takes place.

Interface for opening of anonymous tickets (for unauthenticated users)
----------------------------------------------------------------------

Available at http://<GLPI\_ADDRESS\>/front/helpdesk.html, it allows
users with no GLPI account to send a report form to the support center.
Once completed and submitted the entry form, a message confirms the good
creation of the ticket. This form can be customized by editing the file
directly helpdesk.html. By default the ticket is created in the root
entity.

Simplified Interface
--------------------

It allows an authenticated user to quickly create a ticket for himself
or for another person (Delegation).

A message prompting the user to confirm his personal details (location,
telephone) can be displayed to facilitate contact by technicians (see
Configuration / [Onglet
Assistance](config_common_assist.html "Cet onglet permet de paramétrer le comportement de la partie assistance de GLPI.")).

To do this, complete the entry form displayed upon GLPI login and
validate.

**Specific fields :**

-   **Email Follow-ups**

    Appears if followed by e-mail have been configured (see [Configure
    Notifications](config_notification.html "Notifications are configured from the menu Setup > Notifications ;")).

    Selection to "Yes" allows the requester to be informed by email of
    different updates for his ticket.

-   **Email** : Address where notifications will be sent. If several are
    defined, it will take the default address associated with the
    authenticated user but it is possible to select another.
-   **Hardware Type** : Allows you to associate an inventory object to a
    ticket.

    The content of the list depends on the settings in the profile (see
    [Manage user's
    profiles](administration_profile.html "In GLPI, profiles are managed from the menu Administration > Profiles.")).

-   **Watcher** : adds an observer and define its notification settings.
    Only members of requester groups may be associated.

Tip: Each user can add new email addresses to their profile directly
from its Preferences (see [Managing user
preferences](start_pref.html "User preferences are changing from the menu Settings")).

It is possible to add one or more documents in a single operation to the
ticket.

En activant l'option "**Utiliser du texte riche pour l'assistance**"
dans la configuration générale (onglet assistance), le champ description
du ticket pourra être formaté au format Html. De plus une zone
supplémentaire sera disponible afin de glisser ou de coller des images
(exemple : Screenshot). Une balise sera alors ajoutée automatiquement à
la description afin de formaliser le contenu de sa demande.

Il est important d'ajouter l'image après avoir spécifié la catégorie du
ticket, car le rechargement du formulaire entraine la suppression des
images (ou des documents) liés.

A message confirms the creation of the ticket and can be accessed by
clicking the ticket number that appears in green.

Standard Interface
------------------

To create a new ticket go to the menu Assistance \> Tickets \>
![image](../image/menu_add.png) .

It is possible to add one or more documents in a single operation to the
ticket

De même que sur l'interface simplifiée, en activant l'option "**Utiliser
du texte riche pour l'assistance**" dans la configuration générale
(onglet assistance), le champ description du ticket pourra être formaté
au format Html. De plus une zone supplémentaire sera disponible afin de
glisser ou de coller des images (exemple : Screenshots). Une balise sera
alors ajoutée automatiquement à la description afin de formaliser le
contenu de sa demande.

Lors de l'ajout d'une nouvelle image depuis l'onglet Documents du
ticket, la balise générée pourra être aussi utilisé pour insérer l'image
dans la description du ticket.

A message confirms the creation of the ticket and can be accessed by
clicking the ticket number that appears in green.

A request for validation can be performed at the opening of the ticket
by simply indicating the desired validator.

Note: At the entry of the requester or assigned technician or group,
information is displayed to determine how many tickets the person has
already opened or is currently supporting. Similar to the selection of
equipment, a simplified view of current tickets is displayed.

Email Receiver
--------------

Just send an email to the address defined in the configuration (see
[Configurer les
collecteurs](config_mailcollector.html "La configuration des collecteurs s'effectue depuis le menu Configuration > Collecteurs")).
The subject line becomes the title of the ticket, the body becomes the
description and the attached documents will be added to the ticket.

En activant l'option "**Utiliser du texte riche pour l'assistance**"
dans la configuration générale (onglet assistance), les images présentes
dans le corps du message seront visibles dans la description du ticket.

**Parent topic:**
[Assistance](../glpi/helpdesk.html "The GLPI Assistance help desk")
