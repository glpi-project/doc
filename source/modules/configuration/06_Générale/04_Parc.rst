Onglet Parc
===========

Cet onglet parc permet de définir les paramètres généraux concernant la
partie inventaire de l'application.

Parc
----

.. figure:: docs/image/configparc.png
   :alt: image

   image

-  **Activer les informations financières et administratives par
   défaut** : applicable pour tous les objets de l'inventaire.

-  **Catégorie des logiciels supprimés par les règles du dictionnaire**
   : il est possible de modifier automatiquement la catégorie des
   logiciels supprimés par le dictionnaire. Par défaut ceux-ci sont
   déplacés automatiquement dans la catégorie FUSION.

-  **Début de l'année fiscale** : utilisée dans la partie Gestion

-  \*\*Champs automatiques (marqués par \*)\*\* : à la création d'un
   gabarit, il est possible d'ajouter des champs générés automatiquement
   à partir d'un modèle (par exemple : le nom du matériel, le numéro
   d'inventaire). L'incrémentation des valeurs de ces champs se fait
   soit par entité soit de manière globale.

-  **Restreindre la gestion des moniteurs** :
-  **Restreindre la gestion des périphériques** :
-  **Restreindre la gestion des téléphones** :
-  **Restreindre la gestion des imprimantes** : Lors de la création
   manuelle d'un matériel, il est demandé à l'utilisateur de choisir le
   type de gestion (unitaire ou globale) de ce dernier. Une gestion
   globale n'importe qu'une seule fois un élément contrairement à une
   gestion unitaire qui l'importe autant de fois qu'utilisé exemple :
   une imprimante partagée par plusieurs utilisateur, moniteur relié à
   un commutateur d'écran Par la suite, un matériel géré de manière
   unitaire peut passer sous le mode de la gestion globale. Il est
   possible de restreindre le type de gestion selon les matériels.

.. figure:: docs/image/configtransfert.png
   :alt: image

   image

-  **Modèle pour le transfert automatique d'ordinateurs dans une autre
   entité** : GLPI permet aussi de transférer un ordinateur dans une
   autre entité si un des critères utilisé pour l'affectation à une
   entité est modifié. Si l'option Modèle pour le transfert automatique
   d'ordinateur dans une autre entité indique un modèle existant, à
   chaque mise à jour d'un ordinateur depuis l'outil d'inventaire, le
   moteur de règles d'affectation des entités sera rejoué. Si l'entité
   résultante est différente de l'entité de l'ordinateur, celui-ci sera
   transféré.

.. figure:: docs/image/configpc.png
   :alt: image

   image

L'interfaçage avec un outil d'inventaire rend possible l'inventaire
automatisé des matériels. Cet interfaçage est possible au travers d'un
plugin.

-  **Lors de la connexion ou mise à jour** : lors de la connexion
   directe à un ordinateur d'un élément géré de manière unitaire, il est
   possible de lui attribuer des informations récupérées depuis
   l'ordinateur
-  **Lors de la déconnexion** : lors de la déconnexion, il est possible
   d'effacer ces informations. Ces fonctionnalités ne sont pas activées
   par défaut et concernent tous les éléments de l'inventaire ayant les
   champs usager, utilisateur, groupe et lieu qui sont récupérés via
   l'agent d'inventaire et le champ statut que vous définissez.

Exemple : lors de la première remontée d'inventaire vous pouvez définir
que le moniteur connecté à l'ordinateur prendra le statut Production. En
cas de déconnexion il prendra le statut Disponible

--------------

**Sujet parent :** `Configurer les paramètres
centraux <08_Module_Configuration/06_Générale/01_Configures_les_paramètres_centraux.rst>`__
