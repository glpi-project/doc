# :ti-error-404: Problèmes courants

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} J'ai un message d'erreur m'indiquant **`vous n'avez pas les droits pour vous connecter à cette application`** ?

Plusieurs paramètres peuvent être liés à ce message.

* _**Pas de profil associé à l'utilisateur**_ : assurez vous que chaque utilisateur qui se connecte dispose bien d'un profil. Si ce n'est pas le cas, votre [règle d'habilitation](https://glpi-plugins.readthedocs.io/en/latest/oauthsso/rules.html){:target="\_blank" } de profil est peut être erronée ou manquante.
*   _**Requêtes SQL temporaires**_ : les requêtes SQL peuvent saturer le dossier temporaire si elles sont trop volumnineuses. La méthode est de **`kill`** automatiquement certaines requêtes qui prennent trop de temps (évitant ainsi un stockage temporaire trop important). Veuillez vous référer à la commande [**`pt-kill`**](https://docs.percona.com/percona-toolkit/pt-kill.html){:target="\_blank"}

    !!! Example "Exemple de commande (permettant de tuer toutes les requêtes "SELECT" qui durent plus de 61s)" `perl /usr/bin/pt-kill --busy-time 61 --match-info "SELECT|select" --kill --victims all --daemonize`
* _**Problème de droits sur les dossiers GLPI**_ : assurez vous que le propriétaire des dossiers GLPI soit bien l'utilisateur de votre serveur Web (apache, www-data, etc.) et que les autorisations soient correctement paramétrées sur les dossiers de votre serveur GLPI :

```{
# find /var/www/glpi(1) -type f -exec chmod 644 {} +
# find /var/www/glpi(2) -type d -exec chmod 755 {} +
# chown www-data.(3) /var/www/glpi(4) -R
```

1. :man\_raising\_hand: _à adapter selon votre configuration_
2. :man\_raising\_hand: _à adapter selon votre configuration_
3. :man\_raising\_hand: _à adapter selon votre configuration_
4. :man\_raising\_hand: _à adapter selon votre configuration_

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Comment remédier au message m'indiquant que les timezones ne sont pas accessibles ?

Si les timezones ne sont pas activées, vous ne pourrez pas sélectionnez le pays dans le quel vous êtes. Suivez la [documentation officielle](https://glpi-install.readthedocs.io/en/latest/timezones.html){:target="\_blank"} afin d'activer vos timezones.

!!! Danger Attention car cette manipulation peut affecter les autres bases de données. Vérifiez auparavant l'impact avant de procéder aux modifications

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Pourquoi ai-je le message d'erreur **`Le serveur Mysql est inaccessible. Vérifiez votre configuration`** ?

Cela peut être dû à plusieurs paramètres :

* Vérifier que le service mysql est bien démarré et (re)démarrez le au besoin
* Vérifier la présence de votre base de données ainsi que les droits accordés à l'utilisateur de ladite base
* Vérifier que le fichier de configuration de GLPI soit présent et dispose bien des autorisations suffisantes
* Consulter les logs **`sql-errors.log`** dans le dossier **`files`**

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Pourquoi un message d'erreur **`SSL certificate problem : unable to get local issuer certificate`** quand je tente d'activer ma clé de souscription dans le marketpalce ?

Ce problème provient, généralement sous Windows, d'une configuration manquante. PHP n'a pas été configuré pour qu'il intègre le magasin des certificats CA et ne peut donc pas vérifier la chaîne de notre certificat quand il tente de s'y connecter.

Pour remédier à ce problème :

* Téléchargez et extrayez **`cacert.pem`** en suivant les instructions à https://curl.se/docs/caextract.html
* Enregistrez-le sur votre serveur à un endroit lisible par l'utilisateur du serveur Web
* Dans votre php.ini, mettez l'emplacement du fichier **`cacert.pem`** dans la section \[curl] et \[openssl]

```yaml
[curl]
curl.cainfo = "C:\mywebsite\php\extras\ssl\cacert.pem"

[openssl]
openssl.cafile = "C:\mywebsite\php\extras\ssl\cacert.pem"
```

* Redémarrez votre serveur web et votre serveur PHP FPM le cas échéant
