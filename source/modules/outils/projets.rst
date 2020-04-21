Gérer les projets
=================

La gestion de projets permet de suivre complètement l'avancement d'un
projet au sein de GLPI, que celui-ci soit lié à un
`changement <04_Module_Assistance/09_Changements.rst>`__ ou non. 

Un projet dans GLPI c'est :

- des tâches associées;
- une équipe désignée;
- la possibilité de déclencher des sous projets au sein d'un même projet;
- construire un diagramme de GANTT;
- la possibilité d'utiliser la méthode Kanban;
- associer des coûts;
- relier les objets ITIL de GLPI.

Les projets ainsi que les tâches peuvent être hiérarchisés ; un projet
peut donc avoir des sous-projets et les tâches des sous-tâches.

Les projets et les tâches disposent de caractéristiques (nom, code,
état, type...), de dates prévisionnelles et réelles ainsi qu'un
pourcentage d'avancement. Des équipes de gestion distinctes peuvent être
composées d'utilisateurs, de groupes, de fournisseurs et de contacts.

Les tâches peuvent être liées à des tickets permettant de planifier des
interventions permettant de mettre en place le projet. Des durées
prévisionnelles et effectives sont également définies au niveau des
tâches. Ces durées ainsi que celles des tickets sont alors consolidées
au niveau du projet lui même.

Des coûts sont associables aux projets auxquels peuvent être ajouté les
coûts des tickets liées aux tâches du projet.

Plusieurs diagrammes de GANTT sont proposés pour chaque projet (voir
onglet *GANTT*).

Les différents onglets
----------------------

Tâches de projet
~~~~~~~~~~~~~~~~

Cet onglet permet d'ajouter une nouvelle tâche au projet. Il liste également les tâches déjà définies pour ce projet en indiquant, pour chaque tâche, son nom, son type, son statut, le pourcentage effectuée, les dates de début et de fin planifiées, les durées planifiée et effective ainsi que le nom de la tâche parent.

.. image:: images/tasks-project.png
        :alt: Les différentes associées au projet
        :align: center


Equipe Projet
~~~~~~~~~~~~~

Cet onglet permet d'ajouter un membre à l'équipe, que ce soit un contact, un fournisseur, un utilisateur ou un groupe. Il liste également chaque membre de l'équipe projet ainsi que son type respectif.

.. image:: images/team-project.png
        :alt: Composition de l'équipe associée au projet
        :align: center


Projet
~~~~~~

Cet onglet liste les sous-projets du projet. Pour définir un sous-projet, il suffit de remplir le champ "comme enfant de" d'un projet.

.. image:: images/subprojects-project.png
        :alt: Visualisation des sous projets
        :align: center

GANTT
~~~~~

Un diagramme de GANTT est proposé pour chaque projet. Un diagramme de GANTT global est également proposé incluant les projets définis comme visible dans ce diagramme.

.. image:: images/gantt-project.png
        :alt: Diagramme de Gantt dans GLPI
        :align: center
Kanban
~~~~~~

Cet onglet met à disposition une interface afin d'utiliser la méthode Kanban dans GLPI.

.. image:: images/kanban-project.png
        :alt: Interface Kanban de GLPI
        :align: center

Coûts
~~~~~

Définition et visualisation des coûts applicables à ce projet.


Objets Itil
~~~~~~~~~~~

C'est dans cet onglet qu'il est possible d'associer au projet actuel les objets itil de GLPI: tickets, problèmes et changements.
Il est possible de créer ces objets depuis cet onglet également.


.. include:: ../onglets/elements.rst

.. include:: ../onglets/documents.rst

.. include:: ../onglets/contrats.rst

.. include:: ../onglets/notes.rst

.. include:: ../onglets/historical.rst

.. include:: ../onglets/debug.rst

.. include:: ../onglets/all.rst

Les différentes actions
-----------------------

-  **`Ajouter un
   projet <Les_différentes_actions/Créer_un_nouvel_objet.rst>`__**
-  **`Modifier un
   projet <Les_différentes_actions/Modifier_un_objet.rst>`__**
-  **`Supprimer un
   projet <Les_différentes_actions/Supprimer_un_objet.rst>`__**
-  **`Associer un document à un
   projet <Les_différentes_actions/Lier_un_document_à_un_objet.rst>`__**
-  **`Associer un élément à un
   projet <Les_différentes_actions/Onglet_Eléments.rst>`__**
-  **`Associer un contrat à un
   projet <Les_différentes_actions/Onglet_Contrats.rst>`__**
-  **`Associer un changement à un
   projet <Les_différentes_actions/Onglet_Problèmes.rst>`__**

