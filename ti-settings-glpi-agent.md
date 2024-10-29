# :ti-settings: GLPI agent

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Where can I download the GLPI agent?

The agent is available via this [URL](https://github.com/glpi-project/glpi-agent/releases/){:target="\_blank"}

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Which URL should I configure on my agent ?

You can refer to the [online documentation](https://glpi-agent.readthedocs.io/en/latest/configuration.html#available-parameters){:target="\_blank"} to configure your agent correctly.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Which OS are compatible with the GLPI agent?

* Windows
* MacOSX (Intel and Apple Silicon)
* GNU/Linux (main distributions and distributions based on RPM and DEB or if they support Snap packaging)

Here is the [documentation](https://glpi-agent.readthedocs.io/en/latest/installation/index.html){:target="\_blank"} for installing the agent on your various OS.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} How do I install the agent using GPO?

A script is available to deploy your [agents via GPO](https://glpi-agent.readthedocs.io/en/latest/installation/index.html#large-installations){:target="\_blank"}

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} What is Glpi-Agent Monitor?

Glpi-Agent Monitor allows you to have a graphical interface of your agent in order to be able to carry out actions like forcing an inventory, consulting the log of the agent, opening a ticket. You can download it here [link](https://github.com/glpi-project/glpi-agentmonitor/releases){:target="\_blank"}

![Alt text](<.gitbook/assets/Agent 1.png>){style="width: 30%;"}

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} How do I install the agent on MacOSX?

To help you install the GLPI agent on MacOSX, you can refer to the [official documentation](https://glpi-agent.readthedocs.io/en/latest/installation/index.html#macos){:target="\_blank"}

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} How do I install the agent on GNU/Linux?

To help you install the GLPI agent on GNU/Linux, please refer to the [official documentation](https://glpi-agent.readthedocs.io/en/latest/installation/index.html#gnu-linux){:target="\_blank"}

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Where can I find the agent configuration file?

* Under **GNU/Linux** : **`/etc/glpi-agent/agent.cfg`**
* Under **MacOSX** : **`/Applications/GLPI-Agent/etc/agent.cfg`**
* Under **Windows**, it can be found from registry there: **`HKEY_LOCAL_MACHINE\SOFTWARE\GLPI-Agent`**

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} What settings are available in the agent configuration file?

The GLPI agent includes many parameters such as the installation of particular tasks, the activation of SSL, the use of passwords for HTTP authentication on the server, etc. You'll find the full list [here](https://glpi-agent.readthedocs.io/en/latest/configuration.html#available-parameters){:target="\_blank"}

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} How do I force an inventory?

**Windows** :

* If the agent is installed as a **service**, you can go to **`http://hostname:62354`** and force an inventory
* If [**Glpi-Agent Monitor**](https://github.com/glpi-project/glpi-agentmonitor/releases){:target="\_blank"} is installed, you can launch the inventory directly from the monitoring interface.
*   By **`CLI`** :

    ```
      C:\> cd "C:\Program files\GLPI-Agent" "C:\Program files\GLPI-Agent
      C:\Program filesGLPI-Agent > glpi-agent --force
    ```

**MacOSX** :

`sudo /Applications/GLPI-Agent.app/bin/glpi-agent --force`

**GNU/Linux and others**

`sudo glpi-agent --force`

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Which tasks are supported by the agent?

The agent supports a certain number of tasks, some of which can be configured from GlpiInventory plugin available in MarketPlace:

* Netinventory and NetDiscovery: network discovery and inventory with SNMP support
* Deploy
* Collect
* ESX
* RemoteInventory (only with a [dedicated configuration in GLPI Agent](https://glpi-agent.readthedocs.io/en/latest/tasks/remote-inventory.html){:target="\_blank"} or with the [GLPI Agent ToolBox plugin](https://glpi-agent.readthedocs.io/en/latest/plugins/toolbox-plugin.html){:target="\_blank"})

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} How do I activate Basic Authentication toward GLPI Agent?

From the agent configuration folder, identify the **`basic-authentication-server-plugin.cfg`** file. Copy this file and rename the extension **`.local`**. On the renamed file, uncomment the line **`disabled = no`**. More information in the [official documentation](https://glpi-agent.readthedocs.io/en/latest/plugins/basic-authentication-server-plugin.html#basic-authentication-server-plugin){:target="\_blank"}

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} What is the purpose of the **`Toolbox`**?

The ToolBox is a simple web interface built into the GLPI Agent that allows users to configure certain features when there is no GLPI server available.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} What are the functionalities of the **`Toolbox`** ?

Here are the main features provided by **`ToolBox`** :

* Manage inventory tasks (available since GLPI Agent 1.6)
* Manage authentication information definitions
* Manage IP range definitions
* Manage scheduling definitions (available from GLPI Agent 1.6)
* Display light inventory results and modify custom fields if required
* Manage remotes definition (obsolete since GLPI Agent 1.6)
* Manage mib support rules to adjust results for SNMP network devices

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} How do I install the agent **`ToolBox`**?

In the agent configuration folder :

* Copy the file **`toolbox-plugin.cfg`** and rename it **`toolbox-plugin.local`**
* Open the file **`toolbox-plugin.local`** and uncomment the line **`disabled = no`**.
* Restart the GLPI service
* Connect to **`localhost:62354`**

A new menu will be available from the interface

![Alt text](<.gitbook/assets/Agent 2.png>){style="width: 30%;"}

Set up your toolbox with Arthur thanks to our channel [YouTube :ti-brand-youtube:](https://www.youtube.com/watch?v=xNfqKTp9LN8){:target="\_blank"}

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} How can I configure my agent to access my GLPI server using SSL?

The first thing to check is that you are using a URL starting with https://. If your GLPI server is correctly configured and has a certificate signed by a public certification authority, you won't need to do anything more. The second thing to check is that your network is not blocking requests to port 443 of your GLPI server from the workstation where the agent is to be run. Finally, you can check the agent's log or check that the error output from a command-line run reports an error like this:

```
[error] [http client] internal response: 500 Can't connect to 192.168.2.3:443 (certificate verify failed), SSL connect attempt failed error:0A000086:SSL routines::certificate verify failed
[error] No supported answer from server at https://192.168.2.3
```

The error keyword here is certificate verify failed. In this case, the SSL support configuration of the GLPI server may use a private certification authority. This is the case, for example, if your GLPI is configured with a self-signed certificate. In this case, the agent has several options for configuring SSL support and each of these options can be chosen according to the context of use.But before going any further, you should also check that an anti-virus is not configured on the computer to intercept SSL network flows. In this case, the anti-virus generally presents a self-signed privatecertificate, which is responsible for the error. You will need to check your anti-virus documentation to find out how to resolve this problem, perhaps by including the GLPI server URL in a white list. The first option you can use is the no-ssl-check option. This option should be used to check that SSL support is actually working. However, this option should never be used in production as it does not authenticate your GLPI server. The no-ssl-check option will also allow the agent to indicate the value that you can use for another option available since version 1.3 of the GLPI agent: the ssl-fingerprint option. Here is an example of the information the agent can report with the no-ssl-check option enabled:

```
[info] [http client] SSL Client warning: Peer certificate not verified
[info] [http client] SSL Client info: Cert-Issuer: '/CN=debian-hosting', Cert-Subject: '/CN=debian-hosting', Version: 'TLSv1_3', Cipher: 'TLS_AES_256_GCM_SHA384'
[info] [http client] SSL server certificate fingerprint: sha256$bae02f72f312d6bc4e6f358181a7beb319224e242b8e370d49a60f659c4a589f
[info] [http client] You can set it in conf as 'ssl-fingerprint' and disable 'no-ssl-check' option to trust that server certificate
```

In this example, the line SSL server certificate fingerprint: indicates that you can set the ssl-fingerprint option to the value `sha256$bae02f72f312d6bc4e6f358181a7beb319224e242b8e370d49a60f659c4a589f`. This value can then be configured on all your agents so that they recognise your GLPI server. Note that your agents will have to be reconfigured with a new SSL certificate fingerprint if the certificate presented by the server is updated. Alternatively, the historical way of configuring recognition of the SSL certificate presented by the GLPI server is to configure the ca-cert-file option with the path to a file in PEM format containing either the public certificate presented by the server or the public certificate of the authority that signed the certificate presented by the server.The disadvantage of this option is that you will have to create or copy this file on all the machines that need it. The ca-cert-dir option can also be used, but its implementation is more complex because it is not easy to determine the filename of the certificates that the configured folder should contain. Since version 1.3 of the GLPI agent on Windows and MacOSX, the agent will also try to check whether it finds the server certificate in the system certificate shop or keystore on Windows or in the keychain on MacOSX. As requested by the community, since agent 1.5, the agent recognises several other sections of the certificate shop on Windows. This feature can allow you to simplify SSL authentication of the GLPI server on a large estate, as you will just have to resort to automatic deployment of the certificate shop without having to use any specific option in the agent. What's more, if the GLPI server certificate is updated, all you have to do is deploy the new certificate and the agentswill end up using it without you having to intervene.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} How do I diagnose an SSL connection problem?

If you are unable to configure the server's SSL authentication, you can use the **`--debug`** option twice in combination with the **`--logger=stderr`** option when running the agent from a command line to get a more complete diagnosis of SSL support. This will probably help you identify a particular problem and you will always be asked for theoutput if you request support.

You need to run the command from an administrative console and it's best to use options that will force execution and limit the tasks to a single one, in this case the Collect task. The sole aim is to diagnose an SSL communication problem with the GLPI server: `glpi-agent --logger=stderr --debug --debug --tasks=collect --force`

This is what the output might look like:

```...
DEBUG: .../IO/Socket/SSL.pm:846: call Net::SSLeay::connect
DEBUG: .../IO/Socket/SSL.pm:3690: * TLSv1.3 (IN), TLS handshake, Encrypted Extensions (8)
DEBUG: .../IO/Socket/SSL.pm:3690: * TLSv1.3 (IN), TLS handshake, Certificate (11)
DEBUG: .../IO/Socket/SSL.pm:2857: ok=0 [0] /CN=debian-hosting/CN=debian-hosting
DEBUG: .../IO/Socket/SSL.pm:3690: * TLSv1.3 (OUT), TLS alert, Unknown alert (560)
DEBUG: .../IO/Socket/SSL.pm:849: done Net::SSLeay::connect -> -1
DEBUG: .../IO/Socket/SSL.pm:852: SSL connect attempt failed
DEBUG: .../IO/Socket/SSL.pm:852: local error: SSL connect attempt failed error:0A000086:SSL routines::certificate verify failed
DEBUG: .../IO/Socket/SSL.pm:855: fatal SSL error: SSL connect attempt failed error:0A000086:SSL routines::certificate verify failed
DEBUG: ...perl/Net/HTTPS.pm:67: ignoring less severe local error 'IO::Socket::IP configuration failed', keep 'SSL connect attempt failed error:0A000086:SSL routines::certificate verify failed'
DEBUG: .../IO/Socket/SSL.pm:3062: free ctx 94133007189808 open=94133007189808
DEBUG: .../IO/Socket/SSL.pm:3066: free ctx 94133007189808 callback
DEBUG: .../IO/Socket/SSL.pm:3073: OK free ctx 94133007189808
[error] [http client] internal response: 500 Can't connect to 192.168.2.3:443 (No such file or directory), SSL connect attempt failed error:0A000086:SSL routines::certificate verify failed
[error] No supported answer from server at https://192.168.2.3
```

Here we find a line containing **`ok=0 [0] /CN=debian-hosting/CN=debian-hosting`** which shows that the server certificate is a self-signed certificate with a debian-hosting host name and a fatal SSL error which indicates certificate verify failed. In conclusion, the agent refuses the connection because it is unable to authenticate the server it isaccessing. And this is normal when using a url containing an ip. This type of error can be resolved by using one of the agent's configuration options. However, other errors may come up indicating, for example, that the server's SSL support is out of date or that the negotiation to determine which exchange protocol to use has not been successful. This type of error may indicate a problem to be resolved on the server side.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Why is my agent displaying an unknown status or inventory request?

By default, the agent status is displayed as **`unknown`**. You can click on :ti-refresh: to :

* view the status
* launch an inventory

![Alt text](<.gitbook/assets/agent 4.gif>)

It may happen that the server does not have access to the agent's port, in which case this functionality will not be available:

* either in the case of an agent behind a firewall
* or the routing does not allow it
* if the port is filtered by the machine's firewall

!!! Warning "Cloud" This feature is not available in Cloud
