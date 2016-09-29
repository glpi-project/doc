Gérer les notes personnelles ou publiques
=========================================

Ce module permet de gérer des notes, leur durée de vie, leur statut et de les faire apparaître dans le planning si besoin. Une note correspond à une information personnelle ou publique.

Les notes saisies apparaissent ensuite sur la page d'accueil de GLPI ou dans le planning.

Il est possible de déterminer une date de début et de fin de publication pour chaque note. 
Si la date de début n'est pas mentionnée, la note sera visible immédiatement jusqu'à la date de fin. 
Si la date de fin n'est pas mentionnée, la note sera visible de façon permanente à partir de la date de début.

L'ajout d'une note au calendrier permet de la faire apparaître sur le planning des utilisateurs concernés par la note : celui de l'utilisateur pour une note personnelle, les plannings de tous les utilisateurs dans
le cas d'une note publique. Une note planifiée n'est pas supprimée une fois la date expirée.

***Remarque :** Il est possible de définir un rappel de la note avant son début en définissant un intervalle de temps pour le rappel. Les notifications doivent être activées pour cela (voir [Configurer les notifications](index.php?fr/08_Module_Configuration/04_Notifications/01_Configurer_les_notifications.md "Les notifications se configurent depuis le menu Configuration > Notifications ;")).*


Les différents onglets
----------------------

-   **[Onglet "Documents"](index.php?fr/Les_différents_onglets/Onglet_Documents.md)**
    Il est possible d'associer un ou plusieurs documents à une note.


-   **Onglet "Cible"**
    Une note est considérée comme personnelle par défaut. Elle est, par conséquent, uniquement visible par son rédacteur.

    Pour qu'une note devienne visible par d'autres utilisateurs (note publique), il est nécessaire de sélectionner une ou plusieurs cibles. La ou les cibles correspondent aux entités, profils, groupes ou utilisateurs qui pourront consulter la note.

    Une note publique est visible pour les utilisateurs associés à un profil ayant le droit de lire les notes publiques.

-   **[Onglet "Tous"](index.php?fr/Les_différents_onglets/Onglet_Tous.md)**
     Pour un élément, toutes les informations sont affichées sur une seule page.


Les différentes actions
-----------------------
-   **[Ajouter une note](index.php?fr/Les_différentes_actions/Créer_un_nouvel_objet.md)**
-   **[Modifier une note](index.php?fr/Les_différentes_actions/Modifier_un_objet.md)**
-   **[Supprimer une note](index.php?fr/Les_différentes_actions/Supprimer_un_objet.md)**
-   **[Associer un document à une note](index.php?fr/Les_différentes_actions/Lier_un_document_à_un_objet.md)**
-   **Rendre une note publique**
    Il suffit d'ajouter une cible à la note.
-   **publier une note pendant une période donnée**
    Il suffit d'ajouter une date de début et une date de fin au niveau de la visibilité.

-----------
**Sujet parent :** [Module Outils](index.php?fr/06_Module_Outils/01_Module_Outils.md "Le module Outils permet aux utilisateurs de gérer les notes, la base de connaissance, les réservations ainsi que de générer des rapports")