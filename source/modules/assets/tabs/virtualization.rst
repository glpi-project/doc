Virtualisation
~~~~~~~~~~~~~~

Dans cet onglet, on retrouve tous les systèmes de virtualisation (machines virtuelles, containers, jails, ...)
associés à un hôte (host) ou l'hôte sur lequel un système de virtualisation est installé.
Les informations disponibles varient d'un système à l'autre, en fonction des information qu'il est effectivement possible d'obtenir.

pour une machine virtuelle par exemple, on trouvera son nom, son système de virtualisation, son modèle de virtualisation,
l'état de la machine virtuelle, la mémoire allouée ainsi que le nom de la machine physique (hôte) et le nombre de processeurs logiques.

GLPI réalise actuellement la liaison entre un hôte et une machine virtuelle en se basant sur l'identifiant unique (uuid).
Dans certains cas, il arrive que l'uuid soit différent au sein de la machine physique et virtuelle, la liaison est alors impossible.

Le seul moyen d'associer manuellement une machine virtuelle à une machine physique est d'attribuer à
la machine virtuelle déclarée sur l'hôte et à la machine virtuelle dans GLPI un uuid identique.

.. note::

   En cas d’utilisation de l'inventaire natif ou d’un outil d’inventaire tiers, ces informations peuvent être automatiquement importées et mises à jour.
