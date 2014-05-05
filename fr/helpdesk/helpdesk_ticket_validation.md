La validation
=============

La validation d'un ticket, caractéristiques et utilisation

Un ticket peut nécessiter une validation, par exemple pour une demande
d'évolution matériel, comme un changement d'ordinateur ou de moniteur.

Après avoir cliqué sur **Envoyer une demande de validation**, il faut
saisir l'utilisateur ou les membres d'un groupe (uniquement ceux qui ont
le droit de valider) qui doit valider, ainsi qu'un commentaire si
besoin. Le ticket prend alors le statut **En attente de validation**
dans son champ **Validation**.

La demande de validation peut également être créée directement à
l'[ouverture du ticket](helpdesk_openticket.dita) via l'interface
standard ou via une [règle métier](administration_rule_ticket.dita).

Remarque : La validation n'est pas un processus bloquant, mais seulement
informatif. Un technicien pourra traiter un ticket qui est en attente de
validation. Toutefois, si le technicien modifie le statut du ticket vers
Résolu ou Clos, ou qu'il ajoute une solution sur un ticket en attente de
validation, une alerte sera affichée.

Pour valider la demande, le valideur peut cliquer sur le ticket dans
l'accueil de GLPI (onglet **Vue personnelle**, partie **Vos tickets à
valider**), ou aller dans le menu **Assistance \> Ticket** et cliquer
sur l'icône ![image](../image/menu_showall.png) qui apparaît dans le fil
d'ariane.

Une fois sur le ticket, aller dans l'onglet **Validation**, puis cliquer
sur la ligne correspondante à la demande de validation. Choisir si le
ticket est **Accepté** ou **Refusé**.

En cas de refus, il est obligatoire de saisir un commentaire.

Dans le cas ou une demande de validation multiple a été soumise, un
pourcentage de validation requis est utilisé. Trois cas sont alors
possibles :

- 0% : Le premier utilisateur qui accepte ou refuse la validation,
Valide le ticket lui-même (Statut global de la validation).

- 50% : La majorité l'emporte. Exemple : 3 validations demandées, 2
refus entraine le refus du ticket.

- 100% : Tous les valideurs doivent valider ou refuser le ticket afin
que le statut global de validation soit modifié.

**Sujet parent :** [Les
actions](../glpi/helpdesk_ticketactions.html "Les actions")
