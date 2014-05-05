Configure follow-up emails and alerts
=====================================

The general configuration of notifications is done from the menu Setup
\> Notifications \> Email followups configuration .

"Setup" tab
-----------

GLPI notifications are sent via email. It is therefore necessary to
configure the server notifications connection.

Important: Important: This configuration page is available to users with
permission *Configuration - writing.* By default notifications are not
enabled: selecting "Enable follow-up via email" enables use of this
functionality.

-   **Notifications and Mail server**
    Note: This menu allows you enter the necessary parameters for the
    proper notifications. Once the general configuration is validated,
    it is possible to test it by clicking the button: **Test sending
    email to the administrator**.
    -   **Enable follow-up via email**: Enable/Disable the handling of
        notifications in GLPI. This configuration is overall to the
        whole application.
    -   **Add documents into ticket notifications**: allows you to add
        URL links to documents attached to a ticket in the notifications
        received.
    -   **Administrator Email**: E-mail address of the GLPI system
        administrator. This address is used when the **Administrator**
        is selected as the recipient of a notification.
    -   **Administrator reply-to Email (if needed)**: E-mail address
        used when the user answers a notification from the
        Administrator.
    -   **Email Signature**: Text added at the end of each notification.
        This value is global, but can be adapted for each entity (see
        configuration of an entity).
    -   **URL of the application**: Indicates the path to the GLPI web
        application. This parameter is used, among others, to build
        links to objects in an email.
    -   **Administrator Name**: The name of the administrator used
        indicates the name associated with email Administrator.
    -   **Response name (if necessary)**: Name used when the
        Administrator answers an email from the user.
    -   **Way of sending emails**:
        1.  PHP: is handled by sending the mail () function of PHP. This
            is often blocked in the hosts.
        2.  SMTP: sending using SMTP.
        3.  SMTP + SSL: sending using SMTP, encapsulated in an SSL
            tunnel.
        4.  SMTP + TLS: sending emails more secure than SMTP + SSL.

    -   **SMTP Host**[:Port] (separator ;): Name or IP address of the
        mail server. It is possible to specify port by adding the
        character "colon" and the number. Multiple servers can be
        specified in the separated by a semicolon.
    -   **Port** : Listening port for the SMTP service of the mail
        server.
    -   **SMTP Login (optional)**: User allowed to connect to SMTP
        (leave blank for anonymous connections)
    -   **SMTP Password (optional)**: The password of the user. It is
        possible to erase the password by checking the box **Clear**
        then update.

Note: The links included in email used the web application address which
is defined in the general configuration (see [Onglet Configuration
Affichage](config_common_display.html "Cet onglet permet de personnaliser l'apparence générale de l'application.")).

**Parent topic:** [Configure
Notifications](../glpi/config_notification.html "Notifications are configured from the menu Setup > Notifications ;")
