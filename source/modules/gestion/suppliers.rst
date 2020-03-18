Gérer les fournisseurs
======================

GLPI intègre une gestion des fournisseurs, qui est différente de celle des fabricants (voir [Configurer les intitulés](08_Module_Configuration/02_Intitulés/01_Intitulés.rst "Les intitulés se configurent depuis le menu Configuration > Intitulés")).
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
-   **[Onglet "Contacts"](Les_différentes_actions/Lier_contacts_et_fournisseurs.rst)**
    Cet onglet permet d'ajouter un ou plusieurs contacts à ce fournisseur.
    Il liste également les différents contacts associés au fournisseur.

.. include:: ../onglets/contrats.rst

-   **[Onglet "Eléments"](Les_différents_onglets/Onglet_Eléments.rst)**
    Cet onglet permet de visualiser les éléments attachés à ce fournisseur.

.. include:: ../onglets/documents.rst

.. include:: ../onglets/tickets.rst

.. include:: ../onglets/external-links.rst

.. include:: ../onglets/notes.rst

.. include:: ../onglets/historical.rst

.. include:: ../onglets/all.rst

Les différentes actions
-----------------------

Outre les :doc:`actions communes <../generalites/actions>` ; certaines actions sont spécifiques aux fournisseurs :

*  **Associer un élément à un fournisseur**
    Il suffit de choisir ce fournisseur dans l'onglet *Gestion* de l'objet.
* Associer un contact à un fournisseur

   La distinction est clairement établie entre le fournisseur, qu'il est possible de lier de manière univoque à des éléments d'inventaire et les contacts, qui composent la liste des personnes permettant d'entrer en relation avec ce fournisseur. Pour établir cette liste, il faut donc associer les contacts au fournisseur concerné.

    Exemple :

    Monsieur Dupont est conseiller de vente dans l'entreprise Acme auprès de qui la structure se fournit régulièrement.
    Créer un fournisseur nommé Acme.
    Créer un contact au nom de Monsieur Dupont.
    Affecter à ce contact le type commercial.
    Puis associer le contact au fournisseur Acme.

