:orphan:

Importer et synchroniser depuis un annuaire par script
======================================================

Un script permet l'import et la synchronisation à partir d'un annuaire.

Présent dans le répertoire scripts/ de GLPI, il s'appelle
ldap\_mass\_sync.php. Pour le lancer, il suffit exécuter le script
suivant :

:: 

    php ldap_mass_sync.php [action=0|1|2] [ldapservers_id=x] [ldap_filter="(xx)"] [before-days=x] [after-days=y]

.. warning::

   Le script doit être lancé par l'utilisateur du service web.

Le paramètre action indique s'il faut effectuer un import (valeur 0),
une synchronisation (valeur 1), ou s'il faut réimporter et
resynchroniser tous les utilisateurs (valeur 2). Si cette option n'est
pas définie, le script est en mode synchronisation.

L'option ldapservers\_id indique au script de restreindre les
traitements à un seul serveur. La valeur à passer est l'identifiant de
l'annuaire LDAP tel qu'affiché en entête du formulaire de l'annuaire
dans GLPI. Voir `Authentifier des utilisateurs à partir d'annuaires
LDAP <config_auth_ldap.html>`__. Si ldapservers\_id est omis, le script
traite tous les annuaires les uns après les autres.

Filter est le filtre au format LDAP qui permet de limiter la recherche
des utilisateurs. Cette option n'est pas obligatoire. Il est nécessaire
d'échapper le caractère '=' du filtre : par exemple le filtre (uid=r\*)
se traduira en ligne de commande par ldap\_filter="(uid\\=r\*)".

La restriction des dates, identique à celle disponible dans l'interface
d'import simplifiée (voir `Importer des utilisateurs depuis une source
externe <administration_user_import.html>`__) repose sur l'utilisation
d'une date et heure de début et d'une date et heure de fin.

Remarque : le format des dates attendu est AAA-MM-JJ HH:MM:SS.

Une fois terminé, le script indique en console le nombre d'utilisateurs
importés, synchronisés et supprimés pour chaque annuaire.

**Sujet parent :** `Configurer la gestion
d'identité <../glpi/config_auth.html>`__
