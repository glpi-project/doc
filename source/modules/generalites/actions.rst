Les actions
-----------

Les différentes actions possibles sur l'objet dépendent des droits attribués dans votre profil.

De même, certaines actions dans l'onglet dépendent des droits du profil (comme les actions de masse).

Ne sont listées ici que les actions principales pouvant être réalisées sur différents objets.
Si une action est spécifique à un objet, elle sera décrite dans la fiche de cet objet.

Création
^^^^^^^^

Le droit de créer un objet dépend du droit défini dans le profil de l'utilisateur.

Quel que soit l'objet de l'inventaire, l'ajout s'effectue toujours de la même manière :

#.  Se connecter à GLPI ;
#.  Aller dans le menu de l'objet (exemple : Parc > Ordinateurs pour ajouter un ordinateur) ;
#.  Cliquer sur le "+" situé dans le menu horizontal ;
#.  Si l'objet de l'inventaire en possède une gestion de gabarit, choisir un gabarit à appliquer ;
#.  Compléter les différents champs de la fiche vierge ;
#.  Valider.

Une option présente dans les préférences utilisateur (*Après la création, aller à l'élément créé*) permet de déterminer si l'utilisateur souhaite, après la création, l'affichage de la fiche nouvellement créée ou une autre fiche vierge pour création en série.

Modification
^^^^^^^^^^^^

Le droit de modifier un objet dépend du droit défini dans le profil de l'utilisateur.

Quel que soit l'objet de l'inventaire, la modification s'effectue toujours de la même manière :

#.  Se connecter à GLPI ;
#.  Aller dans le de l'objet (exemple : Parc > Ordinateurs pour supprimer un ordinateur) ;
#.  Optionnel : faire une recherche de l'ordinateur depuis le moteur de recherche situé au-dessus de la liste des objets ;
#.  2 choix de modification :

   * Modification unitaire :

      #.  Cliquer sur le nom de l'objet ;
      #.  Modifier les champs souhaités ;
      #.  Cliquer sur le bouton **Actualiser**.

   * Modification en masse :

      #.  Cocher la case située à gauche du nom de l'objet ;
      #.  Cliquer sur le bouton **Actions** ;
      #.  Choisir le champ à modifier ;
      #.  Indiquer la nouvelle valeur du champ ;
      #.  Cliquer sur le bouton **Envoyer**.

Affichage
^^^^^^^^^

Le droit de visualiser un objet dépend du droit Lecture défini dans le profil de l'utilisateur.
Si vous n'avez pas le droit de visualiser un objet, le nom de celui-ci n'apparaitra pas dans les différents menus de GLPI.

Par exempl, si vous supprimer le droit de lecture de l'objet Ordinateur dans votre profil, le sous-menu Ordinateur n'apparaitra pas dans le menu Parc même si vous avez le droit de modifier un ordinateur.

Quel que soit l'objet de l'inventaire, la visualisation s'effectue toujours de la même manière :

#. Se connecter à GLPI ;
#. Aller dans le menu de l'objet (exemple : Parc > Ordinateurs pour visualiser un ordinateur) ;
#. Optionnel : faire une recherche de l'ordinateur via le moteur de recherche situé en haut de la liste des objets;
#. Cliquer sur le nom de l'objet.

Association d'un document
^^^^^^^^^^^^^^^^^^^^^^^^^

Quel que soit l'objet de l'inventaire, l'association à un document s'effectue toujours de la même manière :

#. Se connecter à GLPI ;
#. Aller dans le menu de l'objet (exemple : Parc > Ordinateurs pour ajouter un ordinateur) ;
#. Optionnel : faire une recherche de l'objet depuis le moteur de recherche situé au-dessus de la liste des objets ;

Deux possibilités sont offertes :

- Association unitaire :

   #. Cliquer sur le nom de l'objet ;
   #. Aller dans l'onglet **Documents** ;
   #. Sélectionner un document ou cliquer sur le bouton **Parcourir** pour en ajouter un ;
   #.  Cliquer sur le bouton **Ajouter**.

- Association en masse :

   #. Cocher la case située à gauche du nom de l'objet ;
   #. Cliquer sur le bouton **Actions** et choisir **Ajouter un Document**

Affichage de la fiche avec l'objet associé au document

Transfert entre entités
^^^^^^^^^^^^^^^^^^^^^^^

Avec la notion d'entités vient la possibilité de définir des profils de transfert pour les mutations d'éléments entre entités.

Cette fonctionnalité permet notamment de passer d'un GLPI mono entité à un GLPI multi-entités en utilisant les transferts.

Comment faire un transfert :

#. Utiliser un profil qui a le droit de faire des transferts (Administration > Profils > Administration --> Droit le Lecture sur Transférer) ;
#. Configurer les actions faites par le transfert ([Administration > Règles --> Transférer](07_Module_Administration/05_Règles/01_Gérer_les_règles.md)) ;
#. S'assurer que le profil qui va effectuer le transfert a une visibilité sur l'entité cédante et sur l'entité prenante (le plus simple est d'utiliser un profil récursif depuis l'entité racine) ;
#. Se positionner sur l'Entité racine (Voir Tous) ;
#. Depuis la liste des objets, sélectionner l'élément à transférer ;
#. Choisir **Ajouter à la liste de transfert** et **Valider** ;
#. Dans **Mode de transfert**, choisir un profil de configuration du transfert (créé en point 2) ;
#. Sélectionner l'entité dans laquelle sera transféré l'élément ;
#. Cliquer sur **Transférer** ;
#. Vérifier dans la nouvelle entité que le matériel s'y trouve bien.

.. note::

   Si un élément lié n'existe pas dans la nouvelle entité, il sera automatiquement créé si le profil de transfert demande de le conserver.

   Exemple : transfert d'un ordinateur avec un fournisseur défini dans les informations financières. Si ce fournisseur n'existe que dans l'entité cédante, il sera créé dans l'entité prenante. Par contre un fournisseur défini dans l'entité racine en récursif ne sera pas recréé.

.. warning::

   Le lieu et le groupe seront à adapter pour la nouvelle entité.

Suppression
^^^^^^^^^^^

Le droit de supprimer un objet dépend du droit défini dans le profil de l'utilisateur.

Quel que soit l'objet de l'inventaire, la suppression s'effectue toujours de la même manière :

#. Se connecter à GLPI ;
#. Aller dans le menu de l'objet (exemple : Parc > Ordinateurs pour supprimer un ordinateur) ;
#. Optionnel : faire une recherche de l'ordinateur depuis le moteur de recherche situé au-dessus de la liste des objets ;

Deux possibilités sont offertes:

* Suppression unitaire :

   #. Cliquer sur le nom de l'objet ;
   #. Cliquer sur le bouton

* Suppression en masse :

   #. Cocher la case située à gauche du nom de l'objet ;
   #. Cliquer sur le bouton **Actions**

Dans les deux cas de figure, il faudra choisir :

* *Mettre à la corbeille* si l'objet possède une corbeille ;
* *Supprimer définitivement* si l'objet ne possède pas de corbeille.

Dans le cas d'un objet ne possédant pas de corbeille, GLPI demandera une confirmation avant la suppression définitive de l'objet dans la base de données.
Dans le cas contraire, l'objet sera mis dans la corbeille d'où il pourra être restauré (sorti de la corbeille).
