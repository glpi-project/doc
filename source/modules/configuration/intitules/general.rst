Général
+++++++

Lieux
-----

La liste des lieux est de type arborescente : chaque élément peut avoir des sous-éléments (Lieu 1 > Sous-lieu 1 > Sous-sous-lieu 1). Elle peut être déléguée par entité.

Dans la fiche d'un lieu, on trouve un certain nombre d'informations concernant ce lieu (code du bâtiment, de la pièce, longitude, latitude, altitude) ainsi que l'information précisant le lieu père (comme enfant de) et si le lieu peut être visible des sous entités.

Lieux
~~~~~

Liste les sous-lieux existants et permet d'en ajouter un nouveau.

Eléments
~~~~~~~~

Liste tous les éléments affectés à ce lieu. Vous pouvez choisir de n'afficher qu'un type d'élément (ordinateur, utilisateur, prise réseau, logiciel...).

.. include:: ../../onglets/historique.rst

.. include:: onglets/traduction.rst

Prise réseau
~~~~~~~~~~~~

![image](docs/image/priseReseau.png)

Liste les prises réseau affectées à ce lieu et permet d'en ajouter une nouvelle. Dans ce cas, lors de la sélection d'une prise sur un port réseau d'un matériel, seules les prises réseau disponibles du lieu du matériel (et des lieux enfants) apparaissent.

L'ajout peut être unique via la partie haute ou multiple via la partie basse. Pour l'ajout multiple, vous pouvez préfixer le numéro de la prise comme indiqué dans la copie d'écran.

Autre exemple : considerant le préfixe `bru`, `9` et `11` les bornes de la numérotation et `srv` le suffixe ; les prises réseau créées seront nommées : `bru09srv`, `bru10srv` et `bru11srv`.

.. include:: ../../onglets/all.rst

Statuts
-------

La liste des statuts est de type arborescente : chaque élément peut avoir des sous-éléments. Elle peut être déléguée par entité.

Dans la fiche d'un statut, on trouve un certain nombre d'informations concernant la visibilité de ce statut ainsi que l'information précisant le statut père (comme enfant de) et si le statut peut être visible des sous entités.

Statuts des éléments
~~~~~~~~~~~~~~~~~~~~

Liste les sous-statuts existants et permet d'en ajouter un nouveau.

.. include:: onglets/traduction.rst

.. include:: ../../onglets/all.rst

Fabricants
----------

Cette liste est une liste de valeurs à plat valable pour toutes les entités.

Elle ne possède pas qu'un seul onglet, celui du formulaire.

Listes noires
-------------

La liste des Listes noires est une liste de valeurs à plat valable pour toutes les entités.

Elle comprend la valeur que vous voulez mettre en liste noire ainsi que sur quel type l'appliquer (IP, MAC, numéro de série, UUID ou courriel).
Les listes noires sont utilisées pour les imports automatique via un agent d'inventaire ou par le collecteur de courriels.

.. include:: ../../onglets/historique.rst

.. include:: ../../onglets/all.rst

Contenu de courriel interdit
----------------------------

Cette liste est une liste de valeurs à plat valable pour toutes les entités.

Elle ne possède pas qu'un seul onglet, celui du formulaire.

Elle permet au collecteur de courriels de ne pas importer un courriel contenu le texte défini. Cela peut permettre, entre autre, de lutter contre le spam dans le cas de l'autorisation de création de ticket pour les courriels anonymes.
