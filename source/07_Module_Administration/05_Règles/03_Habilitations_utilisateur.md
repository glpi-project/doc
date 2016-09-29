Attribuer des habilitations à un utilisateur
============================================

GLPI dispose d'un moteur d'habilitations dynamiques qui se base sur des sources externes d'authentification.

Une habilitation dans GLPI est une autorisation résultant de l'attribution de droits sur un périmètre d'action (une ou plusieurs entités). En d'autres termes, c'est l'appartenance conjointe à un profil
et à une entité.

Les habilitations peuvent être attribuées statiquement, en affectant un utilisateur à un profil dans une entité, mais ce n'est pas la méthode conseillée.

Il est conseillé d'utiliser le moteur de règles d'affectation d'entité et de droits pour attribuer automatiquement les habilitations. Pour cela, il est nécessaire d'utiliser une authentification externe.

***Remarque :*** *si aucun annuaire LDAP, serveur POP ou IMAP ne sont configurés, alors le menu n'apparaît pas dans **Administration > Règles***.

Le moteur exécute toutes les règles. Il ne s'arrête pas après la première règle qui s'applique à l'utilisateur. Plusieurs règles permettent ainsi d'attribuer différentes habilitations à un même
utilisateur. Un utilisateur possédant plusieurs habilitations peut, au cours de sa session et selon ses activités, changer de profil et de contexte d'entité.

Le profil par défaut
--------------------

Si un profil par défaut est défini dans la configuration des profils de GLPI, et si une règle d'affectation d'habilitation ne comporte pas d'affectation de profil, alors le profil par défaut est utilisé lors de l'affectation d'un utilisateur à l'entité.

Si aucun profil par défaut n'est défini, l'utilisateur est importé sans habilitation : il n'est ni affecté à une entité, ni affecté à un profil. Seul le profil super-admin peut le voir dans l'entité racine.

Habilitations basées sur les serveurs de messagerie
---------------------------------------------------

Les informations de messagerie IMAP/POP peuvent être utilisées pour affecter automatiquement les habilitations. L'identifiant IMAP/POP (le login de l'utilisateur) et l'URL du serveur de messagerie peuvent servir de critères. Les utilisateurs peuvent être créés au fil de l'eau lorsqu'ils se connectent. Par contre, il n'est pas possible d'importer en masse ceux-ci depuis le serveur de messagerie.

Habilitations basées sur l'URL du serveur de messagerie
-------------------------------------------------------

Lorsque plusieurs serveurs de messagerie sont définis comme source d'authentification et que l'URL du serveur du messagerie est un critère pertinent, cette information peut servir à définir les habilitations.

    Exemple :
    L'authentification utilise les serveurs IMAP/POP suivants : `imap.exemple.fr` et `imap.exemple.be`. 
    Chacun de ces serveurs est défini comme une source d'authentification. Cette information permet d'attribuer l'utilisateur à l'entité `france` ou `belgique`. 
    À cette fin deux règles statiques seront nécessaires :

    Règle pour la Belgique :
    Critères : IMAP/POP est par exemple.be
    Actions : assigner l'entité belgique

    Règle pour la France :
    Critères : IMAP/POP est par exemple.fr
    Actions : assigner l'entité france
    

Habilitations basées sur l'identifiant de messagerie :
------------------------------------------------------

Lorsque les adresses de messagerie des utilisateurs comportent plusieurs noms de domaine, ou une information pertinente pour définir les habilitations, cette information peut servir à définir les habilitations. Il est également possible d'affecter une entité à un utilisateur en utilisant le domaine de messagerie si celui-ci est spécifique à une entité. Le domaine de messagerie utilisé par l'entité est défini dans les [informations avancées des entités](index.php?fr/07_Module_Administration/04_Entités.md).

    Exemple :
    Les utilisateurs s'authentifient à partir des adresses de messagerie de la forme suivante : `utilisateur@example.fr` et `utilisateur@exemple.be`. 
    Peu importe si un ou plusieurs serveurs de messagerie sont utilisés pour l'authentification. Cette information permet d'attribuer l'utilisateur à l'entité `france` ou `belgique`. 
    À cette fin deux règles statiques seront nécessaires :

    Règle pour la Belgique :
    Critères : Identifant IMAP/POP finit par exemple.be
    Actions : assigner l'entité belgique

    Règle pour la France :
    Critères : Identifiant IMAP/POP finit par exemple.fr
    Actions : assigner l'entité france

