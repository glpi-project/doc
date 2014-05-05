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

Remarque : Les types de documents autorisés dans GLPI (selon leur
extension) sont définis dans Configuration \> Intitulés \> Gestion \>
Type de document

Remarque : les rubriques de documents peuvent être hiérarchiques.

Remarque : l'option Interdire à l'importation permet d'exclure ce
document à l'importation via les collecteurs (images de signatures,
logos...).

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

-   **[Associer des documents](../glpi/inventory_document.html)**\
     Les documents associés se gèrent depuis l'onglet Documents
-   **[Gérer les notes](../glpi/notes.html)**\
     Pour un élément, les notes se gèrent depuis l'onglet Notes
-   **[Visualiser l'historique](../glpi/inventory_log.html)**\
     L'historique est visualisé depuis l'onglet Historique
-   **[Afficher toutes les informations sur une seule
    page](../glpi/inventory_all.html)**\
     Pour un élément, toutes les informations sont affichées sur une
    seule page depuis l'onglet Tous
-   **[Ajouter un
    document](../glpi/management_document_t_create.html)**\
-   **[Voir un document](../glpi/management_document_t_read.html)**\
-   **[Modifier un
    document](../glpi/management_document_t_update.html)**\
-   **[Supprimer un
    document](../glpi/management_document_t_delete.html)**\
-   **[Associer un document à un
    matériel](../glpi/management_document_t_linktoitem.html)**\
-   **[Associer un document à un autre
    document](../glpi/management_document_t_linktodocument.html)**\

**Sujet parent :** [Module
Gestion](../glpi/management.html "Le module Gestion permet aux utilisateurs de gérer les contacts, les fournisseurs, les budgets, les contrats et les documents")
