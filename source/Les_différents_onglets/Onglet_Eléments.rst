Onglet "Eléments"
=================

Module Assistance / Module Outils
---------------------------------

Cet onglet permet d'associer un élément à cet objet (ticket, problème,
changement ou projet) en choisissant le type ainsi que l'élément
souhaité.

Les types associables sont les éléments du menu Parc à l'exception des
cartouches et des consommables. Pour un ticket les éléments se limitent
à Logiciels, Ordinateurs, Téléphone.

Un tableau liste les éléments déjà attachés à cet objet. Cette liste est
triée par type d'éléments (avec en dessous le nombre de matériels) et la
liste complète.

Figure 2. Onglet Eléments du module Assistance |image|

***Remarque :** Les cases à cocher des actions de masse n'apparaissent
que si vous avez les droits de modification sur le type d'élément
(ordinateur, imprimante...).*

Module Gestion
--------------

Cet onglet permet de visualiser les éléments attachés à cet objet.

La liste est triée par type d'éléments (avec à côté le nombre de
matériels) et la liste complète. Tout en bas du tableau, est affiché le
nombre total d'éléments associés à cet objet.

Figure 2. Onglet Eléments du module Gestion |image|

Pour associer un élément à un objet du module gestion, il faut réaliser
cette action via l'onglet *Gestion* de l'objet lié.

::

    Exemple :  
    Pour lier un ordinateur à un fournisseur, il faut choisir le fournisseur dans l'onglet *Gestion* de la fiche de l'ordinateur.

**Contrats** Dans le menu ***Contrats***, vous pouvez directement
ajouter un élément associé depuis cet onglet. Outre les éléments de
l'inventaire (ordinateurs, imprimantes, téléphones...) vous pouvez
ajouter un contrat à une licence, un logiciel ou un projet.

Le tableau listant les éléments du contrat est trié par type d'éléments
(avec le nombre de matériels) avec pour chaque type la liste des
éléments.

***Remarque :** Si la liste d'un type d'élément est trop importante, un
lien **Liste des matériels** est substituée au détail.*

Module Administration
---------------------

Vous avez 2 onglets distincts pour lister les éléments :

Pour les **utilisateurs** :

-  Onglet **"Eléments utilisés"** Cet onglet liste deux tableaux dont le
   premier regroupe les objets d'inventaire affectés à l'utilisateur et
   le second ceux affectés à un groupe dont l'utilisateur est membre, et
   ce quelle que soit l'entité des objets. Figure 1. Eléments utilisés
   d'un utilisateur |image| Dans la copie d'écran, étant positionné dans
   Mon entité, je vois également les éléments de l'entité Site
   d'Armentières mais dans le cas, le nom n'est pas un lien cliquable.

-  Onglet **"Eléments gérés"** Même affichage que pour l'onglet
   "Eléments utilisés" mais les tableaux concernent dans ce cas les
   objets d'inventaire pour lesquels l'utilisateur est responsable
   technique et ceux affectés à un groupe technique dont l'utilisateur
   est membre.

Pour les **groupes**,

-  Onglet **"Eléments utilisés"** Cet onglet liste un tableau regroupant
   les objets affectés à ce groupe (champ *groupe* de l'objet). Il est
   possible de faire des recherches par type d'objet, étendre cette
   recherche également dans les sous-groupes et sur les objets dont le
   champ *utilisateur* correspond à un membre de ce groupe. Figure 1.
   Eléments utilisés d'un groupe |image|

-  Onglet **"Eléments gérés"** Même affichage que pour l'onglet
   "Eléments utilisés" mais le tableau concerne dans ce cas les objets
   d'inventaire pour lesquels le groupe est *groupe technique* et ceux
   affectés à un *responsable technique* membre de ce groupe.

Module Configuration
--------------------

L'onglet Eléments est visible pour les composants, après en avoir choisi
un. Figure 1. Eléments d'un disque dur |image| Les colonnes varient
suivant le type de composant et les champs remplis de ce composant.

Le chiffre dans le nom de l'onglet correspond au nombre total d'éléments
liés à ce composant, toutes entités confondues. La liste ne montre que
les éléments de l'entité courante liés à ce composant. Le lien ***Vue***
apparaît si vous n'avez pas le droit de modifier les composants. Dans le
cas contraire, ce lien sera ***Mettre à jour***.

--------------

**Sujet parent :** `Gérer les
problèmes <modules/assistance/problems>`__

**Sujet parent :** `Gérer les
changements <modules/assistance/changes>`__

**Sujet parent :** `Gérer les
budgets <05_Module_Gestion/02_Budgets.rst>`__

**Sujet parent :** `Gérer les
fournisseurs <05_Module_Gestion/03_Fournisseurs.rst>`__

**Sujet parent :** `Gérer les
contrats <05_Module_Gestion/04_Contrats.rst>`__

**Sujet parent :** `Gérer les
projets <06_Module_Outils/02_Projets/01_Projets.rst>`__

**Sujet parent :** `Gérer les
utilisateurs <07_Module_Administration/02_Utilisateurs/01_Utilisateurs.rst>`__

**Sujet parent :** `Gérer les
groupes <07_Module_Administration/03_Groupes.rst>`__

**Sujet parent :** `Gérer les
composants <08_Module_Configuration/03_Composants.rst>`__

.. |image| image:: /image/tabElements.png
.. |image| image:: /image/tabElementsGestion.png
.. |image| image:: /image/ItemUsed.png
.. |image| image:: /image/itemGroup.png
.. |image| image:: /image/itemComponent.png

