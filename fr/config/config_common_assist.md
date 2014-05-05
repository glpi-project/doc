Onglet Assistance
=================

Cet onglet permet de paramétrer le comportement de la partie assistance
de GLPI.

Assistance
----------

Les ouvertures de tickets anonymes sont désactivées par défaut.
L'activation de l'option est nécessaire lors de l'utilisation d'un
collecteur ou du formulaire de saisie de tickets anonymes afin de
permettre la création de ticket par des utilisateurs non reconnus par
GLPI. Pour autoriser en plus la création de suivis par l'auteur de ce
genre de tickets, il faut également activer l'option concernant les
suivis anonymes.

Les logiciels sont des objets sur lesquels il est possible de déclarer
un ticket. Il est possible de désactiver la disponibilité automatique
des nouveaux logiciels.

Le cycle de vie du ticket est influencé par des événements qui peuvent
déclencher des traitements automatiques : suppression des tickets liés à
un élément lors de sa purge, assignation d'une rubrique par défaut aux
documents liés aux tickets.

Matrice de définition de la priorité
------------------------------------

La matrice de définition de la priorité permet de définir la priorité
des tickets en fonction du niveau d'impact et d'urgence. La
disponibilité de ces niveaux dans l'application peut aussi être définie.

**Sujet parent :** [Configurer les paramètres
centraux](../glpi/config_common.html "Les paramètres centraux se configurent depuis le menu Configuration > Générale")
