Gérer les fournisseurs
======================

Les fournisseurs sont gérés depuis le menu Gestion \> Fournisseurs

GLPI intègre une gestion des fournisseurs, qui est différente de celle
des fabricants (voir [Configurer les
intitulés](config_dropdown.html "Les intitulés se configurent depuis le menu Configuration > Intitulés")).
Celui-ci sert à la fois à identifier qui a vendu un matériel (dans la
gestion de parc) mais aussi à attribuer des tickets à cette personne ou
société.

Lors de l'achat d'un matériel de marque XX à un fournisseur YY, il faut
traiter deux informations distinctes à savoir le fabricant (XX) et le
fournisseur (YY).

Un fournisseur se caractérise par un nom, un type de tiers (intitulé) ,
des informations de localisation (adresse, code postal, ville, pays) et
de contact (site web, téléphone et fax).

Sa gestion peut être globale à toutes les entités (champs Sous-entités à
oui) ou locale.

Un fournisseur est commun à toute les entités quand il s'agit d'un
fournisseur global à l'entreprise ; il sera déclaré sur l'entité la plus
haute, et visible dans les sous-entités. Par contre, un fournisseur
local à une entité sera créé par le gestionnaire de parc de celle-ci, et
sera seulement visible dans ce périmètre. Bien entendu, une personne
ayant une visibilité récursive sur toutes les entités verra à la fois
les fournisseur globaux et locaux.

ATTENTION :

Si un site web pour l'entreprise est défini, ne pas oublier le `http://`
au début de l'adresse internet.

-   **[Ajouter un
    fournisseur](../glpi/management_supplier_t_create.html)**\
-   **[Voir un fournisseur](../glpi/management_supplier_t_read.html)**\
-   **[Modifier un
    fournisseur](../glpi/management_supplier_t_update.html)**\
-   **[Supprimer un
    fournisseur](../glpi/management_supplier_t_delete.html)**\
-   **[Lier contacts et
    fournisseurs](../glpi/management_contact_supplier.html)**\
     GLPI permet d'effectuer un lien entre les contacts et les
    fournisseurs
-   **[Associer un fournisseur à un
    contact](../glpi/management_supplier_t_linktocontact.html)**\
-   **[Lier contrats et
    fournisseurs](../glpi/management_supplier_contract.html)**\
     Les contrats associés aux fournisseurs.
-   **[Associer des matériels au
    fournisseur](../glpi/management_supplier_hardware.html)**\
     Les matériels rattachés aux fournisseurs
-   **[Associer des documents](../glpi/inventory_document.html)**\
     Les documents associés se gèrent depuis l'onglet Documents
-   **[Associer un fournisseur à un
    document](../glpi/management_supplier_t_linktodocument.html)**\
-   **[Gérer les tickets](../glpi/inventory_ticket.html)**\
     Pour les éléments, les tickets se gèrent depuis l'onglet Tickets
-   **[Associer des liens externes](../glpi/inventory_link.html)**\
     Pour certains éléments, les liens externes se gèrent depuis le menu
    Liens externes
-   **[Gérer les notes](../glpi/notes.html)**\
     Pour un élément, les notes se gèrent depuis l'onglet Notes
-   **[Visualiser l'historique](../glpi/inventory_log.html)**\
     L'historique est visualisé depuis l'onglet Historique
-   **[Afficher toutes les informations sur une seule
    page](../glpi/inventory_all.html)**\
     Pour un élément, toutes les informations sont affichées sur une
    seule page depuis l'onglet Tous

**Sujet parent :** [Module
Gestion](../glpi/management.html "Le module Gestion permet aux utilisateurs de gérer les contacts, les fournisseurs, les budgets, les contrats et les documents")
