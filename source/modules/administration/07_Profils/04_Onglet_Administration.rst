Les 7 droits standard ne seront pas listés (voir `Explication des
droits <07_Module_Administration/07_Profils/01_Profils.rst>`__).

Avant de commencer le détail des droits de la partie Administration, il
faut bien faire attention à la couleur des zones de droits. En effet,
comme indiqué dans la légende |image| certains droits s'appliquent
globalement dans GLPI et d'autres peuvent être délégués localement.
Exemple : les profils définis le sont pour toutes les entités. Par
contre les règles métier peuvent varier d'une entité à une autre.

|image| Droits **Utilisateurs** :

-  ***Lecture auth*** : ajoute un champ dans la fiche utilisateur
   indiquant la méthode d'authentification ainsi que la date de dernière
   synchronisation

-  ***Mise à jour auth et sync*** :

   -  affiche un onglet *Synchronisation* dans l'utilisateur permettant
      de changer sa méthode d'authentification et de forcer sa
      synchronisation ;
   -  ajoute un bouton |image| avant la liste des groupes ;
   -  affiche un onglet *Liaison annuaire LDAP* dans le groupe
      regroupant les informations permettant à GLPI de retrouver le
      groupe et ses utilisateurs dans l'annuaire LDAP.

-  ***Ajout externe*** :

   -  permet l'import ou la synchronisation d'un utilisateur
   -  ajoute un bouton |image| avant la liste des utilisateurs.

Droits **Entités** :

-  ***Mise à jour paramètres*** : permet de modifier les données de
   l'onglet *Assistance* dans l'entité.

-  ***Lecture paramètres*** : permet de visualiser les données de
   l'onglet *Assistance* dans l'entité.

Droits **Maintenance** :

-  ***Vérifier la présence de mises à jour*** : ajoute un bouton |image|
   dans le menu ***Administration > Maintenance*** qui permet de
   contrôler si vous avez la dernière version stable de GLPI.

|image| Droits **Règles métier pour les tickets (entité)** :

-  ***Règles métiers (parent)*** : affiche un onglet **règles appliquées
   (nom entité)** dans les règles métier pour les tickets. Cet onglet
   liste toutes les règles des entités parentes jouées.

|image| Les éléments de la partie Dictionnaires rentrent dans les 7
droits standard.

--------------

**Sujet parent :** `La gestion des
profils <07_Module_Administration/07_Profils/01_Profils.rst>`__.

**Sujet parent :** `Module
Administration <07_Module_Administration/01_Module_Administration.rst>`__.

.. |image| image:: /image/legendedroits.png
.. |image| image:: /image/admin.png
.. |image| image:: /image/addUserLdap.png
.. |image| image:: /image/checkVersion.png
.. |image| image:: /image/regles.png
.. |image| image:: /image/dico.png

