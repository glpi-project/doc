Importer ou lier une machine provenant d'un outil d'inventaire
==============================================================

Un moteur de règles spécifique permet de contrôler le processus d'import
et de liaison des machines depuis un outil d'inventaire.

Ce type de règle est accessible depuis le menu Administration \> Règles
\> Règles d'import et de liaison des ordinateurs .

Ce moteur a pour vocation de définir des règles qui permettent
d'importer, de lier ou de refuser des ordinateurs.

Cinématique d'import d'une machine :

1.  la machine à importer passe dans le moteur d'affectation d'entité.
    S'il n'en renvoie aucune, alors la machine n'est pas importée. Dans
    le cas contraire, le processus continue
2.  la machine passe dans le moteur d'import et de liaison. En fonction
    des règles, elle est soit importée dans son entité de destination,
    soit liée avec une autre présente dans GLPI, soit pas importée

Un certain nombre de critères sont disponibles : des champs génériques
(nom, description, numéro de série, domaine, adresse IP, sous-réseau)
mais aussi des champs venant de l'outil d'inventaire si celui-ci les
propose, l'entité de destination de la machine ainsi qu'un statut
servant à rechercher une machine déjà présente dans GLPI.

Les actions possibles sont d'ignorer l'import de la machine, de la lier
si possible sinon de l'importer ou de la lier si possible sinon de
refuser l'import.

Important: Le moteur s'arrête à la première règle vérifiée.

Important: La recherche d'une machine déjà présente dans GLPI se fait
uniquement dans l'entité de destination de la machine.

Refus des imports de toutes les machines provenant d'un serveur
d'inventaire en particulier : si *serveur d'inventaire est serveur 1*,
*refuser l'import oui*.

Liaison de machines : si *Machine à importer : Numéro de série**est déjà
présent dans GLPI oui* ET *Chercher les ordinateurs dans GLPI dont le
statut est en stock* alors *Liaison**assigner Liaison si possible, sinon
pas d'import*.

Refus d'un ordinateur pour mauvais numéro de série : *Machine à importer
: Numéro de série est "To be Filled By OEM"* alors *Liaison refuser
l'import oui*.

**Parent topic:** [Gérer les règles
métiers](../glpi/administration_rule.html "Les règles métiers se gèrent depuis le menu Administration > Règles")
