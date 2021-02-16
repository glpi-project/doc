Administrer les groupes
=======================

Il est possible d'ajouter, modifier, supprimer des groupes, de faire des recherches et de les exporter.

Les groupes peuvent être définis sous forme d'arborescence afin de faciliter la navigation et la recherche.

::

    Exemple :
    Direction > Département > Service
    ou
    Support N3 > Réseau > LAN

Les groupes peuvent avoir plusieurs fonctions de rassemblement d'utilisateurs par :
* *compétences* (par exemple les techniciens réseaux, ou les administrateurs de base de données) pour le helpdesk,
* *regroupements organisationnels* (par exemple tous les ordinateurs de la direction ou du service comptable) mais aussi *ensemble de personnes à notifier*.

Les options disponibles permettant de régler ces comportements sont : 
* **Visible dans un ticket** (groupe demandeur et/ou attribution à ce groupe) ; 
* **Peut être notifié** (destinataire de notifications) ; 
* **Peut être superviseur** (uniquement pour un :doc:`projet </modules/tools/projects>`) ;
* **Peut contenir** (matériel et/ou utilisateurs).

Dans la fiche des matériels, 2 notions de groupes sont disponibles : *groupe technique*, qui indique quel groupe de personnes a la charge du matériel (équivalent pour un groupe du responsable technique), et groupe qui indique à quel *groupe* de matériels celui-ci appartient.

.. note:: le groupe technique peut permettre l'auto-attribution d'un ticket à un groupe de techniciens. Voir les catégories de tickets dans le chapitre :doc:`Configurer les intitulés </modules/configuration/intitules/index>`. De la même manière, il peut être utilisé dans les :doc:`Règles métier pour les tickets </modules/administration/rules/ticketbusinessrules>`.

***Astuce*** : si toutes les options sont à *non*, le groupe n'apparaîtra dans aucune liste de sélection. Cela peut être utile pour un groupe supprimé et conservé pour l'historique. C'est aussi utile pour ajouter des groupes vides dans l'arborescence.

Un groupe peut avoir ou plusieurs superviseurs, notion utilisable ensuite pour les notifications, par exemple pour envoyer un courriel au(x) superviseur(s) du groupe à l'ouverture d'un ticket. Voir :doc:`Notifications </modules/configuration/04_Notifications/01_Configurer_les_notifications>`.

Un mécanisme de **délégation** permet à un utilisateur de déclarer des incidents non pas pour lui mais pour un des membres de ce groupe.

::

    Exemple : 
    une secrétaire qui déclare les incidents pour les personnes de la direction.

Les notions de délégation et de superviseur se paramètres dans l'onglet "Utilisateurs" (voir ci-dessous).

L'association d'un utilisateur à un groupe est soit statique, c'est-à-dire réalisée à l'aide de l'interface de GLPI, soit dynamique quand celle-ci est déduite automatiquement de l'annuaire LPAP.

Un groupe est attaché à l'entité dans laquelle il est créé et peut ensuite être visible dans les sous-entités.

Depuis la liste des groupes, vous pouvez importer un groupe depuis un annuaire LDAP via |image| si l'authentification externe est utilisée et que vous avez le droit "Mise à jour auth et sync" dans votre profil.  L'affectation des utilisateurs dans les groupes sera automatique.07\_Module\_Administration/07\_Profils/01\_Profils.rst Si plusieurs annuaires sont configurés, le choix de l'un d'entre eux est proposé, sinon le formulaire de recherche est directement accessible. En fonction des modalités de recherche des groupes (voir :doc:`Authentifier des utilisateurs à partir d'annuaires LDAP </modules/configuration/authentification/ldap>`), un **filtre de recherche dans les groupes** et/ou **un filtre de recherche des utilisateurs** apparaissent : ceux-ci permettent d'affiner la liste affichée et prête à être importée. Si GLPI est utilisé en multi-entités, il est nécessaire de sélectionner l'entité de destination du groupe, ainsi que sa visibilité dans les sous-entités.

\*\ .. note:: l'import des groupes ne peut pas être filtré par entité. De plus, aucune fonction de synchronisation des groupes est disponible. Le seul moyen de rafraîchir la liste des membres d'un groupe depuis un annuaire est de resynchroniser les utilisateurs (voir :doc:`Importer des utilisateurs depuis une source externe </modules/administration/users/usersimport>`).

    Important : dans le cas d'une migration depuis une version inférieure à GLPI 0.80, toute liaison manuelle réalisée préalablement sur un groupe provenant de l'annuaire LDAP sera perdue.

The different tabs
------------------

Sous-groupes
~~~~~~~~~~~~
Permet d'ajouter un sous-groupe au groupe sélectionné et liste les sous-groupes existants.

* **:doc:`Onglet "Eléments utilisés" </Les_différents_onglets/Onglet_Eléments>`** Liste les éléments pour lesquels le champ *Groupe* correspond à ce groupe. La recherche peut être étendue ou sous-groupes ainsi qu'aux membres du groupe (champ *Utilisateur* de l'objet).

* **:doc:`Onglet "Eléments gérés" </Les_différents_onglets/Onglet_Eléments>`** Liste les éléments pour lesquels le champ *Groupe Technique* correspond à ce groupe. La recherche peut être étendue ou sous-groupes ainsi qu'aux membres du groupe (champ *Responsable technique* de l'objet).

Liaison annuaire LDAP
~~~~~~~~~~~~~~~~~~~~~

Cet onglet n'apparait que si vous avez le droit "Mise à jour auth et sync" dans votre profil. Il regroupe les informations permettant à GLPI de retrouver le groupe et ses utilisateurs dans l'annuaire LDAP.

Utilisateurs
~~~~~~~~~~~~

Cet onglet permet d'ajouter un utilisateur à ce groupe en définissant s'il est *délégataire* et/ou *superviseur* de ce groupe. Il liste également les utilisateurs de ce groupe avec recherche possible via critère (délégataire ou superviseur) et également dans les sous-groupe du groupe courant.

Notifications
~~~~~~~~~~~~~

Liste des notifications pour lesquelles ce groupe est destinataire ou le superviseur de ce groupe. |image|]

.. include:: ../tabs/tickets.rst

Pour les groupes, il est possible de lister également les tickets des sous-groupes.

* :doc:`Onglet "Historique" </commontabs/item_historique>`

* **:doc:`Onglet "Tous" </Les_différents_onglets/Onglet_Tous>`** Pour un élément, toutes les informations sont affichées sur une seule page.

The different actions
---------------------

* :doc:`Add a groupe </Les_différentes_actions/creer_un_nouvel_objet>`
* :doc:`Voir un groupe </Les_différentes_actions/visualiser_un_objet>`
* :doc:`Modify a groupe </Les_différentes_actions/modifier_un_objet>`
* :doc:`Delete a groupe </Les_différentes_actions/supprimer_un_objet>`
* :doc:`Attach a élément to a groupe </Les_différents_onglets/Onglet_Eléments>`
* :doc:`Attach a ticket to a groupe </commontabs/item_tickets>`
* :doc:`Transfer a groupe vers une autre entité </Les_différentes_actions/transferer_un_objet>`

.. |image| image:: images/addUserLdap.png
.. |image2| image:: /image/notifGroupe.png

