How to configure OAUTH authentication with Azure AD?
----------------------------------------------------

Azure website
*************

First, register your app with your Azure Active Directory (Azure AD) host. This will provide you with an App ID for your app and allow it to receive tokens.

* Go to `Azure portal <https://portal.azure.com/>`_.
* Choose your Azure AD tenant by selecting your account in the upper right corner of the page. Then select the `Change directory` navigation bar, then the desired host.

   Skip this step if you only have one Azure AD tenant under your account or if you have already selected one.

* In the Azure portal, find and select `Azure Active Directory`.
* From the `Active Directory` left menu, select `App registrations`, then `New registration`.
* Follow the steps and create an app:

   * The application name gives a description of your application to end users.
   * Under Supported Account Types, select one of the first two options (the third option will not work with GLPI)

      * Accounts in this organization directory only and Microsoft person accounts.
      * Accounts in an organization directory (any Azure AD directory - Multi-tenant)

   * Provide the redirect URI. This can be found in GLPI directly in the `Configuration -> General -> Oauth` menu. If this menu does not exist, the plugin is not installed and/or activated. Please refer to the next point.

GLPI OAUTH configuration
************************

* After registration is complete, Azure AD assigns a unique customer identifier to your app (the `App ID`).
* Copy this value into the GLPI Customer ID field
* You must then generate the `client secret` from the `Certificates & secrets` menu and `New client secret` then paste this last value in the GLPI `client secret` key field
* To find your app in the Azure portal, select `App registrations`, and then `View all apps`.