Network ports
~~~~~~~~~~~~~

This tab, named `Network ports` and visible in a `Computer` entry, allows to manage the network ports attached to a computer.

.. image:: /modules/assets/images/ports.png
   :alt: List of network ports
   :align: center

A network port represents the output of a network interface on a given hardware. A port is characterized by a number and a name.


It is possible on a network port to add one or more VLAN, these VLANs being defined by a name, an optional comment and a VLAN number.


.. image:: /modules/assets/images/ports_vlan.png
   :alt: VLAN
   :align: center

One or more :doc:`network name </modules/configuration/dropdowns/internet>` can be associated to each network port. This can be done in tab `Network name`.

.. image:: /modules/assets/images/ports_network_name.png
   :alt: Network name
   :align: center

.. note::
   When a network port has only one network name, this name is displayed
   in the network port form itself and it is possible to modify the
   name directly. It is also possible to modify the network name via
   its own form, accessible by clicking on the link under the name.

   When a network port has several network names, the only way to
   modify the network names is via the network name form.

Network ports can be of different types:

* physical port: ethernet, WiFi...
* :term:`Virtual network port`: local loop-back, alias, aggregates...
* point to point: switched network...

The `Network port` tab groups in a table the ports that are available
on the equipment. The table header contains the total number of ports
and a link that allows to choose display options. This allows to
selectively display or mask information such as network data (IP...),
port characteristics depending on its type, MAC address, VLANs...

.. note::

   GLPI allows to present complex network connection with for example WiFi or Ethernet port aliases associated to VLANs grouped in aggregates...


Management of Ethernet network ports
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The Ethernet protocol is classically used on internal networks.

An Ethernet port is characterized by its type (twisted pair,
mono-mode/multi-mode optical fiber...), a transfer rate ((10Mb, 100Mb,
1Gb, 10Gb...) and a MAC address. It is possible to associate to the
port a network card and a network plug.


Ethernet connections are realized by linking two Ethernet ports, which
requires that there is a free port on each equipment to be
connected. In general, a connection links a port attached to a
computer, a peripheral or a printer and a port attached to a network
equipment (hub, switch).


Management of WiFi network ports
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The WiFi protocol is widely used on wireless networks.

A WiFi port is characterized by the mode of the network card (ad-hoc,
access point, repeater...), the WiFi protocol version (ab, g...) and
its MAX address.

It is possible to associate a network card to the port, similarly to Ethernet ports.

A WiFi network can be associated to a given port. Apart from its name, a WiFi network has an ESSID and is characterized by its type:

*Infrastructure:* WiFi network with on or several access points and connected clients
*Ad-hoc:* WiFi network between similar systems without access points

Management of local loop-back ports
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The local loop-back is a virtual port used by most equipments for internal communication. It is this port that is used when connecting to ``localhost`` or ``127.0.0.1``.

Local loop-back has no specific attribute.

Management of network port aliases
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

A network port alias is a virtual port that can refine a physical port.

On Linux, to each VLAN, when transmitted `"tagged" <glossary/tagged_vlan.html>`__, is associated a port alias, for example `eth2.50` to represent VLAN 50 on port `eth2`.


A port alias contains its base port and a MAC address.

Note that when the origin port is changed, the MAC address of the new port is affected to the port alias.

Management of network port aggregates
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

A network port aggregate is a virtual port that allows to group several physical ports.



On Linux, aggregates are represented by bridges `bridges <http://www.linuxfoundation.org/collaborate/workgroups/networking/bridge>` linking together different ports. In the same way, an Ethernet firewall uses a bridge that links interfaces to be filtered.

A port aggregate contains the origin ports and a MAC address.

.. note::

   Every deletion or addition of a network port is recorded in the history of the computer.

.. note::

   If using native inventory or third-party inventory tool, the network ports information can be automatically imported and updated.
