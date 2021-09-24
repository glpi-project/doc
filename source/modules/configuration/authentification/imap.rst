Authenticate from IMAP
======================

L'interfaçage de GLPI avec des serveurs de messagerie comme source
d'authentification se configure depuis le menu Configuration >
Authentification > Serveurs de messagerie .

GLPI peut utiliser des serveurs de messagerie comme source
d'authentification. Cette faculté peut compenser l'absence d'annuaire ou
de serveur CAS. Toutefois, contrairement à ce qui est possible avec
d'autres sources d'authentification, aucun import en masse n'est
disponible. Un utilisateur est authentifié par GLPI si le serveur de
messagerie l'a authentifié au préalable.

La connexion au serveur de messagerie utilise les protocoles IMAP ou
POP. Les options de chiffrement SSL et TLS sont disponibles. La
distinction est faite entre le domaine de messagerie qui est la partie
de l'adresse de messagerie qui suit le caractère arobase, et le nom
pleinement qualifié du serveur de messagerie, qui peut servir plusieurs
domaines de messageries.

