# :ti-clipboard-check: Changements

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Qu'est ce qu'un changement ?

Un **Changement** est la mise en place de la résolution d'un Problème (au sens GLPI ou non) ou bien une mise en place d'un nouvel élément matériel/humain ou processus de votre SI. Le Changement vous permet d'informer, d'attribuer, de planifier, budgéter , etc. Les Changements sont accessibles dans :ti-headset: **`Assistance`** > :ti-clipboard: **`Changements`**.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Comment créer un changement ?

Pour créer un Changement, comme tout élément GLPI, cliquez sur **`ajouter`**. Le formulaire de déclaration d'un changement ressemble à celui des incidents, dont il partage les concepts :

* demandeurs,
* observateurs,
* assignation,
* statut,
* urgence,
* impact,
* priorité,
* catégorie.

Comme le Problème, il est possible de rattacher d'autres éléments de GLPI à votre Changement : Ticket / Problème / Projets / Coûts / etc.

Une procédure est disponible afin de vous accomapgner dans la mise en place de votre changement.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Qu'est ce qu'un changement récurent ?

Le changement reccurent permet de planifier un changement ayant lieu périodiquement afin de préparer, planifier les éventuelles étapes qui pourraient y être liées.

!!! Example "Exemple" Vérification toutes les semaines que les correctifs Windows n'impactent pas les performances en production.

Vous pouvez y lié d'autres obljets GLPI type projets, problèmes, éléments, etc.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Comment créer un changement récurent ?

Dans :ti-headset:**`assistance`** > :ti-alarm:**`changements récurrents`** cliquez sur :ti-plus:**`ajouter`** Ajouter un nom, un commentaire si besoin. Passez votre changement en actif et indiquez une date de début (une date de fin si nécessaire). Ajoutez la périodicité désirée ainsi que la création anticipée si vous souhaitez que le changement soit créer avant la **`date de début`**. Il ne vous reste qu'à sauvegarder votre changement récurrent.

!!! Tip "Actions automatiques" Pensez à vérifier que l'action automatique **`RecurrentItems`** dans :ti-settings:**`configuration`** > :ti-settings-automation:**`actions automatiques`** soit active et paramétrée à la bonne **`fréquence d'exécution`** afin que l'action de création du changement puisse être effectuée.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Quels sont les status disponibles pour les changements ?

Les status disponibles sont :

| Icone                               | Statut        |
| ----------------------------------- | ------------- |
| :ti-circle-filled:                  | Nouveau       |
| :ti-circle:                         | Evaluation    |
| :fontawesome-solid-circle-question: | Validation    |
| :ti-circle-check:                   | Accepté       |
| :ti-circle-filled:                  | En attente    |
| :fontawesome-solid-circle-question: | En test       |
| :ti-circle:                         | Qualification |
| :ti-circle:                         | Appliqué      |
| :ti-eye:                            | Revue         |
| :ti-circle-filled:                  | Clos          |
| :ti-circle-off:                     | Annulé        |
| :ti-circle-x:                       | Refusée       |

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Peut-on lier des changements à d'autres types d'objets GLPI ?

Oui. Il est possible de lier des problèmes, des tickets, des projets, des éléments du parc pour avoir un visu complet sur le déroulement du changement.
