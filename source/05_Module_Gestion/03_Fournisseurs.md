Gérer les fournisseurs
======================

GLPI intègre une gestion des fournisseurs, qui est différente de celle des fabricants (voir [Configurer les intitulés](index.php?fr/08_Module_Configuration/02_Intitulés/01_Intitulés.md "Les intitulés se configurent depuis le menu Configuration > Intitulés")).
Celui-ci sert à la fois à identifier qui a vendu un matériel (dans la gestion de parc) mais aussi à attribuer des tickets à cette personne ou société.

Lors de l'achat d'un matériel de marque XX à un fournisseur YY, il faut traiter deux informations distinctes à savoir le fabricant (XX) et le fournisseur (YY).

Un fournisseur se caractérise par un nom, un type de tiers (intitulé), des informations de localisation (adresse, code postal, ville, pays) et de contact (site web, téléphone et fax).

Sa gestion peut être globale à toutes les entités (champs Sous-entités à oui) ou locale.

Un fournisseur est commun à toute les entités quand il s'agit d'un fournisseur global à l'entreprise ; il sera déclaré sur l'entité la plus haute et visible dans les sous-entités. 
Par contre, un fournisseur local à une entité sera créé par le gestionnaire de parc de celle-ci, et sera seulement visible dans ce périmètre. 
Bien entendu, une personne ayant une visibilité récursive sur toutes les entités verra à la fois les fournisseur globaux et locaux.

***Remarque :** Il n'est pas nécessaire de mettre le `http://` au début de l'adresse internet*.

Les différents onglets
----------------------
-   **[Onglet "Contacts"](index.php?fr/Les_différentes_actions/Lier_contacts_et_fournisseurs.md)**
    Cet onglet permet d'ajouter un ou plusieurs contacts à ce fournisseur.
    Il liste également les différents contacts associés au fournisseur.

-   **[Onglet "Contrats"](index.php?fr/Les_différents_onglets/Onglet_Contrats.md)**
    Gérer les contrats associés

-   **[Onglet "Eléments"](index.php?fr/Les_différents_onglets/Onglet_Eléments.md)**
    Cet onglet permet de visualiser les éléments attachés à ce fournisseur.

-   **[Onglet "Documents"](index.php?fr/Les_différents_onglets/Onglet_Documents.md)**

-   **[Onglet "Tickets"](index.php?fr/Les_différents_onglets/Onglet_Tickets.md)**

-  **[Onglet "Liens"](index.php?fr/Les_différents_onglets/Onglet_Liens.md)**
     Pour certains éléments, les liens externes se gèrent depuis le menu ***Liens externes***

-   **[Onglet "Notes"](index.php?fr/Les_différents_onglets/Onglet_Notes.md)**

-   **[Onglet "Historique"](index.php?fr/Les_différents_onglets/Onglet_Historique.md)**
     L'historique est visualisé depuis l'onglet *Historique*

-   **[Onglet "Tous"](index.php?fr/Les_différents_onglets/Onglet_Tous.md)**
    Toutes les informations sont affichées sur une seule page.

Les différentes actions
-----------------------
-   **[Ajouter un fournisseur](index.php?fr/Les_différentes_actions/Créer_un_nouvel_objet.md)**
-   **[Voir un fournisseur](index.php?fr/Les_différentes_actions/Visualiser_un_objet.md)**
-   **[Modifier un fournisseur](index.php?fr/Les_différentes_actions/Modifier_un_objet.md)**
-   **[Supprimer un fournisseur](index.php?fr/Les_différentes_actions/Supprimer_un_objet.md)**
-   **[Associer un document à un fournisseur](index.php?fr/Les_différentes_actions/Lier_un_document_à_un_objet.md)**
-   **[Associer un contrat à un fournisseur](index.php?fr/Les_différentes_actions/Lier_un_contrat_à_un_objet.md)**
-   **Associer un élément à un fournisseur**
    Il suffit de choisir ce fournisseur dans l'onglet *Gestion* de l'objet.
-   **[Associer un contact à un fournisseur](index.php?fr/Les_différentes_actions/Lier_contacts_et_fournisseurs.md)**
-   **[Transférer un fournisseur vers une autre entité](index.php?fr/Les_différentes_actions/Transférer_un_objet.md)**

-------
**Sujet parent :** [Module Gestion](index.php?fr/05_Module_Gestion/01_Module_Gestion.md "Le module Gestion permet aux utilisateurs de gérer les contacts, les fournisseurs, les budgets, les contrats et les documents")
