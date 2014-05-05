La solution
===========

La solution d'un ticket, caractéristiques et utilisation

L'onglet solution d'un ticket permet la résolution du ticket par un
technicien et l'approbation de la solution par le demandeur ou le
rédacteur.

-   **Résolution du ticket :**

    Le technicien doit choisir le **Type de solution**, intitulé
    paramétrable par exemple **Fermé (Résolu)** ainsi qu'une description
    de la solution si besoin puis cliquer sur **Actualiser**.

    Une fois la solution saisie, le ticket prend le statut **Résolu**,
    jusqu'à approbation de la solution.

    La saisie d'une solution peut être facilitée par l'utilisation de 2
    mécanismes :

    -   L'utilisation d'un gabarit de solution. Ce sont des intitulés
        (voir [Configurer les
        intitulés](config_dropdown.html "Les intitulés se configurent depuis le menu Configuration > Intitulés")).
    -   L'extraction d'un élément de la base de connaissance. Pour cela,
        il faut cliquer `Rechercher une solution`, trouver l'élément de
        base de connaissances correspondant et valider en choisissant
        `Utiliser comme solution`.

    Remarque : A l'enregistrement de la solution, le choix
    `Enregistrer et ajouter à la base de connaissances` permet de
    l'ajouter directement à la base de connaissance. Après validation de
    la solution, la page de création de l'élément est proposée. Il
    suffit alors de compléter le formulaire et de valider.

-   **Approbation de la solution :**

    La solution d'un ticket doit être approuvée pour que le statut du
    ticket soit clos.

    Elle peut être approuvée par un des demandeurs ou le rédacteur du
    ticket (personne qui a saisi le ticket, par exemple un technicien de
    hot-line).

    Si le suivi par courriel été activé, le demandeur peut recevoir un
    courriel contenant le lien vers le ticket afin de l'approuver.

    Sinon il faut utiliser l'interface :

    -   **Interface simplifiée** :

        Pour approuver une solution, aller dans le menu **Tickets**,
        cliquer sur le ticket à approuver, puis approuver ou rejeter la
        solution. Il est possible de saisir une description si besoin,
        celle-ci est obligatoire en cas de rejet.

    -   **Interface standard** :

        Les tickets à approuver apparaissent sur la page d'accueil de
        GLPI dans **Vue personnelle**, **Vos tickets à clore**.

        Cliquer sur le ticket à approuver, puis approuver ou rejeter la
        solution. Il est possible de saisir une description si besoin,
        celle-ci est obligatoire en cas de rejet.

    Une fois la solution approuvée, le ticket prend le statut **Clos**.

    Remarque : Un ticket clos n'est plus modifiable (à part le status).
    Pour le modifier a posteriori, il faut donc changer son status et
    réaliser de nouveau sa clôture.

    Il est possible de forcer la clôture des ticket résolus après un
    délai paramétrable (voir [Onglet
    Assistance](config_common_assist.html "Cet onglet permet de paramétrer le comportement de la partie assistance de GLPI.")).
    Si ce délai est nul, le ticket est automatiquement clos.

**Sujet parent :** [Les
actions](../glpi/helpdesk_ticketactions.html "Les actions")
