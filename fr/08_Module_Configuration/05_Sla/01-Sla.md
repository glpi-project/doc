Configurer les SLAs
===================

Un SLA (Service Level Agreement ou accord de niveau de service) est la formalisation d'un contrat négocié entre le ServiceDesk et le client définissant le niveau de service attendu et donc au délai maximum pour résoudre un incident ou une demande (J+1, H+4...).

Des niveaux d'escalades peuvent être définis au sein d'un SLA. Chaque niveau déclenche des actions automatiques permettant la résolution du ticket dans les meilleurs délais. Un niveau se déclenche avant ou après la date d'échéance du SLA en fonction du délai défini. 

    Par exemple, un jour avant l'échéance, le ticket est affecté au support de niveau 2 et sa priorité passée à Haute.

Les niveaux d'escalades peuvent être conditionnés par des critères de déclenchement. Sans critère, le niveau sera déclenché mais si des critères sont définis, ils seront contrôlés avant application du niveau d'escalade. 

     Par exemple, si 1 jour avant la date d'échéance vous souhaitez envoyer un rappel à l'administrateur si le ticket est toujours à l'état *Nouveau*, il faut définir comme critère `Status n'est pas Nouveau`.

Les SLAs sont associables aux tickets via le moteur de règles des tickets (voir [Règles métier pour les tickets](index.php?fr/07_Module_Administration/05_Règles/04_Règles_métier_pour_les_tickets.md "Lors de la création d'un ticket, un mécanisme permet de modifier les attributs du ticket de manière automatique.")).
L'association du SLA au ticket permet le calcul automatique de sa date d'échéance. Plusieurs SLAs peuvent ainsi être définis et affectés suivant des critères précis. 

    Par exemple, le SLA 1 sera affecté si le ticket est associé à une catégorie spécifique et le SLA 2 pour les autres catégories.

>ATTENTION :
>- Si un SLA est affecté manuellement à l'ouverture du ticket (par l'utilisateur ou via un gabarit de ticket), les règles métiers ne pourront pas redéfinir celui-ci.
>- Un SLA peut être affectée a posteriori. A l'affectation de celui-ci, il sera complètement rejoué et les actions associées aux niveaux d'escalade passés seront exécutées.

Un calendrier peut être associé à un SLA (voir [Configurer les intitulés](index.php?fr/08_Module_Configuration/02_Intitulés/01_Intitulés.md "Les intitulés se configurent depuis le menu Configuration > Intitulés")).
Par défaut, aucun calendrier n'est associé et les calculs se font sur une base de travail 7 jours sur 7 et 24 heures sur 24. Il est également possible d'utiliser le calendrier associé au ticket (i.e. celui de l'entité à laquelle est rattaché le ticket).

>Important : Si le temps maximum de résolution est exprimé en jours, l'ensemble des calculs se feront en jours (J+1, J+4 par exemple) en tenant compte du calendrier pour déterminer les jours ouvrés. Dans le cas de l'utilisation du témoin Fin de la journée de travail, la date d'échéance correspondra à la fin du jour ouvré correspondant. Si le temps maximum de résolution est exprimé en heures ou en minutes alors les calculs seront réalisés en tenant compte des horaires d'ouvertures.

    Par exemple pour un SLA en H+4 avec un calendrier définissant des horaires d'ouverture de 8h à 18h, un ticket ouvert à 16h aura une date d'échéance le lendemain à 10h.

Le passage du ticket au statut en attente met le SLA en sommeil. Si le ticket reste en attente 3 heures par exemple, la date d'échéance sera repoussée de 3 heures.

Les différents onglets
----------------------

-   **Onglet "Niveaux d'escalade"**
    Permet d'ajouter un nouveau niveau d'escalade à ce SLA et liste des différents niveaux déjà définis avec pour chaucun leurs critères et leurs actions.
    ![image](docs/image/NiveauSla.png)
    Pour modifier un niveau il suffit de cliquer sur son nom.


-   **Onglet "Règles"**
    Liste les règles métier liées à ce SLA.

-   **[Onglet "Tickets"](index.php?fr/Les_différents_onglets/Onglet_Tickets.md)**
    Liste les tickets affectés à ce SLA.

-   **[Onglet "Tous"](index.php?fr/Les_différents_onglets/Onglet_Tous.md)**
     Pour un élément, toutes les informations sont affichées sur une seule page.


Les différentes actions
-----------------------
-   **[Ajouter un sla](index.php?fr/Les_différentes_actions/Créer_un_nouvel_objet.md)**
-   **[Voir un sla](index.php?fr/Les_différentes_actions/Visualiser_un_objet.md)**
-   **[Modifier un sla](index.php?fr/Les_différentes_actions/Modifier_un_objet.md)**
-   **[Supprimer un sla](index.php?fr/Les_différentes_actions/Supprimer_un_objet.md)**
-   **Ajouter un niveau d'escalade**
    Cette action se fait via l'onglet *Niveaux d'escalade*



------
**Sujet parent :** [Module Configuration](index.php?fr/08_Module_Configuration/01_Module_Configuration.md "Module Configuration de GLPI")