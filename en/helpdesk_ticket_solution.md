Solution
========

Solution of a ticket, characteristics and use

The solutions tab of a ticket allows the ticket resolution by a
technician and approval of the solution by requester or the writer.

-   **Resolution of the ticket :**

    The technician must choose the **Solution Type**, which is
    configurable eg. **Hardware Replacement** and if necessary a
    description of the solution and click **Update**.

    After the solution update, the ticket status automatically changes
    to **Solved**, until approval of the solution.

    The reproduction of a solution can be facilitated by the use of two
    mechanisms :

    -   The use of a solution template. These are labeled (see
        [Configurer les
        intitulés](config_dropdown.html "Les intitulés se configurent depuis le menu Configuration > Intitulés")).
    -   The extraction of an element from the knowledge base. To do
        this, you must click `Search a solution`, locate the knowledge
        base article and confirm by selecting the corresponding
        `Use as a solution`.

    Note: A recording of the solution, the choice
    `Save and add to the knowledge base` allows the solution to be added
    directly to the knowledge base. After creation of the solution, the
    approval of the solution is presented. Record the approval or
    refusal of the solution by completing the form.

-   **Approval of the solution :**

    The solution of a ticket must be approved before the status of the
    ticket is closed.

    It can be approved by a requester or the writer of the ticket
    (person who entered the ticket by example, a call center
    technician).

    If notification by email is enabled, the applicant may receive an
    email containing the link to the ticket order to approve it.

    Otherwise you must use the interface :

    -   **Simplified Interface** :

        To approve a solution, go to the menu **Tickets**, select the
        ticket to approve.

    -   **Standard Interface** :

        Tickets appear on the GLPI homepage in the tab **Personal
        View**, and the **Your tickets to close** section.

        The validator may either approve or reject the solution. A
        description can be entered if desired, however it is mandatory
        in case of rejection.

    Once the solution is approved, the ticket status is now **Closed**.

    Note: A closed ticket can not be updated (except for the status). To
    update it, you must change its status and perform again closure.

    It is possible to force the closure of the resolved ticket after a
    configurable delay (see [Onglet
    Assistance](config_common_assist.html "Cet onglet permet de paramétrer le comportement de la partie assistance de GLPI.")).
    If this delay is zero, the ticket is automatically closed.

**Parent topic:**
[Actions](../glpi/helpdesk_ticketactions.html "Actions")
