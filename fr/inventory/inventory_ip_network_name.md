Nom réseau
==========

Un nom réseau correspond à l'identification unique d'une machine du
point de vue d'Internet.

Généralement, un équipement est identifié par un ou plusieurs noms
particuliers sur le réseau. Le serveur DNS résoudra ce nom en adresse
IP. Dans le cas où IPv4 et IPv6 sont utilisés, ce nom renverra deux
adresses IP : une en IPv4 et l'autre en IPv6. C'est pourquoi un nom
réseau peut avoir plusieurs adresses IP.

Un nom réseau est composé d'un nom qui correspond au label du FQDN (cf.
[labels FQDN](glossary/fqdn_label.html)), d'un [domaine
internet](glossary/fqdn.html) et de une ou plusieurs adresses IP.

Le champs réseau IP apparaît afin de retrouver les informations sur les
différents réseaux IP disponibles. Cette information n'est pas conservée
dans le nom réseau car il peut avoir plusieurs adresse IP et chacune
peut appartenir à plusieurs réseaux IP.

Remarque : Lors de la saisie d'un nom réseau, la validité du nom ainsi
que celle de chacune des adresses IP est vérifiée. Si un de ces élément
n'est pas valide alors il est rejeté.

Pour ajouter une adresse IP à un nom réseau, il faut cliquer sur le "+"
devant les champs de saisie des adresses IP. Pour supprimer une adresse
IP, il suffit d'effacer le contenu du champs de l'IP que l'on souhaite
retirer.

Il est possible d'ajouter des [alias](glossary/fqdn_label.html) dans
l'onglet des alias réseau. Traditionnellement, le nom réseau est celui
utilisé par le DNS pour la résolution inverse d'une adresse IP alors que
les alias correspondent au *`CNAME`* du nomFQDN. De la même manière, le
nom de l'alias doit un label FQDN valide.

**Sujet parent :** [Gestion du protocole Internet
(IP)](../glpi/inventory_ip.html "Le protocole IP est matérialisé sous plusieurs formes : adresses IP, réseaux IP, mais aussi des FQDN")
