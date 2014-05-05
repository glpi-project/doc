Onglet Réplicat MySQL
=====================

GLPI peut être configuré pour utiliser une base MySQL esclave.

Cet onglet n'est visible que si l'option **Activer le réplicat** a été
activée dans l'onglet Système.

Pour activer la gestion du réplicat, il suffit de renseigner les
paramètres de connexion. Il est conseillé d'utiliser un identifiant de
connexion disposant uniquement des privilèges de lecture sur la base.

Le réplicat MySQL sera utilisé dans 2 cas :

-   En cas de panne du serveur principal. Dans cette situation,
    l'application bascule automatiquement en mode lecture seule (un
    onglet le signale sur la barre de menu).
-   Lors de l'exécution de rapports coûteux de manière à diminuer la
    charge sur le serveur principal.

Il est aussi possible de demander l'utilisation de l'esclave pour le
moteur de recherche, suivant l'option retenue :

-   **Jamais**
-   **Si synchronisé (tous les changements)** : GLPI vérifiera la
    synchronisation et utilisera le réplicat si tous les changements ont
    été répliqués.
-   **Si synchronisé (changements de l'utilisateur)**: GLPI vérifiera la
    synchronisation et utilisera le réplicat si les changements de
    l'utilisateurs connectés ont été répliqués, et donc, dans tous les
    cas pour les comptes de consultation.
-   **Si synchronisé ou compte en lecture seule** : pour les comptes de
    mise à jour, GLPI vérifiera la synchronisation et utilisera le
    réplicat si tous les changements ont été répliqués, pour les comptes
    de consultation il sera toujours utilisé.
-   **Toujours**

**Attention** : lorsque le moteur de recherche utilise le réplicat, les
données affichées peuvent être obsolètes, l'option ci-dessus doit donc
être choisie avec précaution.

Important: Le réplicat doit être créé et configuré en utilisant les
outils MySQL. Voir la Documentation MySQL :
http://dev.mysql.com/doc/refman/5.0/en/replication.html

**Parent topic:** [Configurer les paramètres
centraux](../glpi/config_common.html "Les paramètres centraux se configurent depuis le menu Configuration > Générale")
