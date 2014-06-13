Onglet "Machines virtuelles"
============================

Gestion des machines virtuelles associées aux ordinateurs

Dans cet onglet, on retrouve toutes les machines virtuelles associées à un hôte de virtualisation (host) ou l'hôte sur lequel une machine virtuelle est installée. Les informations disponibles pour une machine virtuelle associée sont son nom, son système de virtualisation, son modèle de virtualisation, l'état de la machine virtuelle, la mémoire allouée ainsi que le nom de la machine physique(hôte) et le nombre de processeurs logiques.

GLPI réalise actuellement la liaison entre un hôte et une machine virtuelle en se basant sur l'identifiant unique (uuid). Dans certains cas, il arrive que l'uuid soit différent au sein de la machine physique et virtuelle, la liaison est alors impossible.

Le seul moyen d'associer manuellement une machine virtuelle à une machine physique est d'attribuer à la machine virtuelle déclarée sur l'hôte et à la machine virtuelle dans GLPI un uuid identique.

***Remarque :*** *En cas d'utilisation d'un outil d'inventaire tiers, ces informations peuvent être automatiquement importées et mises à jour.*

------------
**Sujet parent :** [Gérer les ordinateurs](index.php?fr/03_Module_Parc/04_Gérer_les_ordinateurs/01_Gérer_les_ordinateurs.md "Les ordinateurs se gèrent depuis le menu Parc > Ordinateurs")
