Onglet Parc
===========

L'onglet parc permet de régler les paramètres généraux concernant la
partie inventaire de l'application.

L'interfaçage avec un outil d'inventaire rend possible l'inventaire
automatisé des matériels. Cet interfaçage est possible au travers d'un
plugin.

A la création d'un gabarit, il est possible d'ajouter des champs générés
automatiquement à partir d'un modèle (par exemple : le nom du matériel,
le numéro d'inventaire). L'incrémentation des valeurs de ces champs se
fait soit par entité soit de manière globale.

Il est possible de modifier automatiquement la catégorie des logiciels
supprimés par le dictionnaire. Par défaut ceux-ci sont déplacés
automatiquement dans la catégorie **FUSION**.

GLPI permet aussi de transférer un ordinateur dans une autre entité si
un des critères utilisé pour l'affectation à une entité est modifié. Si
l'option **Modèle pour le transfert automatique d'ordinateur dans une
autre entité** indique un modèle existant, à chaque mise à jour d'un
ordinateur depuis l'outil d'inventaire, le moteur de règles
d'affectation des entités sera rejoué. Si l'entité résultante est
différente de l'entité de l'ordinateur, celui-ci sera transféré.

La date de début de l'exercice fiscal utilisée dans la partie Gestion se
configure ici.

Lors de la création manuelle d'un matériel, il est demandé à
l'utilisateur de choisir le type de gestion (unitaire ou globale) de ce
dernier. Par la suite, un matériel géré de manière unitaire peut passer
sous le mode de la gestion globale. Il est possible de restreindre le
type de gestion selon les matériels.

Lors de la connexion directe à un ordinateur d'un élément géré de
manière unitaire, il est possible de lui attribuer des informations
récupérées depuis l'ordinateur. Lors de la déconnexion, il est possible
d'effacer ces informations. Ces fonctionnalités ne sont pas activées par
défaut.

**Sujet parent :** [Configurer les paramètres
centraux](../glpi/config_common.html "Les paramètres centraux se configurent depuis le menu Configuration > Générale")
