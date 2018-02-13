Visualiser et gérer les enregistrements
=======================================

L'affichage de toutes les listes d'enregistrements et de tous les détails concernant un enregistrement fonctionne toujours de la même manière dans GLPI. Qu'il s'agisse d'une liste d'ordinateurs, de téléphones ou de tickets, la présentation suit le même principe.

Une liste d'éléments peut être obtenue de 2 manières :

* depuis le moteur de recherche

   Depuis le moteur de recherche, après avoir déterminé des critères et validé la recherche, une liste d'enregistrements est affichée. Par défaut aucun critère de recherche ne limite la liste des enregistrements proposés et l'affichage est limité aux ``x`` premiers enregistrements de la liste, paramétrable dans les préférences.

* depuis une autre liste.

   Certains onglets proposent une liste d'éléments liés. Par exemple, depuis une liste d'ordinateurs, cliquer sur le nom d'un ordinateur puis naviguer dans l'onglet logiciels. La liste des logiciels installés sur cet ordinateur est affichée.

Les détails concernant un enregistrement sont affichés sous formes d'onglets regroupant les informations de même nature. Pour un ordinateur, les informations financières et la liste des logiciels sont dans deux onglets distincts.

Personnaliser l'affichage
-------------------------

Les colonnes affichées depuis la liste complète de l'inventaire sont paramétrables. Cliquer sur le bouton |btn_prefs|. Il est possible d'ajouter, supprimer et ordonner les colonnes affichées.

* La vue globale s'applique à tous les profils ayant accès à une partie de l'inventaire : la modification de celle-ci sera donc visible par tous les utilisateurs,
* La vue personnelle ne s'applique qu'à l'utilisateur connecté et outrepasse les réglages de la vue globale. Cette vue n'est proposée que si vous avez le droit *Affichage utilisateur* concernant l'*Affichage des résultats de recherche*.

   Cet onglet permet également de réinitialiser la personnalisation d'affichage des différentes listes. L'utilisateur peut, pour chaque type d'objets, revenir à l'affichage par défaut en supprimant cette personnalisation.

.. |btn_prefs| image:: images/change_prefs_button.png
             :alt: de gestion des préférences d'affichage
