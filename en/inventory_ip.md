Gestion du protocole Internet (IP)
==================================

Le protocole IP est matérialisé sous plusieurs formes : adresses IP,
réseaux IP, mais aussi des FQDN

Un équipement se connecte au réseau au travers de [ports
réseau](inventory_network_connection.html "Computer network port management").

À un port réseau, on associe un ou plusieurs [Nom
réseau](inventory_ip_network_name.html "Un nom réseau correspond à l'identification unique d'une machine du point de vue d'Internet.").

Un Nom réseau peut appartenir à un Domaine Internet. Il peut contenir
une ou plusieurs [adresses
IP](inventory_ip_protocol.html "Gestion des deux versions d'IP au sein de GLPI : IPv4 et IPv6.")
et il peut avoir plusieurs alias.

Une adresse IP appartient à un [réseau
IP](inventory_ip_network.html "Les Réseaux IP permettent de définir la topologie des réseaux.").

Les réseaux IP s'emboîtent les uns dans les autres (par exemple,
`192.168.1.0/255.255.255.0` est un sous réseau de
`192.168.0.0/255.255.254.0`).

-   **[Protocole IP.](../glpi/inventory_ip_protocol.html)**\
     Gestion des deux versions d'IP au sein de GLPI : IPv4 et IPv6.
-   **[Réseau IP](../glpi/inventory_ip_network.html)**\
     Les Réseaux IP permettent de définir la topologie des réseaux.
-   **[Nom réseau](../glpi/inventory_ip_network_name.html)**\
     Un nom réseau correspond à l'identification unique d'une machine du
    point de vue d'Internet.

**Parent topic:** [Inventory
Module](../glpi/inventory.html "Inventory Module in GLPI")
