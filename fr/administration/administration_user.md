Administrer les utilisateurs
============================

Dans GLPI, administrer les utilisateurs peut se faire à partir du menu
Administration \> Utilisateurs .

Il est possible d'ajouter, modifier, supprimer des utilisateurs ou
rechercher et exporter la liste des utilisateurs. La liste des
utilisateurs enregistrés fonctionne de la même façon que la liste des
éléments de l'inventaire.

En plus des informations de l'utilisateur, il est possible de le
désactiver si besoin (champ Actif). Dans ce cas, l'utilisateur n'est
plus sélectionnable dans les menus déroulants des tickets ou de
l'inventaire, mais il conserve ses matériels et tickets associés. Des
dates de validité permettent également de définir la période d'activité
de l'utilisateur ; le compte de l'utilisateur ne sera alors considéré
comme actif qu'après la date de début et/ou avant la date de fin (les 2
valeurs sont optionnelles et peuvent être définies indépendamment).

Une photo peut être associée manuellement ou importée automatiquement
depuis un annuaire (voir [Authentifier des utilisateurs à partir
d'annuaires
LDAP](config_auth_ldap.html "L'interface de GLPI avec les annuaires LDAP se configure depuis le menu Configuration > Authentification > Annuaire LDAP.")).

Les fonctionnalités supplémentaires liées aux utilisateurs sont
utilisables avec les différents onglets :

-   Habilitations permet d'administrer les habilitations dont dispose
    l'utilisateur ;

    Pour cela, sélectionner l'entité sur laquelle les droits doivent
    être donnés, puis les droits (profil) à donner. L'option
    **Récursif** permet d'associer également le profil à toutes les
    sous-entités de l'entité sélectionnée ;

-   Groupes

    Permet d'associer et supprimer des groupes à l'utilisateur ;

-   Préférences

    Permet l'édition des préférences de l'utilisateur. Voir [Gérer ses
    préférences](start_pref.html "Les préférences utilisateur se modifient depuis le menu Préférences").

-   Eléments utilisés

    Liste les objets d'inventaire affectés à l'utilisateur ou à un
    groupe dont il est membre ;

-   Eléments gérés

    Liste les objets d'inventaire pour lesquels il est responsable
    technique ou dans le groupe responsable technique ;

-   Tickets créés

    Liste les tickets dont l'utilisateur a été le demandeur ;

-   Documents

    Permet l'ajout d'un document. Voir [Associer des
    documents](inventory_document.html "Les documents associés se gèrent depuis l'onglet Documents").
    ;

-   Réservations

    Liste les réservations passées, en cours et à venir de l'utilisateur
    ;

-   Synchronisation

    Permet de changer la méthode d'authentification d'un utilisateur ;

-   Liens

    Permet de voir les liens externes définis pour les utilisateurs.
    Voir [Configurer les liens externes
    protocolés](config_link.html "Les liens externes se configurent depuis le menu Configuration > Liens externes")
    ;

-   **Historique**

    Voir [Visualiser
    l'historique](inventory_log.html "L'historique est visualisé depuis l'onglet Historique")
    ;

-   Tous

    Voir [Afficher toutes les informations sur une seule
    page](inventory_all.html "Pour un élément, toutes les informations sont affichées sur une seule page depuis l'onglet Tous").

Lorsqu'une authentification externe est définie (annuaire LDAP,
IMAP/POP, CAS) de nouveaux boutons apparaissent permettant d'importer
des utilisateurs ou de synchroniser des utilisateurs existants (annuaire
LDAP seulement).

-   **[Ajouter un
    utilisateur](../glpi/administration_user_t_create.html)**\
-   **[Supprimer un
    utilisateur](../glpi/administration_user_t_delete.html)**\

**Sujet parent :** [Administrer les contrôles
d'accès](../glpi/access_control_intro.html "Cette partie décrit comment administrer le système de contrôle d'accès qui permet à chaque utilisateur d'accéder à un contexte d'utilisation spécifique.")
