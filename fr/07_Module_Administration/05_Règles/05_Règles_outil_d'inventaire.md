Règles d'affectation d'un élément à une entité
==============================================

GLPI dispose d'un type de règles permettant d'affecter automatiquement un élément provenant d'un outil d'inventaire à une entité et un lieu.

Un certain nombre de critères sont disponibles : ceux reprenant des champs génériques (nom, description, numéro de série, domaine, adresse IP, sous-réseau) mais aussi des champs venant de l'outil d'inventaire si celui-ci les propose.

Les actions disponibles sont d'**ignorer l'import**, de l'**affecter à une entité** (statiquement), de l'**affecter à une entité en utilisant le résultat d'une expression rationnelle** ou de
l'**affecter à un lieu défini**.

>Important : 
>Le moteur s'arrête à la première règle vérifiée. Il est donc nécessaire de bien ordonner la liste de règles. De plus, il est préférable de mettre en premier les règles qui ont le plus de chance d'être vérifiées (par exemple pour les entités comprenant beaucoup de matériels).
>Les règles d'affectation à une entité ne sont jouées que lors de l'import initial de la machine dans GLPI : c'est-à-dire qu'à partir du moment où une machine est importée, il n'existe aucun processus automatisé pour la changer d'entité (il faut utiliser l'option de **transfert** manuel).

Grâce au mécanisme de liste noire de GLPI il est possible d'exclure certaines valeurs du traitement dans le moteur de règles comme certaines adresses IP ou MAC (par exemple une IP 127.0.0.1). Voir [Configurer les
intitulés](config_dropdown.html "Les intitulés se configurent depuis le menu Configuration > Intitulés").

Règles d'import et de liaison des ordinateurs
=============================================

Un moteur de règles spécifique permet de contrôler le processus d'import et de liaison des machines depuis un outil d'inventaire.

Ce moteur a pour vocation de définir des règles qui permettent d'importer, de lier ou de refuser des ordinateurs.

Cinématique d'import d'une machine :

1.  la machine à importer passe dans le moteur d'affectation d'entité.
    S'il n'en renvoie aucune, alors la machine n'est pas importée. Dans le cas contraire, le processus continue.
2.  la machine passe dans le moteur d'import et de liaison. 
    En fonction des règles, elle est soit importée dans son entité de destination, soit liée avec une autre présente dans GLPI, soit pas importée.

Un certain nombre de critères sont disponibles : des champs génériques (nom, description, numéro de série, domaine, adresse IP, sous-réseau) mais aussi des champs venant de l'outil d'inventaire si celui-ci les propose, l'entité de destination de la machine ainsi qu'un statut servant à rechercher une machine déjà présente dans GLPI.

Les actions possibles sont d'ignorer l'import de la machine, de la lier si possible sinon de l'importer ou de la lier si possible sinon de refuser l'import.

>Important : 
>Le moteur s'arrête à la première règle vérifiée.
>La recherche d'une machine déjà présente dans GLPI se fait uniquement dans l'entité de destination de la machine.

    Exemple :

    Refus des imports de toutes les machines provenant d'un serveur d'inventaire en particulier :
      si *serveur d'inventaire est serveur 1*,
      *refuser l'import oui*.

    Liaison de machines : 
      si *Machine à importer : Numéro de série**est déjà présent dans GLPI oui* 
      ET 
      *Chercher les ordinateurs dans GLPI dont le statut est en stock* 
      alors *Liaison**assigner Liaison si possible, sinon pas d'import*.

    Refus d'un ordinateur pour mauvais numéro de série : 
      *Machine à importer : Numéro de série est "To be Filled By OEM"* 
      alors *Liaison refuser l'import oui*.

--------
**Sujet parent :** [Module Administration](index.php?fr/07_Module_Administration/01_Module_Administration.md "Le module Administration permet d'administrer les utilisateurs, groupes, entités, profils, règles et dictionnaires et offre des outils de maintenance de l'application").

**Sujet parent :** [Gérer les règles](index.php?fr/07_Module_Administration/05_Règles/01_Gérer_les_règles.md "Gérer les règles").