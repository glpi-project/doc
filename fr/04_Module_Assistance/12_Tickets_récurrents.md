Les tickets récurrents
======================

Grâce aux gabarits, il est possible de programmer l'ouverture de tickets de manière récurrente.

    Exemples :
    - Ouvrir un ticket tous les vendredis matin afin de réaliser une sauvegarde sur bande le soir même. 
    - Faire une opération d'initialisation tous les débuts de mois.

Description des champs
----------------------
- **Actif** : permet de désactiver temporairement la création du ticket ;
- **Gabarit de tickets** :va être utilisé comme modèle pour la création du ticket ;
- **Date de début** : date de début de création des tickets (obligatoire) ;
- **Date de fin** : associée à la date de début elle définie la périodicité de la création (facultative) ;
- **Périodicité** : il s'agit de la fréquence de création des tickets ; 
- **Création anticipée** : le processus peut être déclenché de manière anticipée de 1h à 7 jours ;
- **Calendrier** : il permet la limitation des jours ouvrés pour lesquels les tickets sont créés. Si
la création automatique avait programmé une création de ticket un week-end par exemple celle-ci sera reportée au lundi.

***Remarque :** Les tickets ne seront créés que si le témoin Actif est à Oui et pendant la période définie entre la date de début et la date de fin.*

L'ouverture de tickets récurrents est effectuée à travers une action automatique nommée *ticket recurrent* (voir [Configurer les actions automatiques](config_crontask.html "Les actions automatiques se configurent depuis le menu Configuration > Actions automatiques")).

--------
**Sujet parent :** [Le service d'assistance aux utilisateurs](index.php?fr/04_Module_Assistance/01_Module_Assistance.md "Le service d'Assistance aux utilisateurs de GLPI")
