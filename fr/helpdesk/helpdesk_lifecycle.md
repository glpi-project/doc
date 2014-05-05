Comprendre le cycle de vie des tickets
======================================

La consultation et modification des options du cycle de vie des tickets
se fait dans le menu Configuration \> Assistance

Les différents statuts possibles pour un ticket sont nouveaux, en cours
(attribué), en cours (planifié), en attente, résolu et clos. Ceux-ci ne
sont ni paramétrables ni modifiables.

Règles de gestion
-----------------

A sa création, un ticket prend le statut **Nouveau**. Lorsqu'un
technicien le qualifie en lui attribuant un groupe, un technicien ou un
fournisseur chargé de le traiter, il passe alors à l'état **En cours
(attribué)**. De même, s'il rajoute une nouvelle tâche alors il devient
**En cours (planifié)**. Quand une solution est apportée au ticket,
alors il prend le statut **Résolu**. Enfin, quand le demandeur ou le
rédacteur valide la solution proposée, alors il est **Clos**.

Remarque : Le technicien peut changer le statut à tout moment, notamment
pour mettre le ticket **En attente**.

Remarque : Le demandeur peut supprimer son ticket tant que celui-ci est
en statut nouveau et qu'aucune action n'a été réalisée pour ce ticket.

Matrice de calcul de la priorité
--------------------------------

Les bonnes pratiques ITIL séparent l'urgence (définie par
l'utilisateur), de l'impact de l'incident (un utilisateur, un service,
une fonction...) qui est normalement renseigné par le technicien. Une
matrice est alors utilisée pour calculer la priorité associée au ticket
en fonction de ces deux critères. GLPI fournit une matrice standard
prédéfinie qui permet de retrouver un fonctionnement identique au
helpdesk dans les versions précédentes de l'application (où ces deux
notions d'urgence et impact n'existaient pas).

La matrice prédéfinie de calcul de la priorité d'un ticket en fonction
de son urgence et de son impact est modifiable et se trouve dans
l'onglet Configuration \> Assistance (Voir [Configurer les paramètres
centraux](config_common.html "Les paramètres centraux se configurent depuis le menu Configuration > Générale")).

Il est possible de sélectionner les différents niveaux d'urgence ou de
priorités qui seront utilisés dans le helpdesk, et d'en désactiver
certains : pour cela, il suffit de définir le niveau choisi à Non. Il
faut noter que le niveau moyen n'est pas désactivable.

**Sujet parent :** [Gérer les
tickets](../glpi/helpdesk_ticket.html "Les tickets dans GLPI, caractéristiques et utilisation")
