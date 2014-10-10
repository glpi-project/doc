Administrer les entités
=======================

La notion d'entité est une notion clé dans GLPI. Elle peut s'apparenter à la notion de hiérarchie, de service au sein d'une administration d'une entreprise ou d'un système d'information. 
Elle permet d'isoler des ensembles organisés de manière hiérarchique dans une instance unique de GLPI (une seule installation de GLPI). Le terme choisi est volontairement neutre, afin de pouvoir s'adapter à chaque système d'information. Une seule instance de GLPI composée de plusieurs entités permet la consolidation des données et des règles communes.
L'utilisation des entités permet un cloisonnement relativement étanche entre les unités organisationnelles. Dans les cas où ce cloisonnement étanche n'est pas souhaité, il est préférable d'utiliser les fonctionnalités offertes par les groupes. 
La segmentation en entités peut avoir plusieurs finalités : isoler le parc informatique de chaque service afin de limiter la vision du parc à certains groupes ou utilisateurs ; isoler le parc informatique de différents clients, reproduire la hiérarchie existante au sein de votre annuaire informatique (LDAP, Active Directory)... Cette notion est très intéressante pour une entreprise dont la gestion est hiérarchique et où les personnes doivent avoir une vision du parc dépendant de leur appartenance à un service.

Une fois plusieurs entités créées dans GLPI, l'inventaire de votre parc, les utilisateurs, les profils ou encore le service d'assistance devient fonction des entités. Autrement dit, on peut affecter un ordinateur à une entité, déclarer un ticket sur une entité, créer des profils, gérer des habilitations spécifiques à chaque entité. L'affectation automatique des utilisateurs et des matériels est possible grâce au paramétrage de règles.

On considère la hiérarchie suivante :

              EM
        |------|------|
       EA            EB
      |   |        |    |
    EA1   EA2     EB1   EB2


L'entité mère (EM, ou nativement appelée Entité Racine dans GLPI) possède deux filiales (EA et EB) qui possèdent à leur tour deux départements chacune (EA1, EA2, EB1 et EB2). Chaque entité possède une vision de son parc et des entités qui lui sont affiliées.

-   EM a une vision de son parc et de toutes les entités.
-   EA a une vision de son parc et de EA1 et EA2.
-   EA1 ne voit que son parc.

Un utilisateur peut être rattaché à plusieurs entités avec des droits différents. Ces droits peuvent être conservés sur les entités filles ou non. Pour reprendre l'exemple précédent, un utilisateur ne pourra déclarer un ticket qu'au sein de son service, se rapportant uniquement au matériel qui lui est rattaché ou à un matériel de son service (une imprimante, un écran...).

Inversement, un utilisateur disposant d'habilitations plus étendues pourra consulter l'ensemble des matériels, tickets ou autres objets. Et ce, sur toutes les entités sur lesquels ses droits sont applicables.

Par défaut, GLPI s'installe avec une entité générique, appelée Entité Racine. Il est donc mono-entité. Cette entité peut être renommée simplement en modifiant le non de celle-ci.

Les fonctionnements peuvent être amenés à varier d'une entité à une autre. C'est pour cela que les entités possèdent une administration déléguée (droit *Entités* dans le profil). Cette délégation doit être attribuée à un nombre très restreint d'utilisateurs qui auront en charge la gestion complète de l'entité.

Les différents onglets
----------------------

-   **Onglet "Entités"**
    Permet d'ajouter une sous-entité à l'entité sélectionnée et liste les sous-entités existantes. 

-   **Onglet "Adresse"**
    Regroupe les informations administrative de l'entité (adresse, téléphone, fax, courriel...). 

-   **Onglet "Informations avancées"**
    Regroupe les données d'identification technique de l'entité. Ces données seront utilisés par les règles pour l'affectation automatique à cette entité (matériel si couplage avec un agent d'inventaire, utilisateur ou groupe si liaison avec un annuaire LDAP, ticket si création autorisé via un collecteur de courriel) ainsi que pour l'import et la synchronisation des utilisateurs issus d'un annuaire lDAP. 

-   **Onglet "Notifications"**
    Le paramétrage des notifications se fait par entité.
    Cet onglet regroupe deux tableaux :
    - les options globales pour toutes les notifications issues de GLPI ;
    - les options de déclenchement des alertes pour les cartouches, consommables, contrats, informations financières, licences, réservations et tickets.
    Si vous ne souhaitez pas affiner les notifications par entité, vous pouvez définir ces paramétrages au niveau de l'entité racine. Dans chaque entité sera alors pris par défaut les valeurs de l'entité parente (valeurs définis indiquées en vert).

-   **Onglet "Assistance"**
    Regroupe les paramétrages de l'entité qui seront appliqués principalement aux tickets :
    - **Gabarit de ticket :** à chaque création d'un ticket, le gabarit sélectionné sera appliqué ;
    - **Calendrier :** indique le calendrier par défaut utilisable dans l'entité. Ce calendrier sert à calculer les différentes dates d'échéance. Il sera par exemple pré-sélectionné lors de la création d'un SLA ;
    - **Type par défaut pour les tickets :** type prédéfini lors de la création d'un ticket ;
    - **Affectation automatique des tickets :** permet d'assigner automatiquement un ticket ;
      - *basée sur le matériel puis sur la catégorie :* uniquement si le ticket comporte un élément associé et que cet élément comporte un responsable ou un groupe technique. Dans ce cas, le ticket sera automatiquement affecté à ce technicien et/ou ce groupe technique à la sélection de l'élément associé. 
         Si ces champs sont vides mais que le ticket a une catégorie de définie, le responsable ou le groupe technique seront cherchés dans cette catégorie.
      - *basée sur la catégorie puis sur le matériel :* uniquement si une catégorie est définie dans le ticket et que cette catégorie comporte un responsable ou un groupe technique. Dans ce cas, le ticket sera automatiquement affecté à ce technicien et/ou ce groupe technique à la sélection de la catégorie.
        Si ces champs sont vides mais que le ticket a un élément associé de défini, le responsable ou le groupe technique seront cherchés dans cet élément.
    - **Clôture automatique des tickets résolus après :** permet de réaliser une clôture dite "administrative". Si cette clôture est paramétrée à *immédiatement*, dès que le ticket sera résolu il sera automatiquement clos, ce qui bloquera l'approbation de la solution par le demandeur.
    - **Configuration de l'enquête de satisfaction :** cette enquête peut être interne (formulaire de satisfaction de GLPI) ou externe. Dans ce dernier cas, vous indiquerez l'URL de l'enquête de satisfaction (une liste de balise vous sont proposées).
      Pour chaque entité, vous pouvez donc définir quand l'enquête doit se déclencher (délais à compter de la clôture d'un ticket) ainsi que le taux d'enquête à générer.  

-   **Onglet "Parc"**
    Regroupe les critères de remplissage automatique des dates des informations financières ainsi que le choix de l'entité de création des logiciels.

-   **Onglet "Utilisateurs"**
    Cet onglet permet d'ajouter un utilisateur à cette entité tout en lui affectant un profil, récursif ou non. Il liste également, par profil, les utilisateurs de cette entité.

-   **Onglet "Règles"**
    Cet onglet permet de créer des règles :
    - d'habilitations applicables à des utilisateurs ;
    - d'assignation de tickets ouverts par courriel. 
    Si vous avez besoin de baser ces règles sur des critères, il faut ouvrir la nouvelle règle créée pour définir ces critères.
    Sont également listés les règles déjà applicables à cette entité.
    
-   **[Onglet "Documents"](index.php?fr/Les_différents_onglets/Onglet_Documents.md)**

-   **[Onglet "Notes"](index.php?fr/Les_différents_onglets/Onglet_Notes.md)**

-   **[Onglet "Historique"](index.php?fr/Les_différents_onglets/Onglet_Historique.md)**

-   **[Onglet "Tous"](index.php?fr/Les_différents_onglets/Onglet_Tous.md)**
     Pour un élément, toutes les informations sont affichées sur une seule page.


Les différentes actions
-----------------------
-   **[Ajouter une entité](index.php?fr/Les_différentes_actions/Créer_un_nouvel_objet.md)**
-   **[Voir une entité](index.php?fr/Les_différentes_actions/Visualiser_un_objet.md)**
-   **[Modifier une entité](index.php?fr/Les_différentes_actions/Modifier_un_objet.md)**
-   **[Supprimer une entité](index.php?fr/Les_différentes_actions/Supprimer_un_objet.md)**
-   **[Associer un document à une entité](index.php?fr/Les_différentes_actions/Onglet_Eléments.md)**

--------
**Sujet parent :** [Administrer les contrôles d'accès](../glpi/access_control_intro.html "Cette partie décrit comment administrer le système de contrôle d'accès qui permet à chaque utilisateur d'accéder à un contexte d'utilisation spécifique.")

**Sujet parent :** [Module Administration](index.php?fr/07_Module_Administration/01_Module_Administration.md "Le module Administration permet d'administrer les utilisateurs, groupes, entités, profils, règles et dictionnaires et offre des outils de maintenance de l'application").
