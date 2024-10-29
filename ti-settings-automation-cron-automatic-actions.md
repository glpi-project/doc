# :ti-settings-automation: Cron / automatic actions

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} How can I automatically synchronise my LDAP users?

In order to automatically synchronise your users from an LDAP, you can add a line to your crontab (the one for the user who reads the web files, Apache, www-data, etc.)

**`0 * * * * www-data cd /var/www/glpi/ && /usr/bin/php bin/console glpi:ldap:synchronize_users --no-interaction >/dev/null 2>&1`**

You can add options to this command to synchronise disabled accounts as well, for example:

**`0 * * * * www-data cd /var/www/glpi/ && /usr/bin/php bin/console glpi:ldap:synchronize_users --no-interaction -d 3 >/dev/null 2>&1`**

If you want to perform several actions, we advise you to add as many LDAP commands to your cron as you need (one command for synchronising accounts, another for deactivating accounts, etc.).

!!! Tip "You can adapt your LDAP search:" - 0: Preserve - 1: Put in trashbin - 2: Withdraw dynamic authorizations and groups - 3: Disable - 4: Disable + Withdraw dynamic authorizations and groups

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Does the cron specified on my on-premise instance take into account the LDAP filter specified in the connection filter of my configuration?

Yes, if you don't specify `--ldap-filter` in your command line, GLPI takes the sync field **+** the condition indicated in the connection filter to perform the search.

_Example_:

* Synchronisation field configured = `entryuuid`.
* Connection filter configured = `(objectClass=inetOrgPerson)`
* Resulting LDAP filter on command line = `& (entryuuid=*) (objectClass=inetOrgPerson))`

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Why don't the automatic actions work?

If you are in the Cloud, you can contact support so that the checks can be made on the server side: :ti-mail: [contact form](https://support.teclib.com/marketplace/formcreator/front/formdisplay.php?id=100) Also check that the **`execution mode`** is set to **`CLI`** from :ti-settings:**`setup`** > :ti-settings-automation:**`automatic actions`** for the action in question. If you are on-premise, check that your cron is active and correctly configured: :ti-settings-automation: [cron et automatics actions](https://glpi-user-documentation.readthedocs.io/fr/master/modules/configuration/crontasks.html)

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Why doesn't a particular automatic action work?

For an automatic action to work, it must be set up correctly. From :ti-settings:**`setup`** > :ti-settings-automation:**`automatic actions`**, select the action concerned. Check that it is **`scheduled`** in **`CLI`** mode.

* **GLPI**: based on PHP (automatic actions are only triggered when you are logged in)
* **CLI**: cron-based Click **`execute`** if you want to run the action now

![Alt text](<.gitbook/assets/cron 1.png>)

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} What is the difference between **`Logs`**, **`PurgeLogs`** and **`Circularlogs`** actions?

* **`Circularlogs`** : Removes entries in logs in the files/\_log folder that are older than a certain number of days which is configurable within the action form itself.
* **`logs`** : Cleans old automatic action log entries. The amount of time to keep log entries can be changed for each automatic action.
* **`PurgeLogs`** : Deletes historical data entries that are older than a certain amount of time. The amount of time can only be changed globally for all Entities, but some of the types of entries can be configured with different durations.
