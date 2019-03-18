Rechercher des informations dans GLPI
=====================================

GLPI dispose d'un moteur de recherche permettant d'afficher un ensemble d'éléments vérifiant un certain nombre de critères. Les listes proposées sont paginées. Un bandeau de navigation présent en haut et en bas de la liste permet de définir le nombre d'éléments à afficher par page et de naviguer entre les pages.

Un moteur de recherche global (c'est-à-dire qui peut utiliser des données provenant d'objets de type différent) est également disponible.

Outre la liste des éléments correspondant aux critères énnoncés ; ces listes proposent quelques fonctionnalités annexes :

* export dans différents formats (CSV, PDF, ...)
* la modification massive après sélection,
* un système complet de :ref:`marque-pages <bookmarks>` permettant de sauvegarder les recherches favorites.

Effectuer une recherche basique
-------------------------------

La recherche basique permet d'effectuer des recherches multiples paramétrées et triées, sur un des types de l'inventaire. Suivant la donnée sur laquelle la recherche est effectuée, les opérateurs suivants peuvent être proposés :

* ``contient``,
* ``est``,
* ``n'est pas``,
* ``avant``,
* ``après``.

La recherche sur des dates permet de spécifier une date précise (*Spécifier une date*) ou de la définir par rapport à la date actuelle (*Maintenant*, *+* ou *-* *X* *heure(s)*, *jour(s)*, *mois* ou *année(s)*). Il est de plus possible de spécifier une recherche avant ou après une date donnée, de même que des intervalles prédéfinis (*lundi dernier*, *samedi dernier*, *début du mois*, *début de l'année*, etc).

Pour les intitulés, il est possible de rechercher une valeur donnée (*est*). Si les intitulés peuvent être visibles dans les sous-entités, les choix *sous* et *pas sous* apparaissent. L'ajout de critères s'effectue avec le ``+`` sur arrière plan gris.

Par exemple, pour chercher les ordinateurs possédant plus de 1024 Mio de mémoire et plus de 80% d'espace disque libre :

====  ========  =============================  ===========  ======
*-*   Type      Champ                          Comparaison  Valeur
====  ========  =============================  ===========  ======
*-*   *simple*  *Mémoire*                      *contient*   ``> 1024``
*ET*  *simple*  *Volumes - Pourcentage libre*  *contient*   ``> 80``
====  ========  =============================  ===========  ======

.. note::

   Une fois les critères définis, la recherche est lancée en appuyant sur le bouton Rechercher.

Effectuer une recherche multi-critères
--------------------------------------

La recherche multi-critères permet d'affiner la recherche en l'étendant à d'autres types d'objets grâce à l'ajout de critères globaux de recherche. Ce type de recherche s'obtient en ajoutant des critères avec le ``+`` sur arrière plan blanc.

Par exemple, pour chercher les ordinateurs possédant plus de 1024 Mio de mémoire et plus de 80% d'espace disque libre, attachés à un moniteur de 17 pouces et ayant le logiciel LibreOffice installé :

====  ========  =============================  ===========  ======
*-*   Type      Champ                          Comparaison  Valeur
====  ========  =============================  ===========  ======
*-*   *simple*  *Mémoire (Mio)*                *contient*   ``> 1024``
*ET*  *simple*  *Volumes > Pourcentage libre*  *contient*   ``> 80``
*ET*  *multi*   *Moniteur > Taille*            *contient*   ``17``
*ET*  *multi*   *Logiciels > Nom*              *contient*   ``LibreOffice``
====  ========  =============================  ===========  ======

Éléments dans la corbeille
--------------------------

Certains éléments de GLPI peuvent être mis à la corbeille. Pour les visualiser afin de les restaurer ou de les supprimer définitvement, cliquer sur l'icône représentant une corbeille. Pour retourner à la visualisation des éléments actifs, cliquer à nouveau sur cette icône.

Effectuer une recherche avancée
-------------------------------

Voici quelques exemples d'opérateurs de recherche :

``NULL``
   * rechercher les enregistrements ayant tel champ vide avec un champ date : <nombre_de_mois ou >nombre_de_mois
   * rechercher les matériels avec un délai correspondant au nombre de     mois
   * rechercher les ordinateurs vieux de 5 ans : Date d'achat contient <-60.
``^123``
   Rechercher les enregistrements contenant 123 en début de champ.

   .. warning::

      Sur certains systèmes, il faut taper ``^``, la barre d'espace puis le premier caractère.

``^Windows``
   Rechercher les enregistrements contenant Windows 2000, Windows XP mais pas avec Windows.
``123$``
   Rechercher les enregistrements contenant 123 en fin de champ.
``^123$``
   Rechercher les enregistrements contenant uniquement le texte 123.
Deux critères de recherche liés par l'opérateur ``AND NOT``
   Rechercher les enregistrements ne correspondant pas à un critère (différent de).
*Entité est « Root entity »* ``AND NOT`` *Type contient « Laptop »*
   Rechercher tous les ordinateurs de l'entité « Root entity » qui ne sont pas des laptop.

   .. image:: images/search_example.png
      :alt: Interface pour la recherche

``[Année]-[Mois]-[Jour]`` (AAAA-MM-JJ)
   Rechercher par date.
``\\``
   Pour des questions de sécurité, l'opérateur ``\\`` n'est pas utilisable.

Exporter le résultat d'une recherche
------------------------------------

L'export du résultat de la recherche aux formats pour tableur SLK ou CSV, ou au format PDF peut être réalisé sous deux formes différentes :

* la *page courante* exporte uniquement les données affichées à l'écran (par exemple les 10 premiers résultats sur 200)
* *toutes les pages* exporte l'ensemble des résultats de la recherche.

Le format SLK est exploitable par de nombreux tableurs. Les champs trop longs seront tronqués en cas d'utilisation d'un logiciel qui ne respecte pas totalement les standards. Il est préférable dans ce cas d'utiliser les exports au format CSV.

Si les données exportées en format CSV sont importées dans le logiciel Microsoft Excel, les caractères accentués peuvent ne pas s'afficher correctement. Ce logiciel semble rencontrer des difficultés avec les données encodées en UTF-8.

Effectuer des actions massives
------------------------------

Un système d'actions massives est intégré au moteur de recherche. Il permet d'effectuer des modifications sur tous les éléments sélectionnés :

* *Mettre à la corbeille*,
* *Supprimer définitivement*,
* *Restaurer*,
* *Connecter* / *Déconnecter*,
* *Installer*,
* *Mettre à jour des champs*,
* *Ajouter un document ou un contrat*,
* *Activer les informations financières et administratives*,
* *Transférer*,
* *Synchroniser*,
* ...

Pour l'utiliser il suffit de sélectionner les éléments pour lesquels on veut réaliser une action puis de cliquer sur le bouton *Actions* disponible en haut et en bas de la liste. Ensuite, une fois le type d'action sélectionné, des options sont éventuellement présentées, ainsi qu'un bouton de validation.

Les résultats des actions ainsi que des messages d'information sont présentés à la fin de l'exécution de l'ensemble des actions.

.. note::

   * Vous trouverez dans les entêtes du tableau (en haut et en bas) une case à cocher vous permettant de sélectionner ou dé sélectionner tous les éléments de la liste.
   * Un système d'actions similaire est disponible dans certaines listes présentes au sein des objets eux même. Le fonctionnement est identique à celui exposé ici.

.. warning::

   Le nombre d'éléments manipulables simultanément est limité par les valeurs de ``max_input_vars`` ou de ``suhosin.post.max_vars`` de votre configuration PHP. Vous pourrez donc avoir un message indiquant que les modifications massives sont désactivées. Il vous suffit d'augmenter les valeurs de votre configuration PHP ou réduire le nombre d'éléments affichés.

Recherche rapide
----------------

.. image:: images/search_quick.png
   :alt: Champ de recherche rapide

Cet outil se trouve en haut à droite de l'écran GLPI. Il permet la recherche d'une chaîne de caractères simultanément sur les éléments suivants :

* Tickets,
* Problèmes,
* Changements,
* Projets,
* Ordinateurs,
* Moniteurs,
* Logiciels,
* Matériels Réseau,
* Périphériques,
* Imprimantes,
* Téléphones,
* Contacts,
* Contrats,
* Fournisseurs et Documents,
* Budgets,
* Licences,
* Utilisateurs,
* Groupes.

.. note::

   La recherche ne s'effectue que sur les champs affichés par défaut pour chacun des éléments cités ci-dessus.
