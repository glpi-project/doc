Ordinateurs
===========

Dans la fiche d'un ordinateur, on trouve un certain nombre d'informations concernant le système d'exploitation (nom, version, service pack, numéro de série, product ID), les caractéristiques générales (fabricant, modèle, type, numéro de série), les informations de gestion (responsable technique, statut, localisation) et les usagers du poste (connus ou non dans GLPI).

D'autres champs sont informatifs, comme `Réseau` (type de connexion au poste), et la `source de la mise à jour` qui est un intitulé indiquant d'où proviennent les mises à jour d'un poste (oui/non, Windows update, yum, apt, etc).

Il est possible d'utiliser les :doc:`gabarits avec les ordinateurs <../generalites/gabarits>`.

.. note::

   * Dans le cas d'une utilisation de GLPI couplé avec un outil d'inventaire, différentes informations sur l'importation sont également disponibles.
   * Un ordinateur peut être à la fois un serveur, un ordinateur de bureau ou un portable. Pour les différencier, il est possible d'utiliser le champ type.

Les différents onglets
----------------------

.. include:: onglets/composants.rst

Volumes
~~~~~~~

Gestion des volumes des ordinateurs. Un volume lié à un ordinateur est caractérisé par son nom, la partition physique, son point de montage, son système de fichiers ainsi que sa taille. Il est également possible de définir la taille restant libre sur le volume.

.. note::

   En cas d'utilisation d'un outil d'inventaire tiers, ces informations peuvent être automatiquement importées et mises à jour.


Logiciels
~~~~~~~~~

Gestion des logiciels installés sur les ordinateurs. Ceux-ci sont triés par catégorie et sont caractérisés par leur nom, leur version ainsi que le statut de cette dernière.

Si une licence est associée à l'utilisation de ce logiciel sur cet ordinateur, l'information sera également présentée.

Pour installer un logiciel, sélectionner son nom dans la liste déroulante, puis sa version.

.. note::

    * La liste déroulante énumère les logiciels disponibles dans l'entité.
    * La liste des logiciels disponibles se paramètre dans la :ref:`gestion des logiciels <gestion-logiciels>`.

Pour associer une licence à cet ordinateur, sélectionner le logiciel puis la licence souhaitée dans la liste déroulante.

.. include:: onglets/connexions.rst

.. include:: onglets/ports-reseaux.rst

.. include:: onglets/gestion.rst

.. include:: ../onglets/contrats.rst

.. include:: ../onglets/documents.rst

Virtualisation
~~~~~~~~~~~~~~

Dans cet onglet, on retrouve tous les systèmes de virtualisation (machines virtuelles, containers, jails, ...) associés à un hôte (host) ou l'hôte sur lequel un système de virtualisation est installé. Les informations disponibles varient d'un système à l'autre, en fonction des information qu'il est effectivement possible d'obtenir.

pour une machine virtuelle par exemple, on trouvera son nom, son système de virtualisation, son modèle de virtualisation, l'état de la machine virtuelle, la mémoire allouée ainsi que le nom de la machine physique (hôte) et le nombre de processeurs logiques.

GLPI réalise actuellement la liaison entre un hôte et une machine virtuelle en se basant sur l'identifiant unique (uuid). Dans certains cas, il arrive que l'uuid soit différent au sein de la machine physique et virtuelle, la liaison est alors impossible.

Le seul moyen d'associer manuellement une machine virtuelle à une machine physique est d'attribuer à la machine virtuelle déclarée sur l'hôte et à la machine virtuelle dans GLPI un uuid identique.

.. note::

   En cas d'utilisation d'un outil d'inventaire tiers, ces informations peuvent être automatiquement importées et mises à jour.

.. include:: ../onglets/tickets.rst

-   **[Onglet "Problèmes"](Les_différents_onglets/Onglet_Problèmes.md)**

-   **[Onglet "Liens"](Les_différents_onglets/Onglet_Liens.md)**
     Pour certains éléments, les liens externes se gèrent depuis le menu ***Liens externes***

-   **[Onglet "Notes"](Les_différents_onglets/Onglet_Notes.md)**

-   **[Onglet "Réservations"](Les_différents_onglets/Onglet_Réservations.md)**
     Gestion des réservations pour un objet d'inventaire

-   **[Onglet "Historique"](Les_différents_onglets/Onglet_Historique.md)**
     L'historique est visualisé depuis l'onglet *Historique*

.. include:: ../onglets/debug.rst

.. include:: ../onglets/all.rst

Les différentes actions
-----------------------

Outre les :doc:`actions communes <../generalites/actions>` ; certaines actions sont spécifiques aux ordinateurs :

* **Installer un logiciel avec licence sur un ordinateur**
    Depuis l'onglet *Logiciels*, ajouter une licence en choisissant le nom du logiciel suivi du nom de la licence.
    Depuis les actions de masse du tableau récapitulatif, choisissez **Installer**.

    .. warning::

       Un logiciel ne peut être installé que si sa licence possède une version d'achat et/ou d'utilisation.
