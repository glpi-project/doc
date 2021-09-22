Automatic inventory
-------------------

Is it possible to run FusionInventory from the cloud to the agents in my fleet?
*******************************************************************************

Currently, no.

From your GLPI Cloud instance> to one of your inventory agents installed on your fleet, this is not currently possible.

Our R&D team is developing an "intermediate" GLPI agent who will be the switch between your GLPI Cloud instance and the agents on your local network (functioning as a reverse-proxy). Then it will be sufficient for this intermediary agent (and only it) to be reachable from the Cloud (routed public IP, NAT rule, etc.), and it will be responsible for recovering local inventories on demand and transmitting them to your GLPI Cloud instance.

We use FusionInventory agents, is it possible to continue using them with our local hosted machines?
****************************************************************************************************

To continue to have reports from your FusionInventory agents, you need to change the URL of the server to which the agents send their inventories and verify your machines can contact this URL. The new server URL to be indicated will be of this type:

::

   https://mycompany.withX.glpi-network.cloud/plugins/fusioninventory/

There are several solutions for this:

* For Linux agents: modify the URL in the configuration (``etc/fusioninventory/agent.cfg``) and restart the service
* For Windows agents: re-deploy the agent by forcing a reconfiguration with the new URL or modify the entry in the registry and restart the FusionInventory service.

How to inventory an Android smartphone on my GLPI Network Cloud platform?
*************************************************************************

This requires FusionInventory plugin installed and activated (in the `Configuration -> Plugins` menu).

Plugin Agent Config
^^^^^^^^^^^^^^^^^^^

In GLPI, in your list of Plugins, you will find Agent config.

This plugin allows you to facilitate the inventory of mobiles by configuring in advance the values to enter to configure the agent.

This plugin will allow you to be scanned via QRcode or a DeepLink to quickly integrate your mobile into your inventory.

Once the plugin installed and activated, go to the configuration.

In the Configuration tab of the GLPI Agent, we must configure at least:

* The URL of server, example: `mon.glpi.fr/fusioninventory/`
* Identifier
* Password


GLPI agent for Android
^^^^^^^^^^^^^^^^^^^^^^

The GLPI agent is an application available on Google Play. Once downloaded and installed on your smartphone, we will be able to configure the agent to start inventory of the equipment.

* In the application, go to the settings from the menu
* Open the server list
* In order to configure new server, click on the `Add server` button.

You will be redirected to the server configuration page asking you to enter all the authentication data.

Thanks to the Agent config plugin configured previously, we do not need to enter information because the features of QRcode and DeepLink allow you to fill in the fields automatically.

QRcode
^^^^^^

* For the QRcode, find the icon. By clicking on it, you will arrive on the scan interface.
* Scan the QRcode available on your GLPI web interface on the home page.
* Save the configuration entered automatically to validate the server.


DeepLink
^^^^^^^^

* Go to your GLPI via web browser on your smartphone.
* In the GLPI Agent tab of your GLPI home page, click the Configuration link for GLPI Agent.
* Your smartphone will ask you with which application you want to open this link, choose the GLPI Agent application.
* You just have to save the configuration to add the server.
