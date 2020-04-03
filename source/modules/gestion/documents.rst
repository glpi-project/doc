Gérer les documents
===================

Cette section permet d'enregistrer des documents électroniques ou liens web classables selon diverses rubriques.

Un document possède un **nom** ainsi qu'un **commentaire** et peut être associé à une **rubrique**.

Le fichier physique correspondant au document peut être ajouté dans GLPI de plusieurs manières :

-   En parcourant le disque dur local ;
-   En renseignant un lien web pointant vers un document (*une image, une page web, un PDF...*) ;
-   En précisant un fichier préalablement chargé par FTP (*dans le dossier /mon_glpi/files/_uploads/*)
-   Enfin un type MIME peut aussi être indiqué. 

**Remarques :**
*- Les types de documents autorisés dans GLPI (selon leur extension) sont définis dans **Configuration > Intitulés > Gestion > Type de document.***
*- Les rubriques de documents peuvent être hiérarchiques.*
*- L'option **Interdire à l'importation** permet d'exclure ce document à l'importation via les collecteurs (images de signatures, logos...).*

.. image:: images/documents.png

Les différents onglets
----------------------

.. include:: ../onglets/elements.rst

Documents
~~~~~~~~~

Il est possible d'associer d'autres documents à un document de GLPI, c'est pourquoi cet objet bénéficie d'un onglet du même type.

.. include:: ../onglets/notes.rst

.. include:: ../onglets/historical.rst

.. include:: ../onglets/all.rst


Les différentes actions
-----------------------

-   :doc:`Ajouter un document <../../Les_différentes_actions/creer_un_nouvel_objet>`

-   :doc:`Visualiser un document <../../Les_différentes_actions/visualiser_un_objet>`

-   :doc:`Modifier un document <../../Les_différentes_actions/modifier_un_objet>`

-   :doc:`Supprimer un document <../../Les_différentes_actions/supprimer_un_objet>`

-   :doc:`Associer un document à un document <../../Les_différentes_actions/associer_un_document_a_un_objet>`

-   :doc:`Transférer un document <../../Les_différentes_actions/transferer_un_objet>`
