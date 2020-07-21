Ports réseaux
~~~~~~~~~~

Gestion des ports réseaux pour les éléments d'inventaire

.. image:: /modules/parc/images/ports.png
   :alt: Liste des ports réseaux
   :align: center

Un port réseau permet de modéliser la sortie d'une interface réseau sur
un matériel donné. Chaque port est caractérisé par un numéro et un nom.

Sur ce port, il est possible d'ajouter un ou plusieurs VLAN, ces
derniers peuvent être définis par un nom, un commentaire et un numéro de
VLAN (TAG ID).

.. image:: /modules/parc/images/ports_vlan.png
   :alt: VLAN
   :align: center


Sur chaque port réseau, on peut associer un ou plusieurs :doc:`nom réseau <../configuration/intitules/internet>`.
On peut ajouter plusieurs noms réseau en allant dans l'onglet "Nom réseau".

.. image:: /modules/parc/images/ports_network_name.png
   :alt: Nom réseau
   :align: center

.. note::
   Lorsqu'il n'y a qu'un seul nom réseau, il s'affichera dans le
   formulaire du port réseau et il sera possible de le modifier
   directement. On peut également modifier le nom réseau au travers de
   son formulaire propre (avec ses onglets) en cliquant sur le titre
   juste au dessus de la partie du formulaire qui le concerne.

   Lorsqu'il y a plusieurs noms réseau, il n'est plus possible de
   modifier le nom réseau dans le formulaire du port réseau. On doit
   systématiquement utiliser l'onglet.

Les ports réseau peuvent être de différents types. Il y a des ports
physiques (Ethernet, Wifi ...),
:term:`Port réseau virtuel` (boucle locale, alias,
aggrégats ...), point à point (ligne commutée) ...

L'onglet des ports réseau représente l'ensemble des ports disponibles sur
l'équipement dans un tableau.

Dans l'en-tête du tableau, à côté du
nombre total de port, il y a un lien permettant de choisir les options
d'affichage des ports réseaux.

Il est ainsi possible d'afficher ou de
masquer des informations telles que les informations réseau (tout ce qui
concerne Internet), les caractéristiques intrinsèques du port (ie.
dépendant de son type), les adresses MAC, les VLANs ...

.. note::

   GLPI permet de représenter fidèlement des connexions
   réseau très complexes avec des alias ports Wifi et/ou Ethernet associés
   à des VLAN regroupés dans aggrégats

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

   Toute suppression ou ajout d'un port réseau est enregistré dans l'historique de l'ordinateur.


.. note::

   En cas d’utilisation de l'inventaire natif ou d’un outil d’inventaire tiers, ces informations peuvent être automatiquement importées et mises à jour.
