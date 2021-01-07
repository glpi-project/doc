Virtualization
~~~~~~~~~~~~~~

This tab displays the virtualization systems (virtual machines, containers, jails....) associated to a host.

.. ??? Dans cet onglet, on retrouve tous les systèmes de virtualisation (machines virtuelles, containers, jails, ...) associés à un hôte (host) ou l'hôte sur lequel un système de virtualisation est installé.

The available informations vary from one system to another: for a virtual machine for instance, the informations include name, virtualization system, virtualization model, state, allocated memory, number of logical processors... as well as the name of the physical machine (the host).

GLPI establishes the link between a host and a virtual machine based on the unique identifier (UUID). In some case, it is possible that the UUID is different inside the physical machine and the virtual machine; it is therefore impossible to make the link automatically.

The only way to link manually a virtual machine to a physical machine is to attribute the *same* UUID to the virtual machine declared on the host and to the virtual machine inside GLPI.

.. note::

   If using native inventory or third-party inventory tool, the virtualization informations can be automatically imported and updated.
