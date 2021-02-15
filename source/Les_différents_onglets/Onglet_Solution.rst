Onglet Solution
===============

Cet onglet permet d'indiquer la résolution de l'objet. Pour un ticket il
permet également au demandeur d'approuver la solution.

Le technicien doit choisir le **Type de solution**, intitulé
paramétrable (par exemple **Fermé (Résolu)**, **Solution de
controunement**...) ainsi qu'une description de la solution si besoin.

Une fois la solution saisie, l'objet prend le statut **Résolu**.

La saisie d'une solution peut être facilitée par l'utilisation de 2
mécanismes :

-  L'utilisation d'un gabarit de solution. C'est une solution
   pré-remplie définie dans les intitulés (voir `Configurer les
   intitulés <08_Module_Configuration/02_Intitulés/01_Intitulés.rst>`__)
   ;

-  L'extraction d'un élément de la base de connaissance. Pour cela, il
   faut cliquer ``Rechercher une solution``, trouver l'élément de base
   de connaissances correspondant et valider en choisissant
   ``Utiliser comme solution``.

***Remarque :** A l'enregistrement de la solution, le choix
``Enregistrer et ajouter à la base de connaissances`` permet de
l'ajouter directement à la base de connaissance. Après validation de la
solution, la page de création de l'élément est proposée. Il suffit alors
de compléter le formulaire et de valider.*

Onglet *Solution* d'un ticket
-----------------------------

-  **Approbation de la solution :** La solution d'un ticket doit être
   approuvée pour que le statut du ticket passe de Résolu à clos.

   Elle peut être approuvée par un des demandeurs ou le rédacteur du
   ticket (personne qui a saisi le ticket, par exemple un technicien de
   hot-line) si la matrice de cycle de vie du ticket l'autorise (Voir
   `Matrice de cycle de
   vie <04_Module_Assistance/04_Tickets/02_Matrice_de_cycle_de_vie.rst>`__).

   L'approbation peut se faire de 2 manières :

   -  Si le suivi par courriel été activé, le demandeur peut recevoir un
      courriel contenant le lien vers le ticket afin de l'approuver ;

   -  Via l'interface :
   -  **Interface simplifiée** : Aller dans le menu **Tickets**.
   -  **Interface standard** : Les tickets à approuver apparaissent sur
      la page d'accueil de GLPI dans **Vue personnelle**, **Vos tickets
      à clore**.

   Cliquer sur le ticket à approuver, puis approuver ou rejeter la
   solution. Il est possible de saisir une description si besoin,
   celle-ci est obligatoire en cas de rejet.

   Une fois la solution approuvée, le ticket prend le statut **Clos**.

   ***Remarque :** Un ticket clos n'est plus modifiable (à part le
   statut). Pour le modifier a posteriori, il faut donc changer son
   statut et réaliser de nouveau sa clôture.*

   Il est possible de forcer la clôture des tickets résolus après un
   délai paramétrable (voir `Onglet
   Assistance <07_Module_Administration/04_Entités.rst>`__). Si ce délai
   est nul, le ticket est automatiquement clos.

   De même, vous pouvez supprimer cette opération d(approbation via la
   `matrice de cycle de
   vie <04_Module_Assistance/04_Tickets/02_Matrice_de_cycle_de_vie.rst>`__.

--------------

**Sujet parent :** `Gérer les
tickets <04_Module_Assistance/06_Tickets/03_Gérer_les_tickets.rst>`__

**Sujet parent :** `Gérer les
problèmes <04_Module_Assistance/08_Problèmes.rst>`__

**Sujet parent :** `Gérer les
changements <modules/assistance/changes>`__
