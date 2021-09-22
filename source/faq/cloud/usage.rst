Usage
-----

How can I update GLPI on my cloud platform?
*******************************************

Currently, you cannot update your instance by yourself.

If you want to use the latest version, use `support request form <https://portal.glpi-network.com/cloud-support>`_ to ask our team to update your instance.

How to find my GLPI Network Cloud public IP address?
****************************************************

Your GLPI Netwok Cloud instance has a static IP. To know it and configure your firewall, for example, run the following command in a terminal:

For GNU/Linux:

.. code-block:: shell

   dig +short myUrl.with.glpi-network.cloud

For Windows:

.. code-block:: doscon

   nslookup myUrl.with.glpi-network.cloud

Can I configure my instance and contact service provider if needed?
*******************************************************************

Yes.

You can discover how GLPI works and configure it yourself, then contact an official partner-integrator if you encounter difficulties or if you want to speed up the configuration of your instance by being accompanied by a professional.

Consult our partners on this page: https://glpi-project.org/partners/

Can I add a plugin not included in your offer?
**********************************************

To do this, you must first request it from our support service, specifying the name of the desired plugin, its download URL and its version.

You cannot deploy this plugin yourself from your customer account, or from your GLPI instance, because we need to validate several things:

* that the plugin you want is well developed by Teclib' or by one of our official partners trained for plugin development for GPLI;
* that it respects the established coding standards;
* that it is maintained over time (because its GLPI compatibility is not included in our unlimited MOC support/ in-service support package);
* and that it does not disturb the performance of the GLPI modules (does not cause a bug).

After studying your request, you will receive a confirmation indicating the availability of the plugin on your instance or an explanation why it has not passed our validation test.

In case of refusal, we will offer you an alternative solution to cover your need (another validated plugin, native functionality, additional development, etc.).

Why are my automatic actions not triggered at night / weekends?
***************************************************************

In most cases, this problem comes from the execution mode of the automatic action.

In `GLPI` mode, it is normal for your actions to have trigger problems at night or weekend, because those actions are only triggered by user activity in GLPI interface.

In `CLI` mode, however, automatic actions will be triggered by our internal system, regardless of activity in GLPI.

`CLI` mode is therefore recommended, it is activated by default on paid instances (triggering every 15 minutes), if you are in a test period, do not hesitate to contact us, we can activate it on demand.

I see an overall slowdown in my GLPI Network Cloud instance
***********************************************************

If you are experiencing slowdown issues with GLPI, here is the list of causes that occurs regularly:

* SMTP email notifications

   When creating a ticket, if your `Notifications` are activated for this event (`New ticket`), GLPI will send an email without going through the Notification queue. Therefore, if the connection between GLPI and your SMTP takes a little time (network latency / slowdown, overload of your SMTP server), then the waiting time after opening your ticket may become longer.

   Try to optimize the load on your SMTP server, if you do not want to authenticate your emails as much as possible, you can send your email notifications with the default mode "PHP" (your message will be sent via SendGrid, limited to 500 per day).

   We can also offer you to switch to private Cloud offer to configure local custom SMTP. Do not hesitate to contact us.

* Too many entities

   Too many entities can slow down GLPI, especially if rules are configured for each entity. It is recommended to have less entities possible (in accordance with real need). Do not hesitate to contact our network of partners to be supported and advised in process of correct integration & configuration of your GLPI.

* Too complex search filter

   The GLPI search engine can be used to manage very complex searches, but this can result in slowing down the platform for the user who launches the request, depending on the length of request! Also be careful not to activate alerts triggered for important requests.

* Too many items displayed per page

   A user can modify the number of items displayed per page and slow down their access to the platform caused by the size of the list to be displayed.

* Incorrect configuration of one or more automatic actions

   Check the frequency and the execution mode (`CLI` recommended) of certain actions! Actions that process a lot of data can slow the platform down.

* Ongoing maintenance operations

   Certain maintenance operations that we carry out during non-working hours (8 p.m. - 6 a.m. GMT Paris) can slow down or make your instance unavailable. Do not hesitate to consult the page https://status.glpi-network.cloud to see if maintenance operation is in progress.

If you think your problem is elsewhere, please contact us via the `Support` link in your customer area.

Can I activate external authentication?
***************************************

Yes, it is possible, you can use any of the following tools:

* Authentication server like LemonLDAP::NG, Shibboleth, etc;
* CAS;
* X509 certificate;
* oAuth (with oAuth plugin).

.. note::

   GLPI Network Cloud offer does not allow compatibility with following tools:

   * basic Apache authentication;
   * Windows domain authentication.

You can configure your authentication in the `Setup -> Authentication` menu.

For authentication via oAuth, make sure that oAuth plugin is installed and activated on your instance in `Setup -> Plugins`.

Refer to :doc:`setup oAuth authentication <../network/authentication/sso>` FAQ entry to configure OAuth.