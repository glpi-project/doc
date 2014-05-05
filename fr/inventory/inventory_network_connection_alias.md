Alias de port
=============

Gestion des alias de port réseau.

Un alias de port réseau est un port virtuel qui peut spécialiser un port
physique.

Sous Linux, chaque VLAN, lorsqu'il est transmis
["taggé"](glossary/tagged_vlan.html), est associé un alias de port
(eth2.50 pour représenter le VLAN 50 sur le port eth2).

Un alias de port comporte son port d'origine (ie. celui sur lequel il
s'appuie) et une adresse MAC.

Avertissement : Lorsque l'on change le port d'origine, l'adresse MAC du
nouveau port d'orgine est affecté à l'alias de port.

**Sujet parent :** [Onglet "Ports
réseaux"](../glpi/inventory_network_connection.html "Gestion des ports réseaux pour les éléments d'inventaire")
