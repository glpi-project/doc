Gérer les rapports
==================

GLPI autorise la génération d'un certain nombre de rapports :

-  **Rapport par défaut** : Ce rapport comptabilise les matériels
   présents dans le parc triés par type. Pour les ordinateurs, un tri
   est également effectué par système d'exploitation.

-  **Par contrat** : Matériel sous contrat de maintenance auprès d'un
   tiers. Il est possible d'obtenir un état détaillé par type de
   matériel et par date d'achat. La sélection multiple est autorisée.
   Pour ajouter un type, il suffit de cliquer dans la zone blanche et de
   choisir le nouveau type. Le principe est le même pour ajouter une
   date. Le tableau liste, par type d'objet, le nom, s'il est dans la
   corbeille ou non, son entité, son lieu, les date d'achat et
   d'expiration de garantie, le type de contrat ainsi que les dates de
   début et de fin de contrat.

-  **Par année** : Rapport sous le même principe que le rapport
   précédent mais listant également les matériel sans contrat.

-  **Informations financières et administratives du matériel** :
   Récapitulatif des informations financières pour les ordinateurs, les
   imprimantes, les matériels réseaux, les moniteurs, les périphériques
   et les téléphones. Il est possible d'obtenir un état pour une période
   donnée. Le tableau liste, par type d'objet, son nom, son entité, sa
   valeur, sa valeur nette comptable, son TCO, ses dates d'achat, de
   mise en service et d'expiration de garantie. Un récapitulatif
   comprenant le total de la valeur et de la valeur nette comptable est
   poposé par type d'objet et pour la totalité des objets.

-  **Autres Informations Financières et administratives** : Rapport sous
   le même principe que le rapport précédent mais mais pour les
   cartouches, les licences et les consommables.

-  **Rapport réseau** : 3 rapports peuvent être réalisés : selon le
   lieu, selon le type de matériel réseau ou selon la prise réseau.
   |image|

-  **Prêt** : Récapitulatif des réservations en cours, à venir ou
   passées pour un utilisateur donné.

-  **Rapport sur les statuts** : Synthèse par type de matériel des
   différents statuts.

Un plugin permet d'ajouter de nombreux rapports dans GLPI. Ce plugin :
**Additional Reports** est disponible sur la `forge des
plugins <https://forge.indepnet.net/projects/plugins>`__.

--------------

**Sujet parent :** `Module
Outils <06_Module_Outils/01_Module_Outils.md>`__

.. |image| image:: docs/image/Rapport-reseau.png

