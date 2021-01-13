Import, export et duplication |image|
=====================================

L'exportation, l'importation et la duplication est possible pour
l'ensemble des règles. Ces opérations sont réalisables globalement
depuis la page principale des règles ou bien par lot depuis les moteurs
de recherche des différents règles via les actions massives. Ces
fonctionnalités sont intéressantes par exemple dans le cadre de la
bascule de règles d'un environnement de pré-production vers un
environnement de production.

***Remarque :** l'exportation ou l'importation se font via un fichier
XML.*

Gérer les règles métiers
========================

GLPI dispose d'un moteur de règles qui permet d'effectuer un certain
nombre d'actions et d'associations de manière automatique.

Le moteur sert à la fois pour :

-  les règles de gestion :

   -  affectation d'une machine à une entité
   -  habilitations à un utilisateur
   -  catégories à un logiciel
   -  routage de tickets dans des entités
   -  actions automatiques à la création des tickets

-  `les dictionnaires de
   données <07_Module_Administration/06_Dictionnaires.rst>`__ :

   -  fabricants
   -  logiciels
   -  imprimantes
   -  types de matériels,
   -  modèles de matériels
   -  champs liés au système d'exploitation

Le moteur se comporte de manière différente en fonction des types de
règles :

-  arrêt après la première règle vérifiée ;
-  déroulement de toutes les règles ;
-  déroulement des règles avec passage du résultat aux suivantes.

Elles peuvent être désactivées : par exemple lorsqu'elles sont en cours
d'écriture et de test.

***Conseil :*** de manière générale, il est conseillé de bien tester les
règles avant de les utiliser et de faire une sauvegarde avant la mise en
place de chaque nouvelle règle. Sur le formulaire principal d'une règle,
un bouton |image| ouvre une fenêtre supplémentaire qui permet de voir
l'ensemble des critères et des résultats de celle-ci.

Les différentes règles
----------------------

-  **`Règles pour assigner un ticket créé via un collecteur de
   courriels <07_Module_Administration/05_Règles/01_Collecteur_de_courriels.rst>`__**
   GLPI implémente un mécanisme de routage des tickets ouverts par
   courriel, afin de les créer dans la bonne entité.

-  **`Règles d'affectation d'habilitations à un
   utilisateur <07_Module_Administration/05_Règles/02_Habilitations_utilisateur.rst>`__**

-  **Règles d'affectation d'une catégorie aux logiciels**

   Une classification par catégorie permet de faciliter l'affichage et
   la recherche des logiciels. Celle-ci peut se faire de manière
   automatique pour tout nouveau logiciel, ou rétroactivement. Les
   critères disponibles sont l'éditeur, le nom et le commentaire du
   logiciel. La seule action possible est l'affectation d'un logiciel à
   une catégorie. Il est possible de rejouer le moteur depuis la liste
   des logiciels, grâce à l'action massive Recalculer la catégorie.

-  **`Règles métier pour les
   tickets <07_Module_Administration/05_Règles/04_Règles_métier_pour_les_tickets.rst>`__**
   Lors de la création et/ou de la modification d'un ticket, un
   mécanisme permet de modifier les attributs du ticket de manière
   automatique.

-  **`Règles en liaison avec un agent
   d'inventaire <07_Module_Administration/05_Règles/05_Règles_outil_d'inventaire.rst>`__**
   Les deux menus ci-dessous ne sont visibles que si vous utilisez un
   agent d'inventaire pour une remontée automatique des ordinateurs dans
   GLPI.

   -  affectation d'un élément à une entité
   -  règle d'import et de liaison des ordinateurs

-  **Transférer** Ce menu vous permet de définir les profils de
   transfert inter-entités.

   Plusieurs actions sont possibles :

   -  ***conserver :*** l'élément sera transféré avec l'objet ;
   -  ***mettre à la corbeille :*** l'élément sera placé dans la
      corbeille de l'entité cédante ;
   -  ***supprimer définitivement :*** l'élément sera supprimé de la
      base de données ;
   -  ***garder :*** l'élément restera dans l'entité cédante ;
   -  ***déconnecter :*** la connexion entre l'élément et l'objet sera
      supprimée

-  **Listes noires** Grâce au mécanisme de listes noires de GLPI il est
   possible d'exclure certaines valeurs du traitement dans le moteur de
   règles. Les types pouvant être pris en compte sont :

   -  adresse IP ;
   -  adresse MAC ;
   -  numéro de série ;
   -  UUID ;
   -  courriel Cela permet par exemple de ne pas remonter de l'agent
      d'inventaire certaines adresses IP (par exemple une IP 127.0.0.1
      ou 0.0.0.0) ou de ne pas créer un ticket provenant d'une adresse
      mail particulière (par exemple rapport de sauvegarde quotidien
      d'un serveur).

Créer une règle
---------------

Une règle est composée d'une suite de critères. Selon l'option choisie
(OU/ET) un ou tous les critères doivent être vérifiés pour déclencher
une liste d'actions.

Un mécanisme de prévisualisation permet de tester les règles en cours
d'écriture avant de les passer en production.

Il existe plusieurs conditions :

-  simples :

   -  est
   -  n'est pas
   -  contient
   -  ne contient pas
   -  commence par
   -  finit par
   -  sous (pour les intitulés arborescents, indique être cet intitulé
      ou un des intitulés enfant)
   -  pas sous (pour les intitulés arborescents, indique n'être pas cet
      intitulé ou un des intitulés enfant)

-  complexes :

   -  expression rationnelle vérifie
   -  expression rationnelle ne vérifie pas

Les expressions rationnelles (autrement appelées regex) renvoient un ou
plusieurs résultats qui peuvent être ensuite utilisés par les actions
grâce à la directive #x (ou x est le numéro du résultat de l'expression
rationnelle).

::

    Exemple :
    Critère : Nom expression rationnelle vérifie /DESKTOP\_(.\*)/ . 
    Si l'objet a pour nom DESKTOP_0001, alors il sera possible d'utiliser 0001 dans les actions de la règle en utilisant le paramètre \#0.

--------------

**Sujet parent :** `Module
Administration <07_Module_Administration/01_Module_Administration.rst>`__.

.. |image| image:: /image/importrule.png
.. |image| image:: /image/testrule.png

