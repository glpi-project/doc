Protocole IP.
=============

Gestion des deux versions d'IP au sein de GLPI : IPv4 et IPv6.

Note: GLPI gère indifféremment IPv4 et IPv6. La seule distinction
provient du format des adresses et des masques.

`212.85.137.66` est une adresse IPv4, alors que
`2a00:1450:4007:803::1012` est en IPv6.

GLPI considère [IPv4 comme un sous-ensemble
d'IPv6](http://fr.wikipedia.org/wiki/Adresse_IPv6_mappant_IPv4) : les
traitements sont les mêmes.

GLPI, utilise deux représentations pour les adresses IP (IPv6 et IPv4,
cf. [paragraphe
précédent](inventory_ip.html "Le protocole IP est matérialisé sous plusieurs formes : adresses IP, réseaux IP, mais aussi des FQDN"))
:

-   La représentation binaire lui permet de faire l'analyse des
    relations entre réseaux, adresses et masques. Elle est inaccessible
    à l'utilisateur.
-   La représentation textuelle est celle utilisée pour l'affichage et
    la saisie des données. Les adresses et les masques IPv4 sont
    représentés par leur forme classique (ie. : `212.85.137.66`,
    `255.255.255.0`). La [représentation des adresses IPv6 est celle
    canonique](http://fr.wikipedia.org/wiki/Adresse_IPv6#Notation_d.27une_adresse_IPv6)
    (ie. : `2001:db8:0:85a3::ac1f:8001` plutôt que
    `2001:0db8:0000:85a3:0000:0000:ac1f:8001`). Les masques IPv6 sont
    représentés sous la forme du préfixe de sous réseau (ie. : nombre de
    bits à 1 dans le masque).

**Parent topic:** [Gestion du protocole Internet
(IP)](../glpi/inventory_ip.html "Le protocole IP est matérialisé sous plusieurs formes : adresses IP, réseaux IP, mais aussi des FQDN")
