Intitulés Internet
==================

Le protocole IP est matérialisé sous plusieurs formes : adresses IP, réseaux IP, mais aussi des FQDN.

Un équipement se connecte au réseau au travers de :doc:`ports réseaux <../../parc/onglets/ports-reseaux>`.

À un port réseau, on associe un ou plusieurs Noms réseau(voir ci-dessous).

Un Nom réseau peut appartenir à un Domaine Internet. Il peut contenir une ou plusieurs adresses IP (voir ci-dessous) et il peut avoir plusieurs alias.

Une adresse IP appartient à un réseau IP(voir ci-dessous).

Au niveau protocole IP, les réseaux sont indifféremment en IPv4 et en IPv6.

***Remarque :** GLPI gère indifféremment IPv4 et IPv6. La seule distinction provient du format des adresses et des masques.*

`212.85.137.66` est une adresse IPv4, alors que `2a00:1450:4007:803::1012` est en IPv6.

GLPI considère [IPv4 comme un sous-ensemble d'IPv6](http://fr.wikipedia.org/wiki/Adresse_IPv6_mappant_IPv4) : les traitements sont les mêmes.

GLPI, utilise deux représentations pour les adresses IP (IPv6 et IPv4) :
-   La représentation binaire lui permet de faire l'analyse des relations entre réseaux, adresses et masques. Elle est inaccessible à l'utilisateur.
-   La représentation textuelle est celle utilisée pour l'affichage et la saisie des données.
    Les adresses et les masques IPv4 sont représentés par leur forme classique (ie. : `212.85.137.66`, `255.255.255.0`). La [représentation des adresses IPv6 est celle     canonique](http://fr.wikipedia.org/wiki/Adresse_IPv6#Notation_d.27une_adresse_IPv6) (ie. : `2001:db8:0:85a3::ac1f:8001` plutôt que `2001:0db8:0000:85a3:0000:0000:ac1f:8001`). Les masques IPv6 sont représentés sous la forme du préfixe de sous réseau (ie. : nombre de bits à 1 dans le masque).

Réseaux IP
----------
Les Réseaux IP permettent de définir la topologie des réseaux.

Ils regroupent un ensemble d'adresses IP regroupées selon la topologie définie par le plan d'adressage des administrateurs du réseau.

Ils peuvent s'emboîter : la hiérarchie des réseaux IP dépend des adresses et des masques de ces réseaux ainsi que de leurs identités d'appartenance.
Par exemple, `192.168.1.0/255.255.255.0` est un sous réseau de `192.168.0.0/255.255.254.0`).

>Avertissement : La hiérarchie est gérée implicitement : il est impossible de la modifier soi-même.

Un réseau est composé, au minimum, d'une adresse et d'un masque. À cela peut s'ajouter une passerelle.

Un réseau est dit adressable si il est utilisé pour le routage interne des ordinateurs. En d'autres termes, son masque de sous-réseau et sa passerelle sont utilisés par tous les équipements du réseau (si un ou plusieurs ordinateurs n'ont pas les mêmes informations, cela peut engendrer des problèmes de routage...). Généralement un réseau ayant une passerelle est adressable car la passerelle est connue de tous les équipements et elle ne peut appartenir qu'à un seul sous-réseau. Mais un réseau adressable n'a pas nécessairement de passerelle. C'est par exemple le cas des réseaux privées (`192.168.48.0/255.255.255.0`...) ou de la boucle locale (`127.0.0.0/255.255.255.0` ou `::1/128`).

Les réseaux sont modifiables depuis les intitulés ( Configuration > Intitulés ) : Internet > Réseaux IP.


***Les différents onglets***

-   **Onglet "VLANs"**
    Liste les VLANs associés à ce réseau IP et permet d'en associer un nouveau.

-   **Onglet "Adresses IP"**
    Liste les adresses IP de ce réseau.
    Vous pouvez classer cette liste par numéro d'IP en cliant sur le lien Adresses IP ou par type de matériel en cliquant sur le lien Trier par type d'élément. Dans ce cas, vous aurez un tableau par type d'élément.

