Receivers
=========

Receivers

External tools to act on support via email.

The principle is simple: use email to create tickets and add follow-ups
to existing tickets. An internal GLPI task will connect to a mailbox and
retrieve messages.

Note: Resolution or closure of a ticket is not possible in this way.

Here is the route from email to the creation of the ticket :

-   Mail Box
-   Receiver (for configuration, see [Configurer les
    collecteurs](config_mailcollector.html "La configuration des collecteurs s'effectue depuis le menu Configuration > Collecteurs")
-   Rules [Affecter un ticket ouvert par courriel à une
    entité](administration_rule_mailcollector.html "GLPI implémente un mécanisme de routage des tickets ouverts par courriel, afin de les créer dans la bonne entité. Celui-ci se base sur le moteur de règles.")
-   Rules [Règles métier pour les
    tickets](administration_rule_ticket.html "Lors de la création d'un ticket, un mécanisme permet de modifier les attributs du ticket de manière automatique.")
-   Ticket created

**Parent topic:** [Advanced](../glpi/helpdesk_advanced.html "Advanced")
