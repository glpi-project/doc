Affecter une machine provenant d'un outil d'inventaire à une entité
===================================================================

GLPI dispose d'un type de règles permettant d'affecter automatiquement
une machine provenant d'un outil d'inventaire à une entité et un lieu.

Ce type de règle est accessible depuis le menu Administration \> Règles
\> Règles d'affectation d'un élément à une entité .

Un certain nombre de critères sont disponibles : ceux reprenant des
champs génériques (nom, description, numéro de série, domaine, adresse
IP, sous-réseau) mais aussi des champs venant de l'outil d'inventaire si
celui-ci les propose.

Les actions disponibles sont d'**ignorer l'import de la machine**, de
l'**affecter à une entité** (statiquement), de l'**affecter à une entité
en utilisant le résultat d'une expression rationnelle** ou de
l'**affecter à un lieu défini**.

Important : le moteur s'arrête à la première règle vérifiée. Il est donc
nécessaire de bien ordonner la liste de règles. De plus, il est
préférable de mettre en premier les règles qui ont le plus de chance
d'être vérifiées (par exemple pour les entités comprenant beaucoup de
matériels).

Important : les règles d'affectation à une entité ne sont jouées que
lors de l'import initial de la machine dans GLPI : c'est à dire qu'à
partir du moment où une machine est importée, il n'existe aucun
processus automatisé pour la changer d'entité (il faut utiliser l'option
de **transfert** manuel).

Grâce au mécanisme de liste noire de GLPI il est possible d'exclure
certaines valeurs du traitement dans le moteur de règles comme certaines
adresses IP ou MAC (par exemple une IP 127.0.0.1). Voir [Configurer les
intitulés](config_dropdown.html "Les intitulés se configurent depuis le menu Configuration > Intitulés").

**Sujet parent :** [Gérer les règles
métiers](../glpi/administration_rule.html "Les règles métiers se gèrent depuis le menu Administration > Règles")
