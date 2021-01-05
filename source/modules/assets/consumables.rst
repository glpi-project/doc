Consommables
============

Dans la fiche d'un consommable, plusieurs informations sont disponibles:

-   Sur les caractéristiques générales du consommable (le fabricant, le type, la référence...) ;
-   Sur la gestion du consommable (le responsable technique, son lieu de stockage...).

Le seuil d'alerte correspond à la valeur minimale à partir de laquelle une alerte est déclenchée.

***Remarque :** Pour que les alertes fonctionnent, il faut que les notifications soient activées. (voir [Configurer les notifications](config_notification.html "Les notifications se configurent depuis le menu Configuration > Notifications ;")).*

Pour passer un consommable de l'état de neuf à utilisé, il est nécessaire de renseigner l'utilisateur ou le groupe concerné.

La gestion des stocks partagés est possible en définissant l'élément comme récursif sur une entité. Les éléments seront alors disponibles pour toutes les sous-entités.


Les différents onglets
----------------------

.. _ajout-consommables-modele:

Consommables
~~~~~~~~~~~~

C'est depuis cet onglet que vous pouvez ajouter autant de consommables que nécessaire. Vous pouvez d'ailleurs ajouter plusieurs consommables en une seule fois.

Un premier tableau liste les consommables neufs, le second tableau liste les consommables utilisés avec notamment le nom du groupe ou de la personne à qui il a été donné.

C'est depuis les actions de masse de cet onglet que sont attribuer les consommables (Actions **Donner**).

Figure 1. Onglet Consommables
![image](docs/image/consumable.png)

.. include:: tabs/gestion.rst

.. include:: ../tabs/documents.rst

.. include:: ../tabs/external-links.rst

.. include:: ../tabs/notes.rst

.. include:: ../tabs/debug.rst

.. include:: ../tabs/all.rst

Les différentes actions
-----------------------

Outre les :doc:`actions communes <../generalites/actions>` ; certaines actions sont spécifiques aux consommables :

* :ref:`Ajouter de nouveaux consommables à un modèle <ajout-consommables-modele>` ;
* Lister les consommables attribués
   ![image](docs/image/resumeConsumable.png)
   L'icone de droite permet d'avoir un résumé des consommables prêtés
   ![image](docs/image/resumeConsumableExample.png)
