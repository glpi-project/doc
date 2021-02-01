Gérer les notes personnelles ou publiques
=========================================

Une note dans GLPI est un simple champ texte et pièce jointe permettant de transmettre des informations aux utilisateurs de la plateforme. 

Une note est caractérisée par:

* une durée de vie;
* un statut;
* la possibilité de la faire apparaître dans le planning;
* les cibles de la note.

.. image:: images/details-notes.png
       :alt: Caractérisation d'une note
       :align: center

Les notes saisies apparaissent ensuite sur la page d'accueil de GLPI ou
dans le planning des utilisateurs concernés.

.. image:: images/dashboard-notes.png
       :alt: Note dans l'accueil de GLPI
       :align: center

.. image:: images/planning-notes.png
       :alt: Note dans le planning de GLPI
       :align: center

.. note::
      
      Il est possible de déterminer une date de début et de fin de publication pour chaque note. Si la date de début n'est pas mentionnée, la note sera visible immédiatement jusqu'à la date de fin. Si la date de fin n'est pas mentionnée, la note sera visible de façon permanente à partir de la date de début.

      L'ajout d'une note au calendrier permet de la faire apparaître sur le planning des utilisateurs concernés par la note : celui de l'utilisateur pour une note personnelle, les plannings de tous les utilisateurs dans le cas d'une note publique. Une note planifiée n'est pas supprimée une fois la date expirée.




Les différents onglets
----------------------

.. include:: ../tabs/documents.rst

Cible
~~~~~
Une note est considérée comme personnelle par défaut. Elle est, par conséquent, uniquement visible par son rédacteur. 

Pour qu'une note devienne visible par d'autres utilisateurs (note publique), il est nécessaire de sélectionner une ou plusieurs cibles. La ou les cibles correspondent aux entités, profils, groupes ou utilisateurs qui pourront consulter la note. 

Une note publique est visible pour les utilisateurs associés à un profil ayant le droit de lire les notes publiques.

.. image:: images/targets-notes.png
       :alt: Cibles d'une note de GLPI
       :align: center

.. include:: ../tabs/hitorical.rst

.. include:: ../tabs/all.rst

Les différentes actions
-----------------------

* :doc:`Ajouter une note <../../Les_différentes_actions/creer_un_nouvel_objet>`
* :doc:`Visualiser une note <../../Les_différentes_actions/visualiser_un_objet>`
* :doc:`Modifier une note <../../Les_différentes_actions/modifier_un_objet>`
* :doc:`Supprimer une note <../../Les_différentes_actions/Supprimer_un_objet>`
* :doc:`Associer un document à une note <../../Les_différentes_actions/associer_un_document_a_un_objet>`
* Rendre une note publique : Ajouter une cible à la note.
* Publier une note pendant une période donnée : Ajouter une date de début et une date de fin au niveau de la visibilité.