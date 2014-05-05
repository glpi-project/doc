Aggrégat de ports
=================

Gestion des aggrégats de ports réseau.

Un aggrégat de port réseau est un port virtuel qui permet de regrouper
plusieurs ports physiques entre eux.

Les routeurs de coeurs de réseau sont souvent reliés entre eux par des
aggrégats afin de faire de la redondance et/ou de l'augmentation de
bande passante.

On peut considérer qu'un équipement réseau est composé de ports réseau
physique qui sont reliés entre eux par des aggrégats de ports. Ces
derniers correspondent aux VLANs physiquement définits sur l'équipement.
Tout naturellement, ses adresses IP de gestion sont rattachées aux
aggrégats associés au VLAN de gestion du switch ou du routeur.

Sur les machines Linux, les aggrégats sont représentés par des
[bridges](http://www.linuxfoundation.org/collaborate/workgroups/networking/bridge)
qui relient entre eux différents ports. De la même manière, un firewall
Ethernet utilisera un bridge qui reliera les interfaces à filtrer.

Un aggrégat de ports comporte les ports d'origine (ie. ceux sur lesquels
il s'appuie) et une adresse MAC.

**Parent topic:** [Tab "Network
Port"](../glpi/inventory_network_connection.html "Computer network port management")
