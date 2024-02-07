Internet Dropdowns
++++++++++++++++++

The IP protocol is represented in several forms:

* IP addresses
* IP networks
* :term:`FQDN`

A device connects to a network through :doc:`network ports <../../assets/tabs/network-ports>`.

To a network port, one or more Network Names are associated (see below).

A Network Name can belong to an Internet Domain. It can contain one or more IP addresses (see below) and it can have several aliases.

An IP address belongs to an IP network (see below).

At the IP protocol level, networks are either in IPv4 or IPv6.

.. note::

   GLPI manages IPv4 and IPv6 differently. The only differences are the format of the addresses and masks.

`212.85.137.66` is an IPv4 address, while `2a00:1450:4007:803::1012` is an IPv6 address.

GLPI considers IPv4 as a subset of IPv6 through IPv4-mapped IPv6 addresses and treats them the same.

GLPI uses two representations for the IP addresses (IPv6 ad IPv4):

.. If the binary is only used internally, is there a need to add it to that user docs?

* The binary representation allows GLPI to make the analysis of the relations between networks, addresses and masks. It is inaccessible to the user.
* The textual representation is used for displaying and entering data.

IPv4 addresses and masks are represented in their classic form (e.g., `212.85.137.66`, `255.255.255.0`).
The `representation of IPv6 addresses is the canonical notation` (ie: `2001:db8:0:85a3:0:0:ac1f:8001` rather than `2001:0db8:0000:85a3:0000:0000:ac1f:8001`).
In this form, you may omit 1 - 3 leading zeros in each group.
IPv6 masks are represented in the form of the subnetwork prefix (ie: number of bits to 1 in the mask).

IP networks
-----------

IP networks allows you to define the network topology.
They group together a set of IP addresses grouped according to the topology defined by the network administrators' addressing plan.

They can be nested, and the hierarchy of IP networks depends on the addresses and masks of these networks as as well as their associated identities.
For example, `192.168.1.0/255.255.255.0` is a sub-network of `192.168.0.0/255.255.254.0`.

.. warning::

   The hierarchy is managed implicitly and cannot be modified manually.

A network is composed of at least an address and a mask.
A gateway can optionally be included.

A network is said to be addressable if it is used for internal routing of computers.
In other words, its subnet mask and its gateway are used by all the equipment on the network (if one or more computers do not have the same information, this can cause routing problems...).
Generally a network with a gateway is addressable because the gateway is known by all the equipment and it can only belong to one subnet.
But an addressable network does not necessarily have a gateway.
This is for example the case of private networks (`192.168.48.0/255.255.255.0`...) or the local loop (`127.0.0.0/255.255.255.0` or `::1/128`).

VLAN
~~~~

Displays a list of :term:`VLAN` associated with this IP network and allows adding new ones.

IP addresses
~~~~~~~~~~~~

Lists the IP addresses of this network.

You can sort this list by IP number by clicking on the IP Addresses link or by type of equipment by clicking on the Sort by Item Type link.
In this case, you will have a table by type of element.

.. include:: ../../tabs/historical.rst

.. include:: ../../tabs/all.rst

Internet domains
----------------

Network names
~~~~~~~~~~~~~

Displays a list of network names for the domain.

Wi-Fi networks
--------------

TO BE DONE

Network names
-------------

A network name is the unique identification of a machine from the Internet point of view.

Generally, a device is identified by one or more particular names on the network.
The DNS server will resolve this name to an IP address.
In case both IPv4 and IPv6 are used, this name will return two IP addresses: one in IPv4 and the other in IPv6.
This is why a network name can have several IP addresses.

A network name is composed of a name that corresponds to the :term:`FQDN` label and one or more IP addresses.

The IP network field appears in order to retrieve information about the different IP networks available.
This information is not kept in the network name because it can have several IP addresses and each can belong to several IP networks.

.. note::

   When entering a network name, the validity of the name as well as that of each IP address is checked.
   If one of these elements is not valid then it is rejected.

To add an IP address to a network name, click on the *plus button* in front of the IP address entry fields.
To remove an IP address, simply delete the contents of the IP field you wish to remove.

Network alias
~~~~~~~~~~~~~

Displays a list of aliases for this network and allows adding new ones.

Traditionally, the network name is the one used by DNS for reverse resolution of an IP address, while the aliases correspond to the `CNAME` of the :term:`FQDN` name.

Similarly, the alias name must have a valid :term:`FQDN` label

.. include:: ../../tabs/historical.rst

.. include:: ../../tabs/all.rst
