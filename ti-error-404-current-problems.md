# :ti-error-404: Current problems

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} I'm getting an error message saying **`you don't have the rights to connect to this application`**?

Several parameters can be linked to this message.

* _**No profile associated with the user**_: make sure that each user who logs in has a profile. If this is not the case, your profile [authorisation rule](https://glpi-plugins.readthedocs.io/en/latest/oauthsso/rules.html){:target="\_blank"} may be incorrect or missing.
*   _**Temporary SQL queries**_: SQL queries can saturate the temporary folder if they are too voluminous. The method is to automatically kill certain queries that take too long (thus avoiding excessive temporary storage). Please refer to the command [**`pt-kill`**](https://docs.percona.com/percona-toolkit/pt-kill.html){:target="\_blank" }

    !!! Example "Example of command (to kill all "SELECT" requests that last longer than 61s)" `perl /usr/bin/pt-kill --busy-time 61 --match-info "SELECT|select" --kill --victims all --daemonize`
* _**Problem of rights on GLPI folders**_: make sure that the owner of the GLPI folders is the user of your Web server (apache, www-data, etc.) and that the permissions are correctly set:

```{
find /var/www/glpi(1) -type f -not -perm 640 -exec chmod 644 {} +
find /var/www/glpi(2) -type d -not -perm 750 -exec chmod 755 {} +
chown www-data.(3) /var/www/glpi(4) -R
```

1. :man\_raising\_hand: _depending on your configuration_
2. :man\_raising\_hand: _depending on your configuration_
3. :man\_raising\_hand: _depending on your configuration_
4. :man\_raising\_hand: _depending on your configuration_

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} What can I do about the message telling me that the timezones are not accessible?

If the timezones are not activated, you will not be able to select the country you are in. Follow the [official documentation](https://glpi-install.readthedocs.io/en/latest/timezones.html){:target="\_blank" } to activate your timezones.

!!! Danger Caution: this operation may affect all your other databases. Check the impact before making any changes.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Why do I get the error message **`A link to the SQL server could not be established. Please check your configuration`** ?

This may be due to several parameters:

* Check that the mysql service is started and (re)start it if necessary
* Check the presence of your database and the rights granted to the user of this database
* Check that the GLPI configuration file is present and has sufficient permissions
* Check the logs **`sql-errors.log`** in the **`files`** folder

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Why do I get an error message **`SSL certificate problem: unable to get local issuer certificate`** when I try to activate my subscription key in marketpalce?

This problem comes, usually on Windows, from a missing configuration. PHP has not been configured to integrate the CA certificate shop and therefore cannot check the chain of our certificate when it tries to connect to it.

To remedy this problem :

* Download and extract **`cacert.pem`** following the instructions at https://curl.se/docs/caextract.html
* Save it on your server in a location readable by the Web server user
* In your php.ini, put the location of the **`cacert.pem`** file in the \[curl] and \[openssl] section

```yaml
[curl]
curl.cainfo = "C:\mywebsite\php\extras\ssl\cacert.pem"

[openssl]
openssl.cafile = "C:\mywebsite\php\extras\ssl\cacert.pem"
```

* Restart your web server and your PHP FPM server if necessary
