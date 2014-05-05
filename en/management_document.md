Gérer les documents
===================

Les documents sont gérés depuis le menu Gestion \> Documents

Cette section permet d'enregistrer des documents électroniques ou liens
web classables selon diverses rubriques.

Ce document est associable à quasiment tous les types d'objets présent
dans GLPI. En voici la liste :

-   **Budget**.
-   **Contrat**.
-   **Entité**.
-   **Fournisseur**.
-   Tous types de matériel (*Imprimante, Ordinateur, Moniteur...*).
-   **Licence**.
-   **Logiciel**.
-   **Ticket** et **problèmes**.
-   **Consommable**.
-   certains plugins.

Créer un document
-----------------

Un document possède un **nom**, ainsi qu'un **commentaire** et peut être
associée à une **rubrique**.

Le fichier physique correspondant au document peut être ajouté dans GLPI
de plusieurs manières :

-   en parcourant le disque dur local.
-   En renseignant un lien web pointant vers un document (*une image,
    une page web, un PDF...*).

-   En précisant un fichier préalablement chargé par FTP (*dans le
    dossier /mon\_glpi/files/\_uploads/*)

Enfin un type MIME peut aussi êre indiqué. Pour une liste de valeurs
possible, référez vous à l'adresse suivante
:*[http://fr.wikipedia.org/wiki/Type\_mime\#Liste\_de\_media\_type\_usuels](http://fr.wikipedia.org/wiki/Type_mime#Liste_de_media_type_usuels)*.

Note: Les types de documents autorisés dans GLPI (selon leur extension)
sont définis dans Configuration \> Intitulés \> Gestion \> Type de
document

Note: les rubriques de documents peuvent être hiérarchiques.

Note: l'option Interdire à l'importation permet d'exclure ce document à
l'importation via les collecteurs (images de signatures, logos...).

Une fois le document créé, 4 onglets seront disponibles :

-   **Élément(s) Rattaché(s)** : Permet d'associer un objet au document
    ;
-   **Document(s) Associé(s)** : Permet d'associer un document à un
    autre document ; Exemple : Un premier document nommé "Abonnement"
    qui contiendrait un exemplaire du contrat ainsi que toutes les
    factures ;
-   **Notes** : Permet de préciser toute information utile au document ;
-   **Historique** : Permet comme pour tout objet de GLPI, de consulter
    les actions réalisés sur le document.

-   **[Associate documents](../glpi/inventory_document.html)**\
     Associated documents can be managed from the tab Documents
-   **[Manage notes](../glpi/notes.html)**\
     For an item, notes are managed from the tab Notes
-   **[View History](../glpi/inventory_log.html)**\
     The history is viewed from the tab Historical
-   **[View all information on one page](../glpi/inventory_all.html)**\
     For an item all information are showed on only one page from tab
    All
-   **[Ajouter un
    document](../glpi/management_document_t_create.html)**\
-   **[Voir un document](../glpi/management_document_t_read.html)**\
-   **[Modifier un
    document](../glpi/management_document_t_update.html)**\
-   **[Supprimer un
    document](../glpi/management_document_t_delete.html)**\
-   **[Associate a document with a
    material](../glpi/management_document_t_linktoitem.html)**\
-   **[Associer un document à un autre
    document](../glpi/management_document_t_linktodocument.html)**\

**Parent topic:** [Management
Module](../glpi/management.html "The Management module allows users to manage contacts, suppliers, budgets, and contracts and documents")
