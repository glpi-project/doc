Définir les acteurs et leurs rôles
==================================

Définir les acteurs et leur rôles

Voici les différents rôles que l'on retrouve traditionnellement dans les
services d'assistance :

-   Demandeurs : ce sont les utilisateurs ou groupes d'utilisateurs
    connus dans GLPI concernés par le ticket (la ou les victimes).
-   Exécutants/Techniciens ("attribué à") : la prise en charge d'un
    ticket est effectuée soit par un technicien, soit par un groupe de
    compétences ou encore par un fournisseur référencé dans
    l'application.
-   Observateurs : ce sont des utilisateurs ou groupes d'utilisateurs
    qui reçoivent des notifications.

Selon le rôle de l'utilisateur, GLPI modifie les informations visibles
ainsi que les actions possibles.

Les techniciens sont les acteurs disposant des informations les plus
complètes, et de la plus large latitude d'action sur les tickets.

Le demandeur et l'observateur ne verront que les informations
nécessaires pour répondre à leur demande.

Dans le cas d'utilisateurs ou de groupes multiples, seul le premier
utilisateur ou groupe est défini lors de la création du ticket, les
acteurs supplémentaires sont ajoutés ultérieurement. Un utilisateur,
n'ayant pas de droit de modifier les acteurs mais pouvant voir le ticket
grâce à ses habilitations, a la possibilité de devenir observateur.

Au moment de l'association d'un nouvel acteur, vous pouvez également
voir le nombre de tickets en cours pour cet acteur permettant de
faciliter la répartition des tâches entre techniciens par exemple.

Remarque : Dans le cas d'utilisateurs non connus de GLPI, des courriels
peuvent également être associés à un ticket. Le choix par défaut (pas
d'utilisateur sélectionné) au niveau des demandeurs ou observateurs
permet de saisir un courriel dans la zone correspondante. De plus, les
notifications doivent être activées (voir [Configurer les
notifications](config_notification.html "Les notifications se configurent depuis le menu Configuration > Notifications ;")).

Remarque : Dans GLPI, l'attribution de l'un de ces rôles se fait au
niveau de la gestion des habilitations des utilisateurs (voir [Attribuer
des habilitations à un
utilisateur](administration_rule_right.html "GLPI dispose d'un moteur d'habilitations dynamiques qui se base sur des sources externes d'authentification. Il est accessible depuis le menu Administration > Règles > Règles d'affectation d'entité et de droits.")).

**Sujet parent :** [Mise en route du service
d'assistance](../glpi/helpdesk_begin.html "Mise en route du service d'assistance")
