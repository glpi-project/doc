# :ti-clipboard-check: Changes

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} What is a change?

A **Change** is the establishment of the resolution of a Problem (in GLPI sense or not) or the establishment of a new material / human element or process of your IS. Change allows you to inform, assign, plan, budget, etc. The Changes are accessible in :ti-headset:**`Assistance`** > :ti-clipboard:**`Changes`**.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} How to create a change?

To create a Change, like any element of GLPI, click on :ti-plus:**`add`**. The change form reminds the form of incidents, of which distinguish the concepts:

* claimers,
* observers,
* assignment,
* status,
* urgency,
* impact,
* priority,
* category.

Like the Problem, it is possible to attach other elements of GLPI to your Change: Ticket / Problem / Projects / Costs / etc.

A procedure is available to help you implement your change.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} What is a reccurent change?

A reccurent change is a change that occurs periodically and is planned in order to prepare and plan the possible steps that could be linked to it.

!!! Example Weekly check that Windows patches have no impact on production performance.

You can link other GLPI projects, problems, items, etc. to it.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} How do I create a reccurent change?

In :ti-headset:**`assistance`** > :ti-alarm:**`reccurent changes`** click on :ti-plus:**`add`** Add a name and a comment if necessary. Set your change to active and indicate a start date (an end date if necessary). Add the desired periodicity as well as early creation if you want the change to be created before the **`start date`**. All that remains is to save your reccurent change.

!!! Tip "Automatic actions" Remember to check that the **`RecurrentItems`** automatic action in :ti-settings:**`setup`** > :ti-settings-automation:**`automatic actions`** is active and set to the correct **`run frequency`** so that the change creation action can be carried out.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} What status is available for changes?

The available statuses are :

| Icon                                | Status        |
| ----------------------------------- | ------------- |
| :ti-circle-filled:                  | New           |
| :ti-circle:                         | Evaluation    |
| :fontawesome-solid-circle-question: | Approval      |
| :ti-circle-check:                   | Accepted      |
| :ti-circle-filled:                  | Pending       |
| :fontawesome-solid-circle-question: | Testing       |
| :ti-circle:                         | Qualification |
| :ti-circle:                         | Applied       |
| :ti-eye:                            | Review        |
| :ti-circle-filled:                  | Closed        |
| :ti-circle-off:                     | Cancelled     |
| :ti-circle-x:                       | Refused       |

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Can changes be linked to other types of GLPI object?

Yes. It is possible to link problems, tickets, projects and elements of the fleet to have a complete overview of the progress of the change.