Habilitations basées sur les annuaires LDAP
-------------------------------------------

Les attributs LDAP d'un utilisateur peuvent servir de source pour affecter dynamiquement à cet utilisateur des habilitations à l'aide des règles d'affectation d'habilitations. Les manières d'utiliser un arbre LDAP pour créer des règles d'habilitation pour les utilisateurs sont multiples et dépendent du contexte de l'implémentation de l'annuaire.

Habilitations basées sur les unités organisationnelles d'un annuaire LDAP
-------------------------------------------------------------------------

Soit un annuaire LDAP où l'organisation des branches (unités organisationnelles) correspond à l'organisation des entités GLPI. Chaque unité organisationnelle (OU) contient les utilisateurs, directement ou dans une sous-branche. Chacune des branches peut servir à établir une règle d'affectation d'un utilisateur à une entité. Le cas des utilisateurs appartenant à plusieurs entités doit être traité par ailleurs. 
Ce modèle est pertinent lorsqu'un profil par défaut peut être attribué à la majorité des utilisateurs. L'attribution des profils non standard doit être traitée par ailleurs. Les informations sur l'utilisateur remontées depuis l'annuaire sont suffisantes pour créer les règles d'affectation dans GLPI.

    Exemple :
    Soit un arbre LDAP de la forme suivante :

    org
    +- exemple
     +- france
      +- paris
      +- lyon
      +- bordeaux
     +- belgique
      +- bruxelles

    Chacune des branches est formalisée telle que l'exemple suivant :
      ou=lyon,ou=france,dc=exemple,dc=org

    Dans la configuration de chaque entité, dans l'onglet informations avancée, indiquer l'information LDAP représentant l'entité (dans le cas présent le "distinguished name" de l'entité).

    Par exemple, pour l'entité Lyon :
      Information LDAP représentant l'entité :ou=lyon,ou=france,dc=exemple,dc=org

    Ensuite, définir la ou les règles dans Administration > Règles > Règles d'affectation d'entité et de droits.

    Deux possibilités s'offrent à l'utilisateur : un ensemble de règles statiques ou une règle adaptative.

    Règle statique : pour chaque entité, définir une règle d'affectation de la forme suivante :
      Critères (LDAP)DistinguishedName finit par :  ou=lyon,ou=france,dc=exemple,dc=org
      Actions : assigner l'entité lyon

    Règle adaptative : une règle unique basée sur des expressions rationnelles suffit à définir l'affectation à toutes les entités :
      Critères : (LDAP)DistinghuishedName vérifie l'expression rationnelle suivante : /(ou=.*)/ 
      Actions : assigner l'entité depuis LDAP, valeur depuis expression rationnelle : #0

    ou bien encore

      Critères : (LDAP)DistinghuishedName vérifie l'expression rationnelle suivante : /(ou=.*)/ 
      Actions : assigner l'entité le nom complet valeur depuis expression rationnelle : Entité racine > #0

L'exécution de la règle récupère dans le "distinguished name" de l'utilisateur son unité organisationnelle (OU) d'appartenance. Elle va ensuite la comparer aux valeurs de l'attribut Information LDAP représentant l'entité dans la base. Si une entité à l'attribut dont la valeur correspond, alors cette dernière est utilisée comme résultat de la règle.

***Remarque :** la valeur de l'action #0 indique que l'on doit utiliser le premier résultat de l'expression rationnelle. #1 indique le deuxième et ainsi de suite. Le bouton **Tester** du formulaire permet d'essayer des valeurs et de voir le résultat obtenu*.

