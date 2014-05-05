Onglet "Machines virtuelles"
============================

Gestion des machines virtuelles associées aux ordinateurs

Ces informations sont visibles dans l'onglet **Machines virtuelles** de
la fiche d'un ordinateur.

Dans cet onglet, on retrouve toutes les machines virtuelles associées à
un hôte de virtualisation (host) ou l'hôte sur lequel une machine
virtuelle est installée. Les informations disponibles pour une machine
virtuelle associée sont son nom, son identifiant unique (uuid), son
système et type de virtualisation ainsi que le nombre de processeurs
logiques et la mémoire allouée.

GLPI réalise actuellement la liaison entre un hôte et une machine
virtuelle en se basant sur l'identifiant unique (uuid). Dans certains
cas, il arrive que l'uuid soit différent au sein de la machine physique
et virtuelle, la liaison est alors impossible.

Le seul moyen d'associer manuellement une machine virtuelle à une
machine physique est d'attribuer à la machine virtuelle déclarée sur
l'hôte et à la machine virtuelle dans GLPI un uuid identique.

Remarque : En cas d'utilisation d'un outil d'inventaire tiers, ces
informations peuvent être automatiquement importées et mises à jour.

**Sujet parent :** [Gérer les
ordinateurs](../glpi/inventory_computer.html "Les ordinateurs se gèrent depuis le menu Parc > Ordinateurs")
