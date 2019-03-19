Niveaux d'escalade
==================

Des niveaux d'escalades peuvent être définis au sein d'un SLA. Chaque
niveau déclenche des actions automatiques permettant la résolution du
ticket dans les meilleurs délais. Un niveau se déclenche avant ou après
la date d'échéance du SLA en fonction du délai défini.

::

    Par exemple, un jour avant l'échéance, le ticket est affecté au support de niveau 2 et sa priorité passée à Haute.

Les niveaux d'escalades peuvent être conditionnés par des critères de
déclenchement. Sans critère, le niveau sera déclenché mais si des
critères sont définis, ils seront contrôlés avant application du niveau
d'escalade.

::

     Par exemple, si 1 jour avant la date d'échéance vous souhaitez envoyer un rappel à l'administrateur si le ticket est toujours à l'état *Nouveau*, il faut définir comme critère `Status est Nouveau`.

Les différents onglets
----------------------

-  **Onglet "Critères"** Permet d'ajouter un nouveau critère et liste
   les critères déjà définis pour ce niveau d'escalade.

-  **Onglet "Actions"** Permet d'ajouter une action qui sera exécutée si
   le critère défini est rempli. Il liste également les actions déjà
   définies pour ce niveau d'escalade.

-  **`Onglet
   "Historique" <Les_différents_onglets/Onglet_Historique.rst>`__**
   L'historique est visualisé depuis l'onglet *Historique*

.. include:: ../../onglets/debug.rst

.. include:: ../../onglets/all.rst

Les différentes actions
-----------------------

-  **Ajouter un nouveau niveau d'escalade]** Cette action se fait via
   l'onglet *Niveaux d'escalade* d'un SLA

--------------

**Sujet parent :** `SLA <08_Module_Configuration/05_Sla/01_Sla.rst>`__

**Sujet parent :** `Module
Configuration <08_Module_Configuration/01_Module_Configuration.rst>`__
