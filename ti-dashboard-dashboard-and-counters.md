# :ti-dashboard: Dashboard and counters

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} How to create a dashboard?

It is possible to create a dashboard from scratch, or to duplicate a dashboard and modify it later. A procedure{:target="\_blank"} is available to help you.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Is it possible to change the formatting of numbers in dashboards (1000 instead of 1K)?

This is not possible. This formatting is necessary to avoid having too large numbers on the dashboards (space issue). However, it is possible to see the "real" value by hovering over the number.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Why don't the counters appear on my home page?

If your counters are not visible, this may be due to your default entity. If this is not configured, the root entity is taken by default. If you do not have access to this entity from your profile, the counters will not be visible. From :ti-shield-check: **`administration`** > :ti-user: **`users`**, set the **`default entity`** for the user concerned.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} How do I share a dashboard?

Depending on your profile permissions, you can share a dashboard. Simply click on the :ti-share: icon. You can then share it with an entity, a group, a user or a profile.

You can share a dashboard with a direct link (public link for monitoring for example) or with a iframe (for integration in document like HTML)

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} What are filters for and how do I set them up?

Dashboard filters are used to display specific information about a GLPI object.

!!! Example Your dashboard shows all assigned tickets, but you only want to see tickets assigned to the infrastructure group.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} How do I add a filter to my dashboard?

When you edit your dashboard, an option appears:ti-plus:**`add a filter`**. Click on this option and select the filter that suits you best

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Can I add dashboards to other web pages?

Yes. Thanks to the :ti-share:**`share`** of dashboards, you can copy the iframe which can be inserted into other web pages.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} How do I make a dashboard private?

To prevent other technicians or administrators from seeing your dashboard, you can make it private using the :ti-share: icon. This does not prevent you from sharing it with other profiles, entities, etc.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Can I display dashboards in full screen mode?

Yes, you can use the :ti-maximize: icon to display your dashboard full screen.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Can I change the chart colours?

No. These values are set by default and cannot be changed.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Can I change the colours of the tiles?

Yes. When you add a new tile, the **`background colour`** field allows you to change it to the colour of your choice.

![Alt text](<.gitbook/assets/Dashboard 1.png>){style="width: 50%"}

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Can I clone a dashboard?

Yes, using the :ti-copy: icon, you can clone and then modify it. The new dashboard will have the same name with the **`copy`** and you will be able to modify it afterwards.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} What is a mini-dashboard?

Mini-dashboards are reduced dashboards present in the header of a GLPI object:

![Alt text](<.gitbook/assets/Dashboard 2.png>)

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Can I enable/disable mini-dashboards?

Yes, you can enable/disable them from :ti-settings:**`setup`** > :ti-adjustments:**`general`**, tab **`default values`**. In the **`dashboards`** insert. Select the option that suits you in **`default for tickets (mini dashboard)`**.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Can I enable/disable mini-dashboards for a particular person?

Yes. From the user record in question, go to **`setup`** > **`dashboards`** > **`default for tickets (mini-dashboard)`**, enable or disable the mini-dashboards.
