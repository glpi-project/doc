Gérer les documents
===================

Cette section permet d'enregistrer des documents électroniques ou liens web classables selon diverses rubriques.

Un document possède un **nom** ainsi qu'un **commentaire** et peut être associé à une **rubrique**.

Le fichier physique correspondant au document peut être ajouté dans GLPI de plusieurs manières :

-   En parcourant le disque dur local ;
-   En renseignant un lien web pointant vers un document (*une image, une page web, un PDF...*) ;
-   En précisant un fichier préalablement chargé par FTP (*dans le dossier /mon_glpi/files/_uploads/*)

Enfin un type MIME peut aussi être indiqué. Pour une liste de valeurs possible, référez-vous à l'adresse suivante :*[http://fr.wikipedia.org/wiki/Type\_mime\#Liste\_de\_media\_type\_usuels](http://fr.wikipedia.org/wiki/Type_mime#Liste_de_media_type_usuels)*.

**Remarques :**
*- Les types de documents autorisés dans GLPI (selon leur extension) sont définis dans **Configuration > Intitulés > Gestion > Type de document.***
*- Les rubriques de documents peuvent être hiérarchiques.*
*- L'option **Interdire à l'importation** permet d'exclure ce document à l'importation via les collecteurs (images de signatures, logos...).*

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
-   **[Ajouter un document](Les_différentes_actions/Créer_un_nouvel_objet.rst)**
-   **[Voir un document](Les_différentes_actions/Visualiser_un_objet.rst)**
-   **[Modifier un document](Les_différentes_actions/Modifier_un_objet.rst)**
-   **[Supprimer un document](Les_différentes_actions/Supprimer_un_objet.rst)**
-   **[Associer un document à un autre document](Les_différentes_actions/Lier_un_document_à_un_objet.rst)**
-   **[Transférer un document vers une autre entité](Les_différentes_actions/Transférer_un_objet.rst)**
