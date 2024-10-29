# :ti-writing-sign: Contrats

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Qu'est-ce qu'un contrat ?

La gestion des contrats dans GLPI est conçue pour offrir une gestion centralisée et efficace de tous les aspects liés aux contrats informatiques, améliorant ainsi la transparence, la traçabilité et l'efficacité des opérations IT.

Les contrats permettent par exemple :

* La gestion des **coûts** : GLPI permet de suivre les coûts associés à chaque contrat, y compris les paiements récurrents ou ponctuels.
* La **budgétisation** : Les informations financières des contrats peuvent être utilisées pour la budgétisation et la prévision des dépenses.
* La **liaison avec d'autres modules** : Les contrats peuvent être liés à des actifs ou équipements spécifiques, facilitant ainsi le suivi de la couverture et de la maintenance des équipements.
* La gestion des **fournisseurs** : GLPI permet de gérer un annuaire des fournisseurs, avec des informations détaillées sur chacun d'entre eux.

Allez plusloin avec Il est aussi possible de mettre en place une évaluation des fournisseurs visant à évaluer les performances des fournisseurs en fonction des services fournis et des contrats en cours.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Quelles sont les informations disponibles dans les contrats ?

Il est possible de renseigner plusieurs informations permettant une meilleure gestion des contrats et des éléments qui lui sont liés :

* Nom
* Statut
* Type de contrat
* Date de début
* Durée intiale de contrat
* Préavis
* Lieu
* Numéro
* Numéro comptable
* Périodicité du contrat
* Périodicité de facturation
* Nombre max d'éléments
* Reconduction
* Alertes par courriel
* Heures d'interventions (paramétrable en semaine, samedi, dimanche et fêtes)

Les onglets disponibles :

* Coûts
* Fournisseurs
* Eléments
* Documents
* Liens
* Notes
* Base de connaissance
* Tickets
* Historique
* Tous

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Peut on lier un contrat par défaut à une entité ?

Oui. Depuis :ti-shield-check:**`Administration`** > :ti-stack:**`Entités`** > onglet **`Assistance`**. Séléctionnez le contrat souhaité dans **`Contrat par défaut`**

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Quelles sont les notifications disponibles dans les contrats ?

Afin de facilité la gestion des contrats, des notifications peuvent être envoyées :

* Expiration de contrat
* Fin de périodicité
* Préavis
* Préavis de période

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Pourquoi je ne reçois pas les notifications ?

Cela peut être dû à plusieurs critères :

* Problème de configuration du serveur SMTP{:target="\_blank"}
* Le contrat n'est pas ou plus actif
* L'action automatique{:target="\_blank"} **`contract`** n'est pas active ou mal paramétré
* Votre [cron](https://glpi-user-documentation.readthedocs.io/fr/master/modules/configuration/crontasks.html){:target="\_blank"} n'est pas actif ou mal paramétré

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Pourquoi je ne peux pas lier mon contrat à un objet GLPI ?

Si vous ne voyez pas votre contrat dans l'objet GLPI en question, il faut vous assurer de quelques points :

* Le contrat doit être actif (non expiré)
* Une date de début doit être renseignée
* Une durée doit être indiquée

!!! tip "Contrats expirés" Les contrats expirés ne sont pas visibles dans les différents objets GLPI afin de ne pas "polluer" la liste des contrats. en revanche, vous pouvez lier un objet GLPI directement depuis le contrat même s'il est expiré.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Peut on éditer des rapports liés aux contrats ?

Oui. Depuis :ti-briefcase:**`Outils`** > :ti-report:**`Rapports`**, you can select the option **`Par contrat`**. Sélectionnez le type d'élément (plusieurs éléments possibles) puis la ou les annéés.
