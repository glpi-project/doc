Password management
===================

The change password form is in the main tab menu Settings

It is necessary to enter and confirm your password before update. The
administrator can disable this functionality. The change the password
fields do not appear in this case (see [Manage user's
profiles](administration_profile.html "In GLPI, profiles are managed from the menu Administration > Profiles.")).

In case the user lost their password, the ability to reset it is
proposed from the login page. The link is only present if notifications
are enabled (see [Configure follow-up emails and
alerts](config_notification_configuration.html "The general configuration of notifications is done from the menu Setup > Notifications > Email followups configuration.")).
Only users with an email address defined in GLPI and do not authenticate
via an external source (LDAP, mail server, etc.) can use this feature.
Once the password reset form is completed by entering their email
address, the user receives an email providing a link to reset the
password.

Passwords must follow the defined security policy (see [Onglet
Système](config_common_sysinfo.html "Cet onglet permet de visualiser un résumé des informations sur les capacités du serveur web et de définir les informations de journalisation et d'erreurs à enregistrer ainsi que la politique des mots de passe à appliquer.")).
A real-time control of the entered password is performed.

**Parent topic:** [Use GLPI](../glpi/use.html "Use GLPI")
