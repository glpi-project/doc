Réseau IP
=========

Les Réseaux IP permettent de définir la topologie des réseaux.

A faire : Les réseaux sont indifféremment [IPv4 et en
IPv6](inventory_ip_protocol.html "Gestion des deux versions d'IP au sein de GLPI : IPv4 et IPv6.").

Les réseaux IP regroupent un ensemble d'adresses IP regroupées selon la
topologie définie par le plan d'adressage des administrateurs du réseau.

Ils peuvent s'emboîter : la hiérarchie des réseaux IP dépend des
adresses et des masques de ces réseaux ainsi que de leurs identités
d'appartenance.

Avertissement : La hiérarchie est gérée implicitement : il est
impossible de la modifier soi-même.

Un réseau est composé, au minimum, d'une adresse et d'un masque. À cela
peut s'ajouter une passerelle.

Un réseau est dit adressable si il est utilisé pour le routage interne
des ordinateurs. En d'autres termes, son masque de sous-réseau et sa
passerelle sont utilisés par tous[^1^](#fntarg_1) les équipements du
réseau. Généralement un réseau ayant une passerelle est adressable car
la passerelle est connue de tous les équipements et elle ne peut
appartenir qu'à un seul sous-réseau. Mais un réseau adressable n'a pas
nécessairement de passerelle. C'est par exemple le cas des réseaux
privées (`192.168.48.0/255.255.255.0`...) ou de la boucle locale
(`127.0.0.0/255.255.255.0` ou `::1/128`).

Les réseaux sont modifiables depuis les intitulés ( Configuration \>
Intitulés ) : Internet \> Réseaux IP

**Sujet parent :** [Gestion du protocole Internet
(IP)](../glpi/inventory_ip.html "Le protocole IP est matérialisé sous plusieurs formes : adresses IP, réseaux IP, mais aussi des FQDN")

[^1^](#fnsrc_1) Si un ou plusieurs ordinateurs n'ont pas les mêmes
informations, cela peut engendrer des problèmes de routage...
