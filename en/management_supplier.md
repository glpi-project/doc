Supplier Management
===================

Suppliers are managed via menu Management \> Suppliers

GLPI supplier management is different than GLPI manufacturer management
(see [Configurer les
intitulés](config_dropdown.html "Les intitulés se configurent depuis le menu Configuration > Intitulés")).
This feature allows hardware seller identification (in asset management)
and also ticket assignment to this person or company.

When buying hardware from brand XX from a supplier YY, then two distinct
information need to be managed: manufacturer (XX) and supplier (YY).

A supplier is characterized by a name, a third party type (dropdown
label), and localization information (address, zip code, city, country)
and contact (web site, phone and fax).

Its management can be global to all entities (field Child entities set
to Yes) or local.

A supplier is common to all entities when it is a global supplier to the
company; it will be declared on the upper entity, and set visible to
child entities. On the contrary, a local supplier to an entity will be
created by the local entity asset manager, and it will be only visible
in this scope. Of course a user with a recursive right on all entities
will see at the same time global and local suppliers.

CAUTION:

If a web site is defined for the company, don't forget to use `http://`
to start the Internet address.

-   **[Add a supplier](../glpi/management_supplier_t_create.html)**\
-   **[See a supplier](../glpi/management_supplier_t_read.html)**\
-   **[Update a supplier](../glpi/management_supplier_t_update.html)**\
-   **[Delete a supplier](../glpi/management_supplier_t_delete.html)**\
-   **[Link contacts and
    suppliers](../glpi/management_contact_supplier.html)**\
     GLPI allows to link contacts and suppliers
-   **[Associate a supplier to a
    contact](../glpi/management_supplier_t_linktocontact.html)**\
-   **[Link contracts and
    suppliers](../glpi/management_supplier_contract.html)**\
     Linked contracts to suppliers.
-   **[Associate items to
    supplier](../glpi/management_supplier_hardware.html)**\
     Associated items to suppliers
-   **[Associate documents](../glpi/inventory_document.html)**\
     Associated documents can be managed from the tab Documents
-   **[Associate a supplier to a
    document](../glpi/management_supplier_t_linktodocument.html)**\
-   **[Tickets management](../glpi/inventory_ticket.html)**\
     For items, tickets can be managed from tab Tickets
-   **[Associate external links](../glpi/inventory_link.html)**\
     For some items, external links are managed from External links menu
-   **[Manage notes](../glpi/notes.html)**\
     For an item, notes are managed from the tab Notes
-   **[View History](../glpi/inventory_log.html)**\
     The history is viewed from the tab Historical
-   **[View all information on one page](../glpi/inventory_all.html)**\
     For an item all information are showed on only one page from tab
    All

**Parent topic:** [Management
Module](../glpi/management.html "The Management module allows users to manage contacts, suppliers, budgets, and contracts and documents")
