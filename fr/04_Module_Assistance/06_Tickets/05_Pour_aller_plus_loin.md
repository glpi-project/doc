Pour aller plus loin
====================

-   **Les catégories de tickets](index.php?fr/04_Module_Assistance/04_Configuration_avancée.md)**
     
-   **Les gabarits de tickets](index.php?fr/Les_différentes_actions/Gérer_les_gabarits.md)**
    Personnaliser le formulaire de création d'un ticket en masquant, pré-définissant ou rendant obligatoire certains champs. 

-   **Les collecteurs**
    Les outils externes permettent d'agir sur la partie assistance via les collecteurs de mail.

    Le principe est simple : utiliser la messagerie électronique pour créer des tickets et ajouter des suivis aux tickets déjà existants. Une tâche interne de GLPI va se connecter à une boîte mail et ainsi récupérer les messages.

    ***Remarque :** La résolution ou la clôture d'un ticket ne sont pas possibles par ce biais.*

    Voici le parcours du courriel jusqu'à la création du ticket :

    -   Boite mail ;
    -   Collecteur (pour la configuration, voir [Configurer les collecteurs](config_mailcollector.html "La configuration des collecteurs s'effectue depuis le menu Configuration > Collecteurs") ;
    -   Règles [Affecter un ticket ouvert par courriel à une entité](administration_rule_mailcollector.html "GLPI implémente un mécanisme de routage des tickets ouverts par courriel, afin de les créer dans la bonne entité. Celui-ci se base sur le moteur de règles.")
    -   [Règles métier pour les tickets](administration_rule_ticket.html "Lors de la création d'un ticket, un mécanisme permet de modifier les attributs du ticket de manière automatique.")
    -   Ticket créé

    La réponse à un courriel provenant de GLPI aura ce parcours :

    - Boite mail ;
    - Collecteur ;
    - Création d'un suivi dans le ticket concerné.

-   **[Les tickets récurrents](index.php?fr/04_Module_Assistance/11_Tickets_récurrents.md)**

-   **[Les coûts liés](index.php?fr/04_Module_Assistance/05_Tickets/03_Gérer_les_tickets.md)**
     
-   **[Liens entre tickets](index.php?fr/04_Module_Assistance/05_Tickets/03_Gérer_les_tickets.md)**
     Les relations entre les tickets : liaison et duplication

-   **Les délais de résolutions d'incidents ou SLA**
    Voir [Configurer les SLAs](config_sla.html "Dans GLPI, administrer les SLAs peut se faire à partir du menu Configuration > SLAs.").

-   **Les règles métier de modification et affectation des tickets**
    Voir [Règles métier pour les tickets](administration_rule_ticket.html "Lors de la création d'un ticket, un mécanisme permet de modifier les attributs du ticket de manière automatique.").

-   **Clôture administrative**
    Passe le *statut* d'un ticket de *Résol*u à *Clos*

    Les bonnes pratiques ITIL préconisent une approbation de la solution par le demandeur du ticket, qui valide que la réponse apportée par le technicien correspond bien à ce qu'il attendait. 
    Toutefois, si le demandeur ne remplit pas cette action, il est possible de paramétrer une clôture administrative après un délai paramétrable dans la configuration de l'entité (voir [Onglet Assistance](config_common_assist.html "Cet onglet permet de paramétrer le comportement de la partie assistance de GLPI.")). Si ce délai est nul, le ticket est automatiquement clos.

-   **La satisfaction**
    Le résultat de l'enquête de satisfaction d'un ticket, caractéristiques et utilisation

    La génération de l'enquête de satisfaction est effectuée lorsque le ticket passe au statut clos et le délai de déclenchement après la clôture se paramètre par entité (voir [Déléguer l'administration par entité](administration_entity_delegation.html "Délégation de certains paramètres d'administration par entité")).
    Il faut également que la tâche automatique correspondante soit active.

    A la clôture d'un ticket, une notification comportant le lien vers l'enquête de satisfaction peut être envoyée au demandeur. Dans le cas contraire, le demandeur aura accès à cette enquête depuis le ticket, onglet Satisfaction.

    Le demandeur peut alors définir son degré de satisfaction (de 0 à 5 sous forme d'étoiles) concernant la résolution de son ticket. Il peut également ajouter un commentaire s'il le souhaite.

    Des statistiques concernant les enquêtes sont disponibles dans les [statistiques](index.php?fr/04_Module_Assistance/10_Statistiques.md)**

    ***Remarques :***
    *- Le demandeur peut modifier sa réponse à l'enquête de satisfaction interne dans un délai de 12h suivant sa première réponse.*
    *- Une notification peut être définie à la génération de l'enquête de satisfaction mais également à chaque réponse à celle-ci.

-   Voir également la **[configuration avancée](index.php?fr/04_Module_Assistance/04_Configuration_avancée.md)**)**\

---------------
**Sujet parent :** [Le service d'assistance aux utilisateurs](index.php?fr/04_Module_Assistance/01_Module_Assistance)** "Le service d'Assistance aux utilisateurs de GLPI")
