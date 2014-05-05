Gérer les notes personnelles ou publiques
=========================================

Les notes personnelles ou publiques se gèrent depuis le menu Outils \>
Notes

Cette section permet de gérer des notes, leur durée de vie et de les
faire apparaître dans le planning si besoin. Une note correspond à une
information personnelle ou publique.

Les notes saisies apparaissent ensuite sur la page d'accueil de GLPI ou
dans le planning.

Il est possible de déterminer une date de début et de fin de publication
pour chaque note. Si la date de début n'est pas mentionnée, la note sera
visible immédiatement jusqu'à la date de fin. Si la date de fin n'est
pas mentionnée, la note sera visible de façon permanente à partir de la
date de début.

Une note est considérée comme personnelle par défaut. Elle est, par
conséquent, uniquement visible par son rédacteur.

Pour qu'une note devienne visible par d'autres utilisateurs (note
publique), il est nécessaire de sélectionner une ou plusieurs cibles. La
ou les cibles correspondent aux entités, aux profils, groupes ou
utilisateurs qui pourront consulter la note

Une note publique est visible pour les utilisateurs associé à un profil
ayant le droit de lire les notes publiques.

L'ajout d'une note au calendrier permet de la faire apparaître sur le
planning des utilisateurs concernés par la note : celui de l'utilisateur
pour une note personnelle, les plannings de tous les utilisateurs dans
le cas d'une note publique. Une note planifiée n'est pas supprimée une
fois la date expirée.

Note: Il est possible de définir un rappel de la note avant son début en
définissant un intervalle de temps pour le rappel. Les notifications
doivent être activées pour cela (voir [Configure
Notifications](config_notification.html "Notifications are configured from the menu Setup > Notifications ;")).

Il est possible d'associer un ou plusieurs documents à une note.

**Parent topic:** [Module
Outils](../glpi/tool.html "Le module Outils permet aux utilisateurs de gérer les notes, la base de connaissance, les réservations ainsi que de générer des rapports")
