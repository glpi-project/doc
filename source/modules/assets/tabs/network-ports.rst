Network ports
~~~~~~~~~~~~~

This tab, named `Network ports` and visible in a `Computer` entry, allows to manage the network ports attached to a computer.

.. image:: /modules/assets/images/ports.png
   :alt: List of network ports
   :align: center

A network port represents the output of a network interface on a given hardware. A port is characterized by a number and a name.

.. ??? Un port réseau permet de modéliser la sortie d'une interface réseau sur un matériel donné. Chaque port est caractérisé par un numéro et un nom.

It is possible on a network port to add one or more VLAN, these VLANs being defined by a name, an optional comment and a VLAN number.

.. ??? Sur ce port, il est possible d'ajouter un ou plusieurs VLAN, ces derniers peuvent être définis par un nom, un commentaire et un numéro de VLAN (TAG ID).

.. image:: /modules/assets/images/ports_vlan.png
   :alt: VLAN
   :align: center

One or more :doc:`network name <../configuration/intitules/internet>` can be associated to each network port. This can be done in tab `Network name`.

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

* physical port: ethernet, wifi...
* :term:`virtual network port`: local loopback, alias, aggregates...
* point to point: switched network...

The `Network port` tab groups in a table the ports that are available
on the equipment. The table header contains the total number of ports
and a link that allows to choose display options. This allows to
selectively display or mask informations such as network data (IP...),
port characteristics depending on its type, MAC adress, VLANs...

.. note::

   GLPI allows to present complex network connexion with for example wifi or ethernet port aliases associated to VLANs grouped in aggregates...


Gestion des ports réseau de type Ethernet
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Le protocole Ethernet est celui classiquement utilisé sur les réseaux
internes.

Un port Ethernet est caractérisé par son type (paire torsadée, fibre
optique monomode/multimode ...), un débit (10Mb, 100Mb, 1Gb, 10Gb
...) et son adresse MAC. Il est possible de lui associer une carte
réseau ainsi qu'une prise réseau.

Les connexions Ethernet se font en reliant deux ports Ethernet entre
eux. Pour cela, il faut qu'il y ait un port libre sur chacun de ces
matériels. Généralement, les connexions se feront entre un port
présent sur un ordinateur, un périphérique ou une imprimante et un
port présent sur un matériel réseau (hub, switch).

Gestion des ports réseau de type Wifi
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Le protocole Wifi est celui classiquement utilisé pour les réseaux
sans fils.

Un port Wifi est caractérisé par le mode de fonctionnement de la
carte (Ad-Hoc, Point d'accès, répéteur...), la version du protocol
Wifi (ab, g ...) et son adresse MAC.

Comme les ports Ethernet, il est possible de lui associer une carte
réseau.

On peut associer un réseau Wifi à un port donné. Outre son nom, un
réseau Wifi contient un ESSID et est caractérisé par son type :

*Infrastructure :* réseau Wifi avec un ou plusieurs points d'accès
   et des clients qui se connectent dessus.
*Ad-hoc :* réseau Wifi entre systèmes équivalents sans point
   d'accès.

Gestion des ports réseau de type boucle locale
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

La boucle locale est un port virtuel utilisé par la plupart des
équipements afin de communiquer en interne. C'est ce port qui est
sollicité lorsque l'on essaie de communiquer avec la machine
``localhost`` (``127.0.0.1``).

La boucle locale ne possède aucun attribut spécifique.

Gestion des alias de port réseau
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Un alias de port réseau est un port virtuel qui peut spécialiser un
port physique.

Sous Linux, chaque VLAN, lorsqu'il est transmis
`"taggé" <glossary/tagged_vlan.html>`__, est associé un alias de port
(eth2.50 pour représenter le VLAN 50 sur le port eth2).

Un alias de port comporte son port d'origine (ie. celui sur lequel il
s'appuie) et une adresse MAC.

Avertissement : Lorsque l'on change le port d'origine, l'adresse MAC
du nouveau port d'origine est affectée à l'alias de port.

Gestion des aggrégats de ports réseau
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Un aggrégat de port réseau est un port virtuel qui permet de
regrouper plusieurs ports physiques entre eux.

Les routeurs de coeurs de réseau sont souvent reliés entre eux par
des aggrégats afin de faire de la redondance et/ou de l'augmentation
de bande passante.

On peut considérer qu'un équipement réseau est composé de ports
réseaux physiques qui sont reliés entre eux par des aggrégats de ports.
Ces derniers correspondent aux VLANs physiquement définits sur
l'équipement. Tout naturellement, ses adresses IP de gestion sont
rattachées aux aggrégats associés au VLAN de gestion du switch ou du
routeur.

Sur les machines Linux, les aggrégats sont représentés par des
`bridges <http://www.linuxfoundation.org/collaborate/workgroups/networking/bridge>`__
qui relient entre eux différents ports. De la même manière, un
firewall Ethernet utilisera un bridge qui reliera les interfaces à
filtrer.

Un aggrégat de ports comporte les ports d'origine (ie. ceux sur
lesquels il s'appuie) et une adresse MAC.

.. note::

   Every deletion or addition of a network port is recorded in the history of the computer.

.. note::

   If using native inventory or third-party inventory tool, the network ports informations can be automaticaly imported and updated.
