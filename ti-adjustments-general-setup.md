# :ti-adjustments: General setup

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} How can I get information on API documentation?

In order to get help on APIs, you can consult the documentation directly from your instance. To do this, in :ti-settings:**`setup`** > :ti-adjustments:**`general`** > **`API`** change the option to **`Yes`** to **`enable API Rest`**. The **`online API documentation`** option will appear. If you get an error message when you click on the documentation, click on **`full access from localhost`** and delete the IPs (or enter the IP of the workstation you are on) in the start and end of IPv4 address range fields.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Do you have a password policy?

Yes, for internal accounts only. As external accounts (LDAP, SSO, etc.) depend on a dedicated server, this policy cannot be applied to these accounts.

It is possible to request that the password :

* requires at least one number,
* requires at least one lower case letter,
* requires at least one symbol,
* be of a minimum length (configurable length),
* expires after a set period of time,
* is deactivated if the password has not been changed for a certain period of time (configurable time limit),

It is also possible to request that an expiry notification be sent to users.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} How to disable password reset by e-mail?

To disable password reset by e-mail, you need to deactivate the **`Password forget`** notification (:ti-settings:**`Setup`** > :ti-bell:**`Notifications`** > :ti-bell:**`Notifications`**).

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Can I increase the password reset time by one day?

When you request a password reset from GLPI, you have 24 hours to carry out the reset. This time cannot be changed. If the 24 hours are exceeded, a new request must be made.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} How do I put GLPI into maintenance mode?

If you have operations to perform that require GLPI to be put into maintenance mode, it is possible to do this in 2 ways:

* In cli (on premise only): in the glpi folder run **`php bin/console maintenance:enable`** (or **`php bin/console maintenance:disable`** to deactivate it)
* In WebUI: in the :ti-settings:**`setup`** > :ti-adjustments:**`general`** menu **`system`** tab

!!! Tip To override maintenance mode, you can access GLPI by adding **`?skipMaintenance=1`** (_https://myinstance.com/index.php?skipMaintenance=1_)

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} How do I purge the GLPI history?

In order not to overload the GLPI database, it is possible to purge the history of certain items:

* general,
* software,
* financial and administrative information,
* users,
* components,
* all sections (purge all history entries)

By default, the "keep all" option is selected. It is possible to keep the history for between 1 and 120 months, either per section or for the whole.

!!! Info History refers to the **`historical`** tab of a GLPI object.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} What are locks used for?

Locks are used to prevent certain information from being modified.

!!! Example You don't want the user field to be modified during automatic inventory feedback.

In this case, you need to activate the locks in :ti-settings:**`setup`** > :ti-adjustments:**`general`** > **`general setup`**. Select **`use locks`** and select the **`profile to be used when locking items`** and the **`types of object to lock`**. To lock a field, simply change it manually. Only the profile you have set up will be able to lock and unlock fields. To unlock them, go to the **`lock`** field of the item in question.

A padlock {style="width: 40%"; .middle} will appear when information is locked.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Is it possible to set up working days for support?

Yes, in :ti-settings:**`setup`** > :ti-adjustments:**`general`** tab **`assistance`** you can set up working days in the **`planning work days`** field.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} How do I change my GLPI theme?

There are several ways to change the theme:

* For individual use: go to :ti-adjustments-alt:**`user settings`** (top right) then in the **`personalization`** tab you can choose the **`color palette`** that suits you.
* For a global setting: go to :ti-settings:**`setup`** > :ti-adjustments:**`general`** > **`default values`**. You can choose the colour palette that suits you and will be applied to all users.

You can also modify the CSS by entity. Go to :ti-headset:**`administration`** > :ti-stack:**`entities`**, select the entity you want, then **`UI customization`**. Indicate **`Yes`** in the **`enable CSS customization`** field and paste your CSS code in the dedicated area.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} How do I assign a default language for all users?

To change the default language, go to :ti-settings:**`setup`** > :ti-adjustments:**`general`** > **`default values`**. A **`default language`** field is available in the **`personalization`** section. This change is valid for all users. !!! Info Users will still be able to change their language if they wish from their profile.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} How do I retrieve my instance's UUID?

Valid for on-premise instances only:

In :ti-settings:**`setup`** > :ti-adjustments:**`General`** click on **`see what would be sent`**. This is the 1st value that will appear:

```{
"glpi": {
"uuid": "hQ6ZuLpydjmaTuUCqnaqE6tTdsksio84sdfV8Kb1",
"version": "10.0.10",
}
```

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} How can I increase the number of search results per page?

In :ti-settings:**`setup`** > :ti-adjustments:**`general`** > **`general setup`**, adjust the **`Default search results limit (page)`** as desired.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} How can I deactivate the global search?

In :ti-settings:**`configuration`** > :ti-adjustments:**`general`** > **`general configuration`**, put **`no`** to **`global search`**.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Can I activate/deactivate the option to **"remember me"\`**?

In :ti-settings:**`configuration`** > :ti-adjustments:**`general`** > **`general configuration`**, at the bottom of the screen, click on deactivate or indicate in days the possible retention of the identifier.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Can I configure closing days?

It is possible to configure closing days (public holidays) from :ti-settings:**`configuration`** > :ti-edit:**`titles`**, enter **`closing`** and click on :ti-calendar-x:**`closing periods`**. A procedure is available{:target="\_blank"} to help you set them up.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Can I increase the password reset time to one day?

When you request a password reset from GLPI, you have 24 hours to reset your password. This time cannot be changed. If the 24 hours are exceeded, a new request must be made. A procedure is available{:target="\_blank"} to help you set them up.

#### :ti-help-circle-filled:{style="color: gray; font-size: 23px;" .middle} Can we synchronize a calendar with GLPI?

GLPI integrates a CalDAV server, which allows sharing of a GLPI calendar externally. It is also possible to modify it from both places. It's native via the link I provided previously.

* To do this, go to :ti-headset:**`Assistance`** > :ti-calendar-time:**`Planning`**
* Click on :ti-dots-vertical:
* Then click on "**`Copy CalDAV URL to clipboard`**"
* Paste this link into your email tool

![alt text](.gitbook/assets/calendar.png){style="width: 40%"}

Copying a link from an external email to GLPI (Outlook calendar type) is not native. You must use a third-party tool (outside the scope of Teclib) such as https://caldavsynchronizer.org.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} How can I avoid importing duplicates into GLPI?

If you don't want 2 items to have the same serial number, or 2 users to have the same ID, field uniqueness will help you avoid these duplicates. To configure it, you can follow this procedure{:target="\_blank"}.