Habilitations basées sur les groupes ou les attributs d'un utilisateur dans un annuaire LDAP
--------------------------------------------------------------------------------------------

Dans l'annuaire, chacun des utilisateurs fait partie d'un groupe correspondant à un profil GLPI et d'un groupe correspondant à une entité. Un utilisateur peut faire partie de plusieurs profils et de plusieurs entités. Selon la configuration de l'annuaire, l'information de l'appartenance de l'utilisateur à un groupe se trouve dans l'objet utilisateur ou dans l'objet groupe. 
Dans le premier cas, les informations contenues dans l'objet utilisateur sont suffisantes pour créer des règles d'habilitation : il n'est pas nécessaire d'importer les groupes de l'annuaire dans GLPI. 
Dans le deuxième cas, les informations contenues dans l'objet utilisateur ne suffisent pas et il est nécessaire de récupérer les informations sur les groupes. Il faut alors d'abord configurer les groupes LDAP et la liaison automatique des utilisateurs aux groupes.

***Remarque :** Tout ceci n'est pas limité aux attributs de type groupe, mais est valable pour les autres types d'attributs stockés dans l'annuaire.*

    Exemple :
    Soit un arbre LDAP de la forme suivante :

    org
    +- exemple
     +- profil
      += post-only
      += tech
      += admin
      += super-admin
     +- entité
      +- france
       += paris
       += lyon
     +- people
      +-

    Dans cet exemple, les profils et les entités sont définis comme des groupes. Par exemple :
      cn=post-only,ou=profil,dc=exemple,dc=org
      cn=paris,ou=entité,dc=exemple,dc=org

    Aucune configuration particulière spécifique à l'entité n'est requise.

    Dans Administration > Règles > Règles d'affectation d'entité et de droits , définir des règles suivantes :

    Pour l'affectation d'un profil à un utilisateur est de la forme :
      Critères :Groupe annuaire LDAP est post=only
      Actions : Profil assigner post-only

    Pour l'affectation à une entité :
      Critères : Groupe annuaire LDAP est paris
      Actions : Entité assigner Exemple > France > Paris

>Important : le calcul des habilitations se fait une fois toutes les règles exécutées. Dans l'exemple précédent, une règle attribut seulement une entité et l'autre seulement un profil. Le produit des 2 permet de définir l'habilitation de l'utilisateur. De la même manière, si l'utilisateur se voit affecté 2 entités par 2 règles différentes et un seul profil, alors il aura 2 habilitations : une sur chaque entité avec le même profil.

Usage de différentes sources d'habilitations
--------------------------------------------

Des cas mixtes peuvent être rencontrés : les règles peuvent utiliser à la fois l'appartenance à des unités organisationnelles pour l'affectation à une entité, et l'appartenance à un groupe pour l'affectation à un profil.

***Remarque :** il est possible de rajouter des critères LDAP supplémentaires en cliquant sur l'icône ![image](docs/image/addcriteria.png) à côté de la liste déroulante. Un critère est composé d'un nom (utilisé dans la liste déroulante), d'un critère (correspondant à l'attribut dans l'annuaire LDAP) et d'un commentaire.*

-------
**Sujet parent :** [Module Administration](index.php?fr/07_Module_Administration/01_Module_Administration.md "Le module Administration permet d'administrer les utilisateurs, groupes, entités, profils, règles et dictionnaires et offre des outils de maintenance de l'application").

**Sujet parent :** [Gérer les règles](index.php?fr/07_Module_Administration/05_Règles/01_Gérer_les_règles.md "Gérer les règles").

**Sujet parent :** [Administrer les contrôles
d'accès](../glpi/access_control_intro.html "Cette partie décrit comment administrer le système de contrôle d'accès qui permet à chaque utilisateur d'accéder à un contexte d'utilisation spécifique.")
