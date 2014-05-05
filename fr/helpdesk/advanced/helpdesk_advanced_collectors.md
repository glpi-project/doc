Les collecteurs
===============

Les collecteurs

Les outils externes permettent d'agir sur la partie assistance via les
collecteurs de mail.

Le principe est simple : utiliser la messagerie électronique pour créer
des tickets et ajouter des suivis aux tickets déjà existants. Un tâche
interne de GLPI va se connecter à une boîte mail et ainsi récupérer les
messages.

Remarque : La résolution ou la clôture d'un ticket ne sont pas possibles
par ce biais.

Voici le parcours du courriel jusqu'à la création du ticket :

-   Boite mail
-   Collecteur (pour la configuration, voir [Configurer les
    collecteurs](config_mailcollector.html "La configuration des collecteurs s'effectue depuis le menu Configuration > Collecteurs")
-   Règles [Affecter un ticket ouvert par courriel à une
    entité](administration_rule_mailcollector.html "GLPI implémente un mécanisme de routage des tickets ouverts par courriel, afin de les créer dans la bonne entité. Celui-ci se base sur le moteur de règles.")
-   [Règles métier pour les
    tickets](administration_rule_ticket.html "Lors de la création d'un ticket, un mécanisme permet de modifier les attributs du ticket de manière automatique.")
-   Ticket créé

**Sujet parent :** [Pour aller plus
loin](../glpi/helpdesk_advanced.html "Pour aller plus loin")
