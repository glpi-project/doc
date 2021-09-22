:orphan:

Chiffrage des mots de passe dans la base de données
===================================================

Les mots de passe des accès extérieurs sont chiffrés

Les mots de passe des accès extérieurs sont chiffrés avant d'être
stockés dans la base de données. Les mots de passe concernés sont ceux
pour l'authentification auprès des proxys, annuaires LDAP et serveurs de
messagerie, que ces derniers soient utilisés pour l'authentification et
la collecte des messages. Les mots de passe des utilisateurs ne sont pas
concernés par ce mécanisme. La clé de chiffrement est définie dans le
fichier config/define.php et ne devrait pas être changée. Si vous
modifiez cette clé, les mots de passe seront perdus.

**Sujet parent :** `Configurer la gestion
d'identité <../glpi/config_auth.html>`__
