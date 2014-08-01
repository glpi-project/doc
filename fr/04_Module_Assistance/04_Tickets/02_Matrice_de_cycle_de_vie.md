Les matrices
============

Matrice de cycle de vie des tickets
-----------------------------------

Chaque profil possédant sa propre matrice de cycle de vie, vous pouvez affiner quel profil pourra faire quelle action dans le ticket.

Cette matrice vous permet d'empêcher le ticket de passer de tel à tel statut, ce qui fait qu'elle peut bloquer certaines actions de GLPI (voir [Les règles de gestion](index.php?fr/04_Module_Assistance/04_Tickets/01_Règles_de_gestion.md).
Si un statut est désactivé, il ne sera pas présent dans la liste des statuts de GLPI

Figure 1. Matrice de cycle de vie d'un ticket
![image](docs/image/CycleVieTicket.png)

Dans l'exemple ci-dessus, un ticket Nouveau ne pourra jamais être mis En attente, ce statut n'étant pas proposé dans le ticket.

De plus, un demandeur ou créateur n'aura pas le formulaire de validation de la solution, car un ticket résolu dont la solution est approuvée devient clos, ce que l'exemple n'autorise pas.


--------
**Sujet parent :** [Gérer les tickets](index.php?fr/04_Module_Assistance/04_Tickets/03_Gérer_les_tickets.md "Les tickets dans GLPI, caractéristiques et utilisation")
