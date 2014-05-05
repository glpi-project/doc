Validation
==========

Ticket Validation, characteristics and use

A ticket may require validation, for example an application for changing
equipment, such as a computer or monitor.

After clicking **Send a Approval request**, you must enter the
validating user or group members (only who nave right to validate a
request o an incident), and a comment if needed. Then the ticket status
is updated to **Waiting for approval** in the field **Approval**.

The validation request may also be created directly in the [ticket
creation](helpdesk_openticket.html "Open a ticket in GLPI") into the
standard interface or a [business
rule](administration_rule_ticket.dita).

Note: The validation process is not a blocker, but only informative. A
technician can still process a ticket that is awaiting validation.
However, if the technician changes the ticket status to Resolved or
Closed, or if he had a solution on a waiting for validation ticket, a
warning will be displayed.

To validate the request, the validator can click on the ticket in the
GLPI homepage tab **Personal View**, and the **Your tickets to close**
section, or go to the menu **Assistance \> Ticket** and click on the
icon ![image](../image/menu_showall.png) that appears in the horizontal
menu.

Once in the ticket, go to the tab **Validation**, then click on the
Status of the Approval request. Choose whether the ticket is **Granted**
or **Refused**.

In case of refusal it is mandatory to enter a comment.

In case of a multiple validation request will be submitted, a percentage
of validation required is used. Three cases are possible:

- 0%: The first user which accept or reject the validation Validates the
ticket itself (global status validation).

- 50%: The majority wins. Example: 3 validations required, 2 refusal
causes the denial of ticket.

- 100%: All validators must approve or reject the ticket so that the
overall validation status is changed.

**Parent topic:**
[Actions](../glpi/helpdesk_ticketactions.html "Actions")
