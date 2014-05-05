Administrer les entités
=======================

Dans GLPI, administrer les entités peut se faire à partir du menu
Administration \> Entités .

La notion d'entité est une notion clé dans GLPI. Elle peut s'apparenter
à la notion de hiérarchie, de service au sein d'une administration d'une
entreprise ou d'un système d'information. Elle permet d'isoler des
ensembles organisés de manière hiérarchique dans une instance unique de
GLPI (une seule installation de GLPI). Le terme choisi est
volontairement neutre, afin de pouvoir s'adapter à chaque système
d'information. Une seule instance de GLPI composée de plusieurs entités
permet la consolidation des données et des règles communes.
L'utilisation des entités permet un cloisonnement relativement étanche
entre les unités organisationnelles. Dans les cas où ce cloisonnement
étanche n'est pas souhaité, il est préférable d'utiliser les
fonctionnalités offertes par les groupes. La segmentation en entités
peut avoir plusieurs finalités : isoler le parc informatique de chaque
service afin de limiter la vision du parc à certains groupes ou
utilisateurs ; isoler le parc informatique de différents clients,
reproduire la hiérarchie existante au sein de votre Annuaire
informatique (LDAP, Active Directory)... Cette notion est très
intéressante pour une entreprise dont la gestion est hiérarchique et où
les personnes doivent avoir une vision du parc dépendant de leur
appartenance à un service.

Une fois plusieurs entités créées dans GLPI, l'inventaire de votre parc,
les utilisateurs, les profils ou encore le service d'assistance devient
fonction des entités. Autrement dit, on peut affecter un ordinateur à
une entité, déclarer un ticket sur une entité, créer des profils, gérer
des habilitations spécifiques à chaque entité. L'affectation automatique
des utilisateurs et des matériels est possible grâce au paramétrage de
règles.

On considère la hiérarchie suivante :

~~~~ {.codeblock}
          EM
    |------|------|
   EA            EB
  |   |        |    |
EA1   EA2     EB1   EB2
~~~~

L'entité mère (EM, ou nativement appelée Entité Racine dans GLPI)
possède deux filiales (EA et EB) qui possèdent à leur tour deux
départements chacune (EA1, EA2, EB1 et EB2). Chaque entité possède une
vision de son parc et des entités qui lui sont affiliées.

-   EM a une vision de son parc et de toutes les entités.
-   EA a une vision de son parc et de EA1 et EA2.
-   EA1 ne voit que son parc.

Un utilisateur peut être rattaché à plusieurs entités avec des droits
différents. Ces droits peuvent être conservés sur les entités filles ou
non. Pour reprendre l'exemple précédent, un utilisateur ne pourra ne
déclarer un ticket qu'au sein de son service, se rapportant uniquement
au matériel qui lui est rattaché ou à un matériel de son service (une
imprimante, un écran...).

Inversement, un utilisateur disposant d'habilitations plus étendues
pourra consulter l'ensemble des matériels, tickets ou autres objets. Et
ce, sur toutes les entités sur lesquels ses droits sont applicables.

Par défaut, GLPI s'installe avec une entité générique, appelée Entité
Racine. Il est donc mono-entité. Cette entité peut être renommée
simplement en modifiant celle-ci.

-   **[Ajouter une
    entité](../glpi/administration_entity_t_create.html)**\
-   **[Supprimer une
    entité](../glpi/administration_entity_t_delete.html)**\
-   **[Déléguer l'administration par
    entité](../glpi/administration_entity_delegation.html)**\
     Délégation de certains paramètres d'administration par entité

**Parent topic:** [Administer access
control](../glpi/access_control_intro.html "This section describes how to administer the system access control which allows each user access to specific use.")
