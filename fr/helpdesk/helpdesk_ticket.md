Gérer les tickets
=================

Les tickets dans GLPI, caractéristiques et utilisation

Gérer les incidents en conformité avec ITIL ou pas
--------------------------------------------------

Le module d'assistance de GLPI est conforme au guide de bonnes pratiques
ITIL pour la partie Gestion des incidents et gestion des demandes de
services : il intègre donc des notions comme l'impact, l'urgence d'un
ticket, la matrice de calcul des priorités associées et une
normalisation des statuts. Bien que l'outil soit conforme ITIL, il n'y
aucune obligation pour suivre ces bonnes pratiques : chacun est libre
d'implémenter la gestion des incidents qui correspond le mieux à ses
besoins.

La date d'ouverture (**Ouvert le**) et l'échéance permettent de
circonscrire l'incident ou la demande de service dans le temps. Un
**SLA** peut également être associé à un ticket. Dans ce cas, le SLA
ainsi que le prochain niveau d'escalade sont affichés (voir [Configurer
les
SLAs](config_sla.html "Dans GLPI, administrer les SLAs peut se faire à partir du menu Configuration > SLAs.")).

Les acteurs concernés sont référencés dans le ticket, ce qui permet leur
notification durant le cycle de vie du ticket : le ou les **demandeurs**
sont les utilisateurs ou groupes d'utilisateurs connus dans GLPI
concernés par le ticket (la ou les victimes) ; le ou les
**observateurs** sont des utilisateurs ou groupes d'utilisateurs qui
reçoivent des notifications. La prise en charge (**Attribué à**) d'un
ticket est effectuée soit par un **technicien**, soit par un **groupe**
de compétences ou encore par un **fournisseur** référencé dans
l'application.

Dans le cas d'utilisateurs ou de groupes multiples, seul le premier
utilisateur ou groupe est défini lors de la création du ticket, les
acteurs supplémentaires sont ajoutés ultérieurement. Un utilisateur
n'ayant pas de droit de modifier les acteurs mais pouvant voir le ticket
grâce à ses habilitations à la possibilité de devenir observateur.

Remarque : Dans le cas d'utilisateurs non connus de GLPI, des courriels
peuvent également être associés à un ticket. Le choix par défaut (pas
d'utilisateur sélectionné) au niveau des demandeurs ou observateurs
permet de saisir un courriel dans la zone correspondante. De plus, les
notifications doivent être activées (voir [Configurer les
notifications](config_notification.html "Les notifications se configurent depuis le menu Configuration > Notifications ;")).

Un ticket possède un contenu (**titre** et **description**). Si aucun
titre n'est défini par l'utilisateur lors de la création du ticket, les
70 premiers caractères de la description sont utilisés pour définir le
titre du ticket. La **catégorie** permet de classer les incidents
suivant leur nature. Le **type** permet de définir s'il s'agit d'une
demande ou d'un incident. La liste déroulante **Élément** permet
d'associer un ou plusieurs objets d'inventaire au ticket : le contenu de
la liste dépend des paramètres définis dans le profil (voir [Administrer
les profils
d'utilisateurs](administration_profile.html "Dans GLPI, administrer les profils peut se faire à partir du menu Administration > Profils.")).
Le lieu permet d'indiquer le lieu de l'intervention.

Le ticket garde en référence l'utilisateur GLPI qui a ouvert le ticket
(**Par**) ainsi que le canal utilisé (**Source de la demande**, voir
[Configurer les
intitulés](config_dropdown.html "Les intitulés se configurent depuis le menu Configuration > Intitulés")).

Un ticket a un **statut** (voir [Comprendre le cycle de vie des
tickets](helpdesk_lifecycle.html "La consultation et modification des options du cycle de vie des tickets se fait dans le menu Configuration > Assistance")),
et peut nécessiter une **validation** : par défaut il est *non soumis à
validation*.

**L'urgence** indique l'importance donnée par le demandeur au ticket,
alors que l'**impact** est celle jugée par le technicien. La
**priorité** est l'importance du ticket calculée automatiquement suivant
une matrice de calcul prédéfinie (Voir [Onglet
Assistance](config_common_assist.html "Cet onglet permet de paramétrer le comportement de la partie assistance de GLPI.")).

Enfin, deux informations concernant les notifications apparaissent si
les suivis par courriels ont été configurés (Voir [Configurer les
notifications](config_notification.html "Les notifications se configurent depuis le menu Configuration > Notifications ;"))
: l'activation du **suivi par courriel** pour ce ticket et le **courriel
pour le suivi** utilisé. Celui-ci est pré-rempli par défaut avec la
valeur présente et définie par défaut dans la fiche de l'utilisateur ou
du fournisseur (s'il en a une) et peut être modifié dans la liste
déroulante si besoin.

Dans le cadre d'une utilisation de GLPI multi-entités avec des
techniciens ayant des habilitations sur plusieurs entités, il n'est pas
nécessaire de changer l'entité courante pour déclarer un nouvel incident
dans une entité. Le cheminement de l'ouverture d'un nouveau ticket est
le suivant : le technicien commence par sélectionner le demandeur et
GLPI va déterminer les entités sur lesquelles l'utilisateur a des
habilitations. S'il n'en possède que sur une entité, alors le formulaire
de création est mis à jour et le ticket sera déclaré dans l'entité
correspondante, mais s'il en possède plusieurs une liste déroulante
supplémentaire permet de sélectionner celle sur laquelle on veut
travailler.

-   **[Comprendre le cycle de vie des
    tickets](../glpi/helpdesk_lifecycle.html)**\
     La consultation et modification des options du cycle de vie des
    tickets se fait dans le menu Configuration \> Assistance
-   **[Associer des documents](../glpi/inventory_document.html)**\
     Les documents associés se gèrent depuis l'onglet Documents
-   **[Visualiser l'historique](../glpi/inventory_log.html)**\
     L'historique est visualisé depuis l'onglet Historique

**Sujet parent :** [Le service d'assistance aux
utilisateurs](../glpi/helpdesk.html "Le service d'Assistance aux utilisateurs de GLPI")
