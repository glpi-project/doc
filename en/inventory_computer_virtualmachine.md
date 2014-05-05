Tab "Virtual Machines"
======================

Computer virtual machine management

This information is visible in the tab **Virtual Machines** on the
computer form.

This tab includes all the virtual machines associated with a
virtualization server (host) or the host a virtual machine which is
installed. The information available to a virtual machine are associated
name, unique identifier (uuid), its virtualization system and model, as
well as the number of processors and memory allocation.

GLPI is currently the liaison between a host and a virtual machine based
on the unique identifier (uuid). If in some cases, it happens that the
uuid is different in the virtual and physical machine, the connection is
impossible.

The only way to manually associate a virtual machine to a physical
machine is to assign to the machine virtual declared on the host and the
virtual machine in GLPI a same uuid.

Note: When using an inventory tool, this information can be
automatically imported and updated.

**Parent topic:** [Manage
Computers](../glpi/inventory_computer.html "Computers are managed from the menu Assets > Computers")
