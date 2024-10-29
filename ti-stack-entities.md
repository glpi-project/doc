# :ti-stack: Entities

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} What is an entity?

**Definition**: organisational object used to partition the view and scope of action of users.

Entities are used to :

* Partition the view of users who connect to GLPI.
* Show each user only the things they need to see.
* Manage administration delegations.

!!! Examples of breakdowns By budget entity: the equipment purchased in each entity is well separated. Most of the time for each IT department, a separate entity. **Important**: GLPI can be used with a single entity.

!!! Example of hierarchy ![Alt text](<.gitbook/assets/entity 1.png>){style="width: 40%"}

!!! Info "Important to know" GLPI does not limit the creation of entities. The more you increase the number of entities : - The more complex the system becomes (rules, failover, etc). - The longer it takes to execute requests.

Administrators often want entities to meet a need, whereas other concepts requiring less complexity are there to meet it:

* Group: to assign equipment/tickets to a department or a team of people.
* Location: to determine the geographical position of the equipment/person.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Where can i manage entities?

* is done from the menu :ti-shield:**`Administration`** > :ti-stack:**`Entities`** ;
* the **root entity cannot be deleted**, only renamed.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} how to navigate in the Entities?

Click on the Root Entity (Tree) link:

![Alt text](<.gitbook/assets/entity 2.png>)

A menu appears, allowing you to restrict GLPI's view :

* either on an entity by clicking on its name.
* or a tree structure under this entity by clicking on the double green arrow to the right of the entity name.

![Alt text](<.gitbook/assets/entity 3.png>){style="width: 45%"}

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Why can i add new sub-entity?

As soon as there is at least one entity, GLPI adds a "Sub-entity" field to certain objects.

By using this field, you can choose whether the object has a scope:

* Local: it will only be visible in the entity in which it is located.
* Global: as Local with visibility in its sub-entities.

!!! Example **Suppliers**

```
- An administrator of an entity creates its suppliers (local).
- A GLPI administrator creates suppliers common to all entities (global).

**Contracts and contacts**

- A contract is common to all entities (global).
- An administrator of an entity creates its own contacts for this contract (local).
```

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Why aren't the entities I've created visible even though my super-admin profile is in recursive mode?

When creating an entity, remember to disconnect/reconnect in order to be able to see them in the list.

!!! Info "For on-premise instances" - If, despite disconnection, they are still not visible, go to the GLPI folder on your server and enter the command **`php bin/console cache:clear`**. - Finally, you can also clear the MYSQL cache with the commands : `mysql -u root -p reset query cache;`

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} How do I customise the information for an entity?

From :ti-shield-check:**`administration`** > :ti-stack:**`entities`**, go to the address tab to modify the information specific to your entity.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Can I customise an entity's interface?

It is possible, this step requires knowledge of CSS. From :ti-shield-check:**`administration`** > :ti-stack:**`entities`**, you can activate CSS customisation. Insert the CSS code you need to customise your interface.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} How do I change an entity's email addresses?

If you want your entity to use a particular send and/or reply address, you can change it so that it does not use the default address. From :ti-shield-check:**`administration`** > :ti-stack:**`entities`**, go to **`notifications`** and change the desired information to the values of your choice.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} I have a default ticket template but I want to use another one for a particular entity, how do I go about this?

From :ti-shield-check:**`administration`** > :ti-stack:**`entities`**, go to the **`assistance`** tab. You can change the ticket, change and problem templates to the ones that suit you best. You can always go back by clicking on :ti-corner-right-down:**`default`**.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} How can I see all the rules assigned to an entity?

From :ti-shield-check:**`administration`** > :ti-stack:**`entities`**, go to the **`rules`** tab. You will be able to see all the rules that apply to the entity.
