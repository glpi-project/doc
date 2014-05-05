Onglet "Ports réseaux"
======================

Gestion des ports réseaux pour les éléments d'inventaire

Un port réseau permet de modéliser la sortie d'une interface réseau sur
un matériel donné. Chaque port est caractérisé par un numéro et un nom.

Sur ce port, il est possible d'ajouter un ou plusieurs VLAN, ces
derniers peuvent être définis par un nom, un commentaire et un numéro de
VLAN (TAG ID).

Sur chaque port réseau, on peut associer un ou plusieurs [nom
réseau](inventory_ip_network_name.html "Un nom réseau correspond à l'identification unique d'une machine du point de vue d'Internet.").
On peut ajouter plusieurs noms réseau en allant dans l'onglet "Nom
réseau".

-   Lorsqu'il n'y a qu'un seul nom réseau, il s'affichera dans le
    formulaire du port réseau et il sera possible de le modifier
    directement. On peut également modifier le nom réseau au travers de
    son formulaire propre (avec ses onglets) en cliquant sur le titre
    juste au dessus de la partie du formulaire qui le concerne.
-   Lorsqu'il y a plusieurs noms réseau, il n'est plus possible de
    modifier le nom réseau dans le formulaire du port réseau. On doit
    systématiquement utiliser l'onglet.

Les ports réseau peuvent être de différents types. Il y a des ports
physiques (Ethernet, Wifi ...), [virtuels](glossary/virtual_ports.html)
(boucle locale, alias, aggrégats ...), point à point (ligne commutée)
...

L'onglet des ports réseau représente l'ensemble de ports disponibles sur
l'équipement dans un tableau. Dans l'en-tête du tableau, à côté du
nombre total de port, il y a un lien permettant de choisir les options
d'affichage des ports réseaux. Il est ainsi possible d'afficher ou de
masquer des informations telles que les informations réseau (tout ce qui
concerne Internet), les caractéristiques intrinsèques du port (ie.
dépendant de son type), les adresses MAC, les VLANs ...

Remarque : GLPI permet de représenter fidèlement des connexions réseau
très complexes avec des alias ports Wifi et/ou Ethernet associés à des
VLAN regroupés dans aggrégats (cf. [Connections réseau
complexe](appendix/image_complexe_networkport.html "Connection complexe avec des alias et des aggrégats.")).

-   **[Port
    Ethernet](../glpi/inventory_network_connection_ethernet.html)**\
     Gestion des ports réseau de type Ethernet.
-   **[Port Wifi](../glpi/inventory_network_connection_wifi.html)**\
     Gestion des ports réseau de type Wifi.
-   **[Boucle
    locale](../glpi/inventory_network_connection_local.html)**\
     Gestion des ports réseau de type boucle locale.
-   **[Alias de
    port](../glpi/inventory_network_connection_alias.html)**\
     Gestion des alias de port réseau.
-   **[Aggrégat de
    ports](../glpi/inventory_network_connection_aggregate.html)**\
     Gestion des aggrégats de ports réseau.

**Sujet parent :** [Gérer les
ordinateurs](../glpi/inventory_computer.html "Les ordinateurs se gèrent depuis le menu Parc > Ordinateurs")

**Sujet parent :** [Gérer les matériels
réseaux](../glpi/inventory_networking.html "Les matériels réseaux se gèrent depuis le menu Parc > Réseaux")

**Sujet parent :** [Onglet
"Connexions"](../glpi/inventory_connection.html "Gestion des connexions")
