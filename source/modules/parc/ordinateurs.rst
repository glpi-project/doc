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

.. include:: onglets/os.rst

.. include:: onglets/composants.rst

.. include:: onglets/volumes.rst

.. include:: onglets/logiciels.rst

.. include:: onglets/connexions.rst

.. include:: onglets/ports-reseaux.rst

.. include:: ../onglets/gestion.rst

.. include:: ../onglets/contrats.rst

.. include:: ../onglets/documents.rst

.. include:: onglets/virtualisation.rst

.. include:: onglets/antivirus.rst

.. include:: ../onglets/tickets.rst

.. include:: ../onglets/problemes.rst

.. include:: ../onglets/changements.rst

.. include:: onglets/liens.rst

.. include:: ../onglets/notes.rst

-   **[Onglet "Réservations"](Les_différents_onglets/Onglet_Réservations.rst)**
     Gestion des réservations pour un objet d'inventaire

.. include:: ../onglets/historique.rst

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
