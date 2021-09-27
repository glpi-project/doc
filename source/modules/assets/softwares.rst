Software
========

GLPI allows management of software and their versions as well as licenses, associated or not to software versions.

A software is by default associated with an entity.

Financial management is done at the level of licenses; the financial management at software level is only a model for the licenses associated with this software.

Software can be imported automatically using a third-party inventory tool; in this case a dictionary can be used to filter or clean the import data (see [Configure data dictionaries](07_Module_Administration/06_Dictionnaires.rst "The dictionaries are managed from menu entry Administration > Dictionaries")).

Some fields are specific in the software form:

- **Update** is an information, with no processing associated and which tells whether the software is an update of another software
- **Category** allows to group software in the list of software of an asset
- **Can be associated with a ticket** defines whether the software can be seen in the drop-down list "Hardware" of a  ticket


It is recommended to first create the software without a version number in the name, then to create the versions and last to create the licenses.

.. note::
   In multi-entity mode, the list of software can rapidly become long because of double entries (one software per entity).
   A better approach can consist in grouping identical software in the same entity (see tab *Grouping* below), then to make recursive the elements that can be made recursive.

It is possible to use :doc:`templates with software <../overview/templates>`.

The different tabs
------------------

.. _versions_soft:


Versions
~~~~~~~~

A version of a software is the element that can be installed on a asset; see also :ref:`*Installations* tab <tab-install-software>`.

The main view lists the number of installations of the version.

Specific fields:

* **Name**: the version number
* **Status**: in ITIL recommendations, it allows to follow the DSL (library storing authorized versions)
* **Operating system**: the operating system on which this software version runs
* **Installations**: the number of installations of the version
* **Comment**: some comments


Licenses
~~~~~~~~


..  _tab-install-software:

Installations
~~~~~~~~~~~~~

The installation of a software on a computer is visualized through a :ref:`version <versions_soft>` and can be consulted on a software form (list of computers having at least one version installed), on a version form (computers having this version installed) and finally on a computer form (list of versions of installed software, sorted by category).

.. note::

   * Column `license` is filled only when the license is affected to the concerned computer
   * The initial display of different categories depend upon user preferences (see [manage preferences](01-premiers-pas/03_Utiliser_GLPI/04_Gérer_ses_préférences.rst").


Two options are available on the list of installations of software on a computer. Above the list, **Install** allows to install manually a version of a software on the computer, by selecting first the software and its version; if a license is associated with this software, the use version of the license is automatically selected.

To **Uninstall** a version of a software, mass actions must be used: first select the versions to be uninstalled, then select **Suppress definitively**. If a license is affected to the computer, it remains affected but its use version is erased.

Following the list of installed versions, the list of affected but non installed licenses is displayed. It is possible to add a new license to the computer. Mass actions allow, via the action **Install**, to install a use version of selected licenses.

.. include:: ../tabs/management.rst

.. include:: ../tabs/contracts.rst

.. include:: ../tabs/documents.rst

.. include:: ../tabs/tickets.rst

.. include:: ../tabs/problems.rst

.. include:: ../tabs/external-links.rst

.. include:: ../tabs/notes.rst

.. todo::
   Fix this reference (include or link???)
   **[Onglet "Réservations"](Les_différents_onglets/Onglet_Réservations.rst)**
   Gestion des réservations pour un objet d'inventaire

.. include:: ../tabs/historical.rst

Grouping
~~~~~~~~

This section describes how to group software having same names in sub-entities, allowing to group software of child entities into mother entity.

.. note::

   This is only available for multi-entities platforms.

How to realize a grouping:


#. If the software does not exist in mother entity, create in this mother entity a software whose name is strictly identical to the name of software in child entities

#. Open the form of the software of the mother entity 

#. Activate recursivity (sub-entities to Yes at top right); this will make a new tab `Grouping` appear after tab `History`

#. Open this tab; a list displays software having same names in child entities

#. Select appropriate lines and validate grouping

.. warning::

   This operation cannot be undone

This grouping have the following effects:

* Licenses are attached to the software in mother entity, but stay in origin sub-entities
* Versions are merged, no more doubles in mother entity
* Old software are moved to the trash

.. note::

   When using a third-party inventory tool, some extra steps are mandatory:

   * Empty trash after grouping, otherwise synchronization will restore the old software in case of new version
   * Associate the same vendor to the new software; as the synchronization checks vendor name, a new software would then be created

.. include:: ../tabs/debug.rst

.. include:: ../tabs/all.rst

The different actions
---------------------

Apart from :doc:`common actions <../overview/actions>`, some actions are specific to software:

* :ref:`Add a version to a software <versions_soft>`
* **[Manage licenses](03_Module_Parc/04_Logiciels/Onglet_Licences.rst)**
  From menu ***Assets > Softwares*** click on license name in tab *Licenses*.