-   **[Onglet "Historique"](Les_différents_onglets/Onglet_Historique.md)**
     L'historique est visualisé depuis l'onglet *Historique*

-   **[Onglet "Tous"](Les_différents_onglets/Onglet_Tous.md)**
     Pour un élément, toutes les informations sont affichées sur une seule page.

Domaines Internet
-----------------

***Les différents onglets***

-   **Onglet "Noms réseau"**
    Liste les noms réseau du domaine.

-   **Alias réseau**
    Liste les alias réseau du domaine.
 
-   **[Onglet "Historique"](Les_différents_onglets/Onglet_Historique.md)**
     L'historique est visualisé depuis l'onglet *Historique*

-   **[Onglet "Tous"](Les_différents_onglets/Onglet_Tous.md)**
     Pour un élément, toutes les informations sont affichées sur une seule page.

Réseaux Wifi
----------

A FAIRE

Noms réseau
----------
Un nom réseau correspond à l'identification unique d'une machine du point de vue d'Internet.

Généralement, un équipement est identifié par un ou plusieurs noms particuliers sur le réseau. Le serveur DNS résoudra ce nom en adresse IP. Dans le cas où IPv4 et IPv6 sont utilisés, ce nom renverra deux adresses IP : une en IPv4 et l'autre en IPv6. C'est pourquoi un nom réseau peut avoir plusieurs adresses IP.

Un nom réseau est composé d'un nom qui correspond au label du FQDN (Cf. [labels FQDN](glossary/fqdn_label.html)), d'un [domaine internet](glossary/fqdn.html) et de une ou plusieurs adresses IP.

Le champs réseau IP apparaît afin de retrouver les informations sur les différents réseaux IP disponibles. Cette information n'est pas conservée dans le nom réseau car il peut avoir plusieurs adresse IP et chacune peut appartenir à plusieurs réseaux IP.

***Remarque :** Lors de la saisie d'un nom réseau, la validité du nom ainsi que celle de chacune des adresses IP est vérifiée. Si un de ces élément n'est pas valide alors il est rejeté.*

Pour ajouter une adresse IP à un nom réseau, il faut cliquer sur le ![image](docs/image/addcriteria.png) devant les champs de saisie des adresses IP. Pour supprimer une adresse
IP, il suffit d'effacer le contenu du champs de l'IP que l'on souhaite retirer.


***Les différents onglets***

-   **Alias réseau**
    Cet onglet liste les alias déjà présents pour ce réseau et permet d'en ajouter un nouveau.
    Traditionnellement, le nom réseau est celui utilisé par le DNS pour la résolution inverse d'une adresse IP alors que les alias correspondent au *`CNAME`* du nomFQDN. 
    De la même manière, le nom de l'alias doit un label FQDN valide.

-   **[Onglet "Historique"](Les_différents_onglets/Onglet_Historique.md)**
     L'historique est visualisé depuis l'onglet *Historique*

-   **[Onglet "Tous"](Les_différents_onglets/Onglet_Tous.md)**
     Pour un élément, toutes les informations sont affichées sur une seule page.


Les différentes actions
-----------------------

-   **[Ajouter un intitulé](Les_différentes_actions/Créer_un_nouvel_objet.md)**
-   **[Voir un intitulé](Les_différentes_actions/Visualiser_un_objet.md)**
-   **[Modifier un intitulé](Les_différentes_actions/Modifier_un_objet.md)**
-   **[Supprimer un intitulé](Les_différentes_actions/Supprimer_un_objet.md)**

>Important : Si des éléments que vous voulez supprimer sont utilisés, GLPI proposera automatiquement de transférer les entrées existantes vers un autre élément de la liste, ou bien de les remettre à zéro.

------
**Sujet parent :** [Les intitulés](08_Module_Configuration/02_Intitulés/01_Intitulés.md "Les intitulés sont gérés depuis le menu Configuration > Intitulés")
