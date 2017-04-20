Gérer les documents
===================

Cette section permet d'enregistrer des documents électroniques ou liens web classables selon diverses rubriques.

Un document possède un **nom** ainsi qu'un **commentaire** et peut être associé à une **rubrique**.

Le fichier physique correspondant au document peut être ajouté dans GLPI de plusieurs manières :

-   En parcourant le disque dur local ;
-   En renseignant un lien web pointant vers un document (*une image, une page web, un PDF...*) ;
-   En précisant un fichier préalablement chargé par FTP (*dans le dossier /mon_glpi/files/_uploads/*)

Enfin un type MIME peut aussi être indiqué. Pour une liste de valeurs possible, référez-vous à l'adresse suivante :*[http://fr.wikipedia.org/wiki/Type\_mime\#Liste\_de\_media\_type\_usuels](http://fr.wikipedia.org/wiki/Type_mime#Liste_de_media_type_usuels)*.

***Remarques :***
*- Les types de documents autorisés dans GLPI (selon leur extension) sont définis dans **Configuration > Intitulés > Gestion > Type de document.***
*- Les rubriques de documents peuvent être hiérarchiques.*
*- L'option **Interdire à l'importation** permet d'exclure ce document à l'importation via les collecteurs (images de signatures, logos...).*

Les différents onglets
----------------------
-   **Onglet "Eléments rattachés"**
    Cet onglet permet d'ajouter et de visualiser les éléments rattachés à ce document.
    Quasiment tous les objets de GLPI sont associables à un document.
    Le tableau listant les éléments du contrat est trié par type d'éléments avec pour chaque type le nom de l'élément et si présents, les numéros de série et d'inventaire.

-   **[Onglet "Documents"](Les_différents_onglets/Onglet_Documents.md)**
    Il est en effet possible d'associer un document à un autre document (exemple : un premier document nommé "Abonnement" qui contiendrait un exemplaire du contrat ainsi que toutes les factures) ;

-   **[Onglet "Notes"](Les_différents_onglets/Onglet_Notes.md)**

-   **[Onglet "Historique"](Les_différents_onglets/Onglet_Historique.md)**
     L'historique est visualisé depuis l'onglet *Historique*

-   **[Onglet "Tous"](Les_différents_onglets/Onglet_Tous.md)**
     Pour un élément, toutes les informations sont affichées sur une seule page.


Les différentes actions
-----------------------
-   **[Ajouter un document](Les_différentes_actions/Créer_un_nouvel_objet.md)**
-   **[Voir un document](Les_différentes_actions/Visualiser_un_objet.md)**
-   **[Modifier un document](Les_différentes_actions/Modifier_un_objet.md)**
-   **[Supprimer un document](Les_différentes_actions/Supprimer_un_objet.md)**
-   **[Associer un document à un autre document](Les_différentes_actions/Lier_un_document_à_un_objet.md)**
-   **[Transférer un document vers une autre entité](Les_différentes_actions/Transférer_un_objet.md)**

------
**Sujet parent :** [Module Gestion](05_Module_Gestion/01_Module_Gestion.md "Le module Gestion permet aux utilisateurs de gérer les contacts, les fournisseurs, les budgets, les contrats et les documents")
