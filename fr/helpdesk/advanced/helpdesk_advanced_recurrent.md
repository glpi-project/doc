Les tickets récurrents
======================

Les tickets récurrents

Grâce aux gabarits, il est possible de programmer l'ouverture de tickets
de manière récurrente.

Ouvrir un ticket tous les vendredis matin afin de réaliser une
sauvegarde sur bande le soir même. Faire une opération d'initialisation
tous les débuts de mois.

Cette fonctionnalité est accessible depuis le menu Assistance \> Tickets
récurrents.

Un ticket récurrent comprend un *gabarit*, qui va être utilisé comme
modèle pour les tickets, ainsi qu'une *date de début* et une *fréquence
d'ouverture*. Le processus peut être déclenché de *manière anticipée*.
Enfin, il est possible de *désactiver* le ticket récurrent grâce au
paramètre *actif*. Un calendrier peut également être associé permettant
la limitation des jours ouvrés pour lesquels les tickets sont créés. Si
la création automatique avait programmé une création de ticket un
week-end par exemple celle-ci sera reportée au lundi.

Remarque : Les tickets ne seront créés que si le témoin Actif est à Oui
et pendant la période définie entre la date de début et la date de fin.
La date de fin est facultative mais la date de début obligatoire.

L'ouverture de tickets récurrents est effectué à travers une action
automatique nommée *ticketrecurrent* (voir [Configurer les actions
automatiques](config_crontask.html "Les actions automatiques se configurent depuis le menu Configuration > Actions automatiques")).

**Sujet parent :** [Pour aller plus
loin](../glpi/helpdesk_advanced.html "Pour aller plus loin")
