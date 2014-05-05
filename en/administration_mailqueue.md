Gérer la file d'attente d'envoi de courriels
============================================

La file d'attente est gérée depuis le menu Administration \> File
d'attente des courriels

L'ensemble des courriels de notification passent par une file d'attente
avant expédition réelle. Celle-ci permet une historisation et une vision
des différents courriels envoyés.

Une action automatique (queuedmail) permet l'expédition des couriels en
attentes (voir [Configurer les actions
automatiques](config_crontask.html "Les actions automatiques se configurent depuis le menu Configuration > Actions automatiques")).
Une autre (queuemailclean) permet de nettoyer la file d'attente en ne
conservant que les courriels récents.

Pour chaque entité vous pouvez définir le délai appliqué pour l'envoi
des notifications (voir [Déléguer l'administration par
entité](administration_entity_delegation.html "Délégation de certains paramètres d'administration par entité")).
Celui-ci permet par exemple dans le cas de modifications multiples
rapides d'un ticket de n'envoyer qu'une notification.

**Parent topic:** [Module
Administration](../glpi/administration.html "Le module Administration permet d'administrer les utilisateurs, groupes, entités, profils, règles et dictionnaires et offre des outils de maintenance de l'application (sauvegarde et restauration de base, vérification de nouvelle version disponible).")
