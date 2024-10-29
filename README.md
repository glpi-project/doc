# :ti-settings: Agent GLPI

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Où télécharger l'agent GLPI ?

L'agent est disponbible via cette [URL](https://github.com/glpi-project/glpi-agent/releases/){:target="\_blank"}

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Quelle URL dois-je configurer sur mon agent ?

Vous pouvez vous référer à la [documentation en ligne](https://glpi-agent.readthedocs.io/en/latest/configuration.html#available-parameters){:target="\_blank"} afin de configurer correctement votre agent.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Quels OS sont compatibles avec l'agent GLPI ?

* Windows
* MacOSX (Intel et Apple Silicon)
* GNU/Linux (distributions principales et basées sur RPM et DEB ou si elles prennent en charge l’empaquetage Snap) Voici la [documentation](https://glpi-agent.readthedocs.io/en/latest/installation/index.html){:target="\_blank"} pour l'installation de l'agent sur vos différents OS.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Où télécharger l'agent GLPI ?

L'agent est disponbible via cette [URL](https://github.com/glpi-project/glpi-agent/releases/){:target="\_blank"}

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Quelle URL dois-je configurer sur mon agent ?

Vous pouvez vous référer à la [documentation en ligne](https://glpi-agent.readthedocs.io/en/latest/configuration.html#available-parameters){:target="\_blank"} afin de configurer correctement votre agent.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Quels OS sont compatibles avec l'agent GLPI ?

* Windows
* MacOSX (Intel et Apple Silicon)
* GNU/Linux (distributions principales et basées sur RPM et DEB ou si elles prennent en charge l’empaquetage Snap)

Voici la [documentation](https://glpi-agent.readthedocs.io/en/latest/installation/index.html){:target="\_blank"} pour l'installation de l'agent sur vos différents OS.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Comment installer l'agent par GPO ?

Un script est disponible afin de déployer vos [agents par GPO](https://glpi-agent.readthedocs.io/en/latest/installation/index.html#large-installations){:target="\_blank"}

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Qu'est ce que Glpi-Agent Monitor ?

Glpi-Agent Monitor permet d'obtenir une interface graphique de votre agent afin de pouvoir effectuer des actions comme forcer un inventaire, consulter le journal de l'agent, ouvrir un ticket, etc. Vous pouver le télécharger grâce à ce [lien](https://github.com/glpi-project/glpi-agentmonitor/releases){:target="\_blank"}

![Alt text](<.gitbook/assets/Agent 1.png>){style="width: 30%;"}

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Comment installer l'agent sur MacOSX ?

Pour vous accompagner dans l'installation de l'agent GLPI sur MacOSX, vous pouvez vous référer à la [documentation officielle](https://glpi-agent.readthedocs.io/en/latest/installation/index.html#macos){:target="\_blank"}

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Comment installer l'agent sur GNU/Linux ?

Pour vous accompagner dans l'installation de l'agent GLPI sur GNU/Linux, vous pouvez vous référer à la [documentation officielle](https://glpi-agent.readthedocs.io/en/latest/installation/index.html#gnu-linux){:target="\_blank"}

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Où se trouve le fichier de configuration de l'agent ?

* Sous **GNU/Linux** : **`/etc/glpi-agent/agent.cfg`**
* Sous **MacOSX** : **`/Applications/GLPI-Agent/etc/agent.cfg`**
* Sous **Windows**, elle se trouve en base de registre ici : **`HKEY_LOCAL_MACHINE\SOFTWARE\GLPI-Agent`**

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Quels sont les paramètres disponibles dans le fichier de configuration de l'agent ?

L'agent GLPI inclut de nombreux paramètres comme l'installation de tâches particulières, l'activation SSL, l'utilisation de mot de passe pour l’authentification HTTP sur le serveur, etc. Vous en trouverez la liste complète [ici](https://glpi-agent.readthedocs.io/en/latest/configuration.html#available-parameters){:target="\_blank"}

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Comment forcer un inventaire ?

**Windows** :

* Si l'agent est installé comme **service**, vous pouvez vous rendre sur **`http://hostname:62354`** et forcer un inventaire
* Si [**Glpi-Agent Monitor**](https://github.com/glpi-project/glpi-agentmonitor/releases){:target="\_blank"} est installé, vous pouvez lancer l'inventaire directement depuis l'interface de monitoring
*   En **`CLI`** :

    ```
      C:\> cd "C:\Program files\GLPI-Agent"
      C:\Program files\GLPI-Agent > glpi-agent --force
    ```

**MacOSX** :

`sudo /Applications/GLPI-Agent.app/bin/glpi-agent --force`

**GNU/Linux and others** :

`sudo glpi-agent --force`

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Quelles tâches sont supportées par l'agent ?

L'agent permet le support d'un certain nombre de tâches dont certaines seront paramétrables avec le plugin GlpiInventory disponible depuis le marketplace :

* Netinventory et NetDiscovery : découverte et inventaire réseau avec support SNMP
* Deploy
* Collect
* ESX
* RemoteInventory (uniquement avec une [configuration spécifique à l'agent GLPI](https://glpi-agent.readthedocs.io/en/latest/tasks/remote-inventory.html){:target="\_blank"} ou avec le [plugin ToolBox de l'agent](https://glpi-agent.readthedocs.io/en/latest/plugins/toolbox-plugin.html){:target="\_blank" })

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Comment activer la "Basic Authentication" vers l'agent GLPI ?

Depuis le dossier de configuraiton de l'agent, identifiez le fichier **`basic-authentication-server-plugin.cfg`**. Copiez ce fichier et renommez l'extention **`.local`**. Sur le fichier renommé, décommentez la ligne **`disabled = no`** Plus d'information dans la [documentation officielle](https://glpi-agent.readthedocs.io/en/latest/plugins/basic-authentication-server-plugin.html#basic-authentication-server-plugin){:target="\_blank"}

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} A quoi sert la **`Toolbox`** ?

La ToolBox est une interface web simple intégrée à l’Agent GLPI qui permet aux utilisateurs de configurer certaines fonctionnalités lorsqu’il n’y a pas de serveur GLPI disponible.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Quelles sont les fonctionnalités de la **`Toolbox`** ?

Voici les principales fonctionnalités fournies par **`ToolBox`** :

* Gérer les tâches d’inventaire (disponible depuis l’Agent GLPI 1.6)
* Gérer les définitions d’informations d’authentification
* Gérer les définitions de plages d’adresses IP
* Gérer les définitions de planification (disponible depuis l’Agent GLPI 1.6)
* Afficher les résultats de l’inventaire léger et modifier éventuellement les champs personnalisés
* Gestion de la définition des remotes (obsolète depuis l’Agent GLPI 1.6)
* Gérer les règles de prise en charge de mib pour ajuster les résultats pour les périphériques réseau SNMP

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Comment installer la **`ToolBox`** de l'agent ?

Dans le dossier de configuration de l'agent :

* Copiez le fichier **`toolbox-plugin.cfg`** et renommez-le **`toolbox-plugin.local`**
* Ouvrez le fichier **`toolbox-plugin.local`** et décommentez la ligne **`disabled = no`**
* Redémarrez le service GLPI
* Connectez vous sur **`localhost:62354`**

Un nouveau menu sera disponible depuis l'interface

![Alt text](<.gitbook/assets/Agent 2.png>){style="width: 30%;"}

Paramétrez votre toolbox, avec Arthur, grâce à notre chaîne [YouTube :ti-brand-youtube:](https://www.youtube.com/watch?v=xNfqKTp9LN8){:target="\_blank"}

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Comment puis-je configurer mon agent pour accéder à mon serveur GLPI en SSL ?

La première chose à vérifier est que vous utilisez bien une URL débutant par https://. Si votre serveur GLPI est correctement configuré et qu’il présente un certificat signé par une autorité de certification publique, vous n’aurez rien à faire de plus. La deuxième chose à vérifier est que votre réseau ne bloque pas les requêtes vers le port 443 de votre serveur GLPI depuis le poste où doit s’exécuter l’agent. Enfin, vous pouvez vérifier le journal de l’agent ou que la sortie d’erreur d’une exécution en ligne de commande rapporte une erreur du genre :

```
[error] [http client] internal response: 500 Can't connect to 192.168.2.3:443 (certificate verify failed), SSL connect attempt failed error:0A000086:SSL routines::certificate verify failed
[error] No supported answer from server at https://192.168.2.3
```

Le mot clé de l’erreur ici est **certificate verify failed**. Dans ce cas, la configuration du support SSL du serveur GLPI peut exploiter une autorité de certification privée. C’est le cas par exemple si votre GLPI est configuré avec un certificat auto-signé. Dans ce cas, l’agent dispose de plusieurs options permettant de configurer le support SSL et chacune de ces options peut être choisie en fonction du contexte d’utilisation. Mais avant d’aller plus loin, vous devez aussi vérifier qu’un anti-virus n’est pas configuré sur le poste pour intercepter les flux réseau SSL. En effet, dans ce cas, l’anti-virus présente généralement un certificat privé auto-signé qui est alors responsable de l’erreur constatée. Vous devrez alors vérifier la documentation de votre anti-virus poursavoir comment régler ce problème, peut-être en incluant l’url du serveur GLPI dans une liste blanche. La première option que vous pouvez utiliser est l’option no-ssl-check. Cette option est à utiliser pour vérifier que le support SSL fonctionne effectivement. Mais attention, cette option ne doit jamais être utilisée en production car elle ne permet pas d’authentifier votre serveur GLPI. L’option no-ssl-check va aussi permettre à l’agent de signaler la valeur que vous pouvez utiliser pour une autre option disponible depuis la version 1.3 de l’agent GLPI : l’option ssl-fingerprint. Voici un exemple de l’information que peut rapporter l’agent avec l’option no-ssl-check activée :

```
[info] [http client] SSL Client warning: Peer certificate not verified
[info] [http client] SSL Client info: Cert-Issuer: '/CN=debian-hosting', Cert-Subject: '/CN=debian-hosting', Version: 'TLSv1_3', Cipher: 'TLS_AES_256_GCM_SHA384'
[info] [http client] SSL server certificate fingerprint: sha256$bae02f72f312d6bc4e6f358181a7beb319224e242b8e370d49a60f659c4a589f
[info] [http client] You can set it in conf as 'ssl-fingerprint' and disable 'no-ssl-check' option to trust that server certificate
```

Dans cet exemple, la ligne SSL server certificate fingerprint: indique que vous pouvez renseigner l’option ssl-fingerprint avec la valeur `sha256$bae02f72f312d6bc4e6f358181a7beb319224e242b8e370d49a60f659c4a589f`. Cette valeur peut être ensuite configurée sur tous vos agents pour qu’ils reconnaissent votre serveur GLPI. Il faut noter que vos agents devront être reconfigurés avec une nouvelle empreinte de certificat SSL si le certificat présenté par le serveur est mis à jour. Sinon la manière historique de configurer la reconnaissance du certificat SSL présenté par le serveur GLPI est de configurer l’option ca-cert-file avec le chemin vers un fichier au format PEM contenant soit le certificat publique présenté par le serveur, soit le certificat publique de l’autorité ayant signé le certificat présenté par le serveur.L’inconvénient de cette option est que vous aurez à créer ou copier ce fichier sur toutes les machines qui en auront besoin. L’option ca-cert-dir peut aussi être exploitée, mais ça mise en oeuvre reste plus complexe car le nom de fichier des certificats que le dossier configuré doit contenir n’est pas évident à déterminer. Depuis la version 1.3 de l’agent GLPI sur windows et MacOSX, l’agent tentera aussi de vérifier s’il trouve le certificat du serveur dans le magasin de certificats du système ou keystore pour windows ou dans le trousseau de clés ou keychain sur MacOSX. Comme demandé par la communauté, depuis l’agent 1.5, l’agent reconnait plusieurs autres sections dumagasin de certificats sur windows. Cette fonctionnalité peut vous permettre de simplifier l’authentification SSL du serveur GLPI sur un grand parc car vous aurez juste à recourir à un déploiement automatique du magasin de certificats sans avoir à utiliser une quelconque option spécifique de l’agent. De plus, en cas de mise à jour du certificat du serveur GLPI, vous n’aurez qu’àdéployer le nouveau certificat et les agents finiront par l’utiliser sans que vous ayez à intervenir.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Comment diagnostiquer un problème de connexion SSL ?

Si vous n’arrivez pas à configurer l’authentification SSL du serveur, vous pouvez utiliser l’option **`--debug`** 2 fois en combinaison avec l’option **`--logger=stderr`** en exécutant l’agent depuis une ligne de commande pour obtenir un diagnostic plus complet du support SSL. Cela pourra probablement vous aider à identifier un problème particulieret l’output obtenu vous sera toujours demandé si vous sollicitez du support. Il faut lancer la commande dans une console administrative et le mieux est d’utiliser des options qui vont forcer l’exécution et limiter les tâches à une seule, ici la tâche Collect. Le but reste uniquement de diagnostiquer un problème de communication SSL avec le serveur GLPI : `glpi-agent --logger=stderr --debug --debug --tasks=collect --force` Voici à quoi pourrait ressembler l’output obtenu :

```
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

Ici, on trouve une ligne contenant **`ok=0 [0] /CN=debian-hosting/CN=debian-hosting`** qui montre que le certificat du serveur est un certificat auto-signé avec un nom d’hôte debian-hosting et une erreur fatal SSL error qui indique certificate verify failed. En conclusion, l’agent refuse la connexion car il n’est pas en mesure d’authentifier leserveur auquel il accède. Et c’est normal quand on utilise une url contenant une ip. Ce genre d’erreur se résout en utilisant une des options de configuration de l’agent. Mais d’autres erreurs pourraient remonter indiquant par exemple que le support SSL du serveur est dépassé ou que la négocation pour déterminer le protocole d’échange à utiliser n’a pas abouti. Ce genre d’erreur peut indiquer un problème à résoudre côté serveur.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Pourquoi mon agent affiche un statut ou une demande d'inventaire inconnu?

Par défaut, le statut de l'agent est affiché en **`inconnu`**. Vous pouvez cliquez sur :ti-refresh: afin de :

* voir le statut
* lancer un inventaire

![Alt text](<.gitbook/assets/agent 4.gif>)

Il peut arriver que le serveur n'ait pas accès au port de l'agent, auquel cas cette fonctionnalité ne sera pas disponible :

* soit dans le cas d'un agent derrière un firewall
* soit le routage ne le permet pas,
* si le port est filtré par le firewall de la machine.

!!! Warning "Cloud" Cette fonctionnalité n'est pas disponbile en Cloud
