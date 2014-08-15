Onglet Validations
==================

Un objet (ticket ou un changement) peut nécessiter une validation, par exemple pour une demande d'évolution matériel, comme un changement d'ordinateur ou de moniteur. Cette demande de validation n'est possible que si vous avez les droits dans votre profil.

Après avoir cliqué sur **Envoyer une demande de validation**, il faut saisir le type de valideur (utilisateur ou groupe) ainsi que son nom. Pour les groupes il faut également choisi qui dans le groupe va recevoir cette demande de validation (ne sont listés que ceux ayant le droit de valider). 

Pour valider la demande, le valideur doit ouvrir l'onglet **Validation** de l'objet, puis cliquer sur la ligne correspondante à la demande de validation. Choisir si l'objet est **Accepté** ou **Refusé**. En cas de refus, il est obligatoire de saisir un commentaire.

Dans le cas où une demande de validation multiple a été soumise, un pourcentage de validation est requis. Trois cas sont alors possibles :

- 0% : Le premier utilisateur qui accepte ou refuse la validation valide l'objet (Statut global de la validation).

- 50% : La majorité l'emporte. Exemple : 3 validations demandées, 2 refus entraine le refus du ticket.

- 100% : Tous les valideurs doivent valider ou refuser la validation afin que le statut global de validation soit modifié.

Validation pour un ticket
-------------------------
Lorsque qu'une demande de validation est créée, le ticket prend alors le statut **En attente de validation** dans son champ **Validation**.

La demande de validation peut également être créée directement à l'[ouverture du ticket] (helpdesk_openticket.dita) via l'interface standard ou via une [règle métier](administration_rule_ticket.dita).

***Remarque :** La validation n'est pas un processus bloquant, mais seulement informatif. Un technicien pourra traiter un ticket qui est en attente de validation. Toutefois, si le technicien modifie le statut du ticket vers Résolu ou Clos, ou qu'il ajoute une solution sur un ticket en attente de validation, une alerte sera affichée.*

Pour valider la demande, le valideur peut cliquer sur le ticket dans l'accueil de GLPI (onglet **Vue personnelle**, partie **Vos tickets à valider**), ou aller dans le menu **Assistance > Ticket** et cliquer
sur l'icône ![image](docs/image/menu_showall.png) qui apparaît dans le fil d'ariane.


Validation pour un changement
-----------------------------

***Remarque :** La validation n'est pas un processus bloquant, mais seulement informatif. Un technicien pourra traiter un changement qui est en attente de validation. Toutefois, si le technicien modifie le statut du changement vers Appliqué, Revu ou Clos, ou qu'il ajoute une solution sur un changement en attente de validation, une alerte sera affichée.*


-------
**Sujet parent :** [Gérer les tickets](index.php?fr/04_Module_Assistance/06_Tickets/03_Gérer_les_tickets.md "Les tickets se gèrent depuis le menu Assistance > Tickets")

**Sujet parent :** [Gérer les changements](index.php?fr/04_Module_Assistance/09_Changements.md "Les changements se gèrent depuis le menu Assistance > Changements")