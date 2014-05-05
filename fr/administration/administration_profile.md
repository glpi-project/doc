Administrer les profils d'utilisateurs
======================================

Dans GLPI, administrer les profils peut se faire à partir du menu
Administration \> Profils .

La notion de profil est un pilier dans la configuration de GLPI. C'est
elle qui accrédite les utilisateurs de certains droits, c'est elle qui
permet de sécuriser et d'isoler les données à certains utilisateurs.

Un profil est associé à :

-   Un utilisateur ;
-   Une entité (de manière **récursive** ou **dynamique**).

Pour répercuter les droits liés à ce profil, à toutes les entités filles
de l'entité enregistrée, il faut associer le profil de manière
récursive. C'est là tout le principe de la récursivité.

Il est également possible d'ajouter un profil à un utilisateur sur
plusieurs entités sans lien réel entre elles. Pour ce faire, il suffit
d'ajouter un profil à un utilisateur x fois, x étant le nombre d'entités
à couvrir.

Il est donc possible d'associer des profils différents à un même
utilisateur !

Par défaut, 7 profils sont pré-enregistrés dans GLPI :

-   **Super-Admin** : Ce profil dispose de tous les droits !
    Important : Si le profil super-admin est supprimé ou si
    l'**interface simplifiée** est associée à ce profil, l'accès à la
    configuration de GLPI peut être définitivement perdue.
-   **Admin** : Ce profil dispose de droits d'administration sur
    l'intégralité de GLPI. Certaines restrictions lui sont appliquées au
    niveau de la configuration des règles, des entités ainsi que
    d'autres rubriques pouvant altérer le comportement de GLPI.
-   **Supervisor** : Ce profil reprend les élements du profil Technician
    en y ajoutant des élément permettant la gestion d'une équipe et son
    organisation (attribution de tickets...).
-   **Technician** : Ce profil correspond à celui utilisé pour un
    technicien de maintenance. Il a accès à l'inventaire en lecture et
    au helpdesk afin de traiter des tickets.
-   **Hotliner** : Ce profile correspond à celui que l'on pourrait
    donner pour un service de Hotline. Il permet de saisir des tickets
    et de les suivre mais pas d'en être en charge comme peut l'être un
    technicien.
-   **Observer** : Ce profil dispose de droits de lecture sur toutes les
    données d'inventaire et de gestion. Au niveau de l'assistance, il
    pourra déclarer un ticket ou s'en voir attribuer mais ne pourra
    administrer cette rubrique (*attribuer un ticket, voler un
    ticket...).*
-   **Self-Service** : Ce profil est le plus limité. C'est d'ailleurs le
    seul à disposer d'une interface différente, l'**interface
    simplifiée**, en opposition à l'**interface standard**. Il pourra
    cependant déclarer un ticket, y ajouter un suivi, consulter la FAQ
    ou encore réserver un matériel. Ce profil est enregistré comme
    profil par défaut.

Créer un profil
---------------

Depuis l'interface d'administration des profils, il est possible d'en
créer de nouveaux. Il faut renseigner :

-   Un nom.
-   S'il est le **profil par défaut**.
-   Une **interface**.
-   La possibilité ou non de **modifier son mot de passe**.

**Profil par défaut ?**

Lorsque ce champ est coché, tout utilisateur créé ou importé se verra
associé le profil en question.

Important : Si plus d'un profil est enregistré comme profil par défaut,
le premier enregistré fera autorité sur tous les autres.

**Interface**

Il est possible de choisir entre deux interfaces, l'**interface
standard** de GLPI et l'**interface simplifiée**. L'**interface
simplifiée** présente un menu très limité, ne donnant accès par défaut
qu'aux tickets, à la réservation de matériel, aux flux RSS, aux notes
publiques et à la consultation de la FAQ. Cette interface est couramment
utilisée par les utilisateurs finaux, les employés d'une société n'ayant
pas un réel besoin dans le cadre de la gestion de parc.

**Modifier son mot de passe**

Avec cette fonctionnalité, un utilisateur aura la possibilité de
modifier son mot de passe depuis le lien **Préférences**.

Important : Si l'authentification par Annuaire est activée, un
utilisateur perdra sa capacité à modifier son mot de passe, de même pour
tout autre donnée liée à l'annuaire.

**Formulaire de création de tickets à la connexion**

Cette option permet de rediriger les utilisateurs du profil directement
sur la page de création des tickets au lieu de la page d'accueil.

Contenu des profils
-------------------

Une fois le profil créé, il sera possible d'établir les droits sur les
différentes fonctionnalités de GLPI. 7 onglets sont alors disponibles
pour gérer cet ensemble de droits :

-   **Parc** : Droits sur tout ou partie des types de matériels ;
-   **Gestion** : Droits sur les contacts et fournisseurs ainsi que sur
    les documents, contrats, informations financières et budget ;
-   **Assistance** : Droits sur les tickets, les suivis, les tâches, les
    validations, les associations, les problèmes et les changements. Cet
    onglet gère également la visibilité des statistiques et des
    plannings ainsi que l'affectation d'un gabarit au profi ;
-   **Cycles de vie** : Droits sur le processus de changement de statut
    d'un ticket, d'un problème et d'un changement (*Exemple : un ticket
    ne peut être clos qu'après avoir été résolu*).
    Remarque : Pour l'interface post-only, le cycle de vie des tickets
    permet de définir si l'utilisateur a le droit de clore un ticket et
    s'il a le droit de le réouvrir même s'il est clos.
-   **Administration** : Droits sur les utilisateurs, groupes, entités
    et profils mais aussi sur les journaux, transferts, méthodes
    d'authentification, la maintenance, les file d'attente des courriels
    et les ajouts d'utilisateurs ; Droits sur les règles d'affectation
    ainsi que sur les dictionnaires (*intitulés, logiciels..*) ;
-   **Configuration** : Droits sur la configuration, les composants,
    l'affichage et les intiutlés globaux ; droits sur les intitulés de
    l'entité (domaines, lieux, catégories de ticket, de tâche et de base
    de connaissance, prises réseau, status gabarits de solution,
    calendriers, types de documents, les liens externes, notifications
    et SLA).
-   **Outils** : Droits sur les projets, les notes, la FAQ, la base de
    connaissances, les rapports, la réservation de matériel et les flux
    RSS. Le droit d'administration de la base de connaissances permet de
    voir et éditer tous les éléments sans prise en compte des cibles
    définies. Le droit d'administration des réservations permet de voir,
    d'éditer et de supprimer toutes les reservations.

Conseil : Le droit entité permet de définir l'administration déléguée de
celle-ci (partie assistance) en sélectionnant la partie **Mise à jour
des paramètres**

Remarque : L'affichage de la gestion des profils est fonction du profil
dont l'utilisateur connecté dépend. Il peut donc varier selon le profil.

**Explication des droits :**

Les différents droits d'un objet sont listés sur la ligne de son nom.
Pour activer un droit il suffit de cocher la case correspondante (et
inversement pour supprimer un droit).

**Aucune déduction de droit n'est faite**; par exemple, pour pouvoir
modifier un objet vous devez également donner le droit de lecture (c'est
d'ailleurs souvent ce droit qui affiche ou non l'objet dans les
différents menus.

Si le droit Supprimer apparait, c'est que l'objet possède une corbeille,
dans le cas contraire, l'option de suppression sera Purge. Mais pour les
objets avec corbeille, vous pouvez désormais affiner vos droits en
n'autorisant, par exemple que la suppression à un profil et la purge à
un autre.

**Droits après migration:** La migration reprend intégralement vos
anciens droits, quel que soit l'objet et active les valeurs
correspondantes dans le nouveau système.

Vos anciens droits d'écriture sont transformés en Lecture, Mettre à
jour, Créer, Supprimer et Purge pour la majorité des objets, à charge
pour vous de les affiner si besoin.

Pour d'autres, les droits sont regroupés par objet (par exemple, les
droits FAQ sont des droits de l'objet Base de connaissance).

**Sujet parent :** [Administrer les contrôles
d'accès](../glpi/access_control_intro.html "Cette partie décrit comment administrer le système de contrôle d'accès qui permet à chaque utilisateur d'accéder à un contexte d'utilisation spécifique.")
