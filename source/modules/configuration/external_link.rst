Configurer les liens externes protocolés
========================================

Les liens externes se configurent depuis le menu Configuration > Liens
externes

Certains éléments de GLPI peuvent être associés à un ensemble de liens
vers des applications externes. Ceux-ci sont visibles depuis l'onglet
``Liens`` des différentes fiches.

Pour paramétrer un lien, il est possible d'utiliser des tags
particuliers qui seront remplacés par les valeurs de l'élément. Les Tags
valides sont :

-  [LOGIN] : identifiant de l'utilisateur ;
-  [ID] : identifiant interne numérique de l'objet ;
-  [NAME] : nom de l'objet ;
-  [LOCATION] : lieu de l'objet ;
-  [LOCATIONID] : identifiant interne du lieu ;
-  [IP] : adresse IP de l'objet ;
-  [MAC] : adresse MAC de l'objet ;
-  [NETWORK] : réseau dans lequel se trouve l'objet ;
-  [DOMAIN] : domaine réseau de l'objet ;
-  [SERIAL] : numéro de série ;
-  [OTHERSERIAL] : numéro d'inventaire ;
-  [USER] : utilisateur associé au matériel ;
-  [GROUP] : groupe associé au matériel.
-  [FIRSTNAME] : prénom de l'utilisateur (que pour les utilisateurs)
-  [REALNAME] : nom de l'utilisateur (que pour les utilisateurs)

Chaque lien peut être associé à un ou plusieurs types d'élément.

Si le contenu est vide, c'est un simple lien qui sera généré. Si un
contenu est présent, c'est un lien vers le téléchargement du contenu qui
sera généré.

Le lien peut être ouvert dans une nouvelle fenêtre en fonction du
paramètre Ouvrir dans une nouvelle fenêtre.

Un Lien type web
----------------

Créer un lien externe protocolé ayant pour nom : ``http://[IP]`` ;
l'affecter au matériel réseau.

Un Lien de type RDP
-------------------

Pour l'accès à distance sur les ordinateurs, créer un lien externe
protocolé ayant pour nom ``Accès distant.rdp`` et paramétrer le
**Contenu du fichier** en y insérant le contenu d'un fichier type RDP et
en remplaçant l'ip / le nom / le domaine par des TAGS type [IP], [NAME],
[DOMAIN].

Remarque : Dans le cas de l'utilisation de Tags provenant de ports
réseaux (IP, MAC), si le matériel en possède plusieurs, alors cela
créera autant de liens que de ports. Par exemple pour une machine
possédant 2 adresses IP différentes, 2 liens seront affichés.

Prise en main à distance à travers l'applet VNC
-----------------------------------------------

certaines implémentations de VNC fournissent une applet qui permet de
prendre la main sur un ordinateur à travers un navigateur. En général,
le port utilisé est 5900. Le lien correspondant sera du type
http://[IP]:5900 ou http://[NAME].[DOMAIN]:5900.

