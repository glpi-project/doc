Configuration des modèles de notifications
==========================================

Un modèle est un objet global de GLPI qui définit toutes les données
relatives au format et formatage d'une notification.

La création d'un modèle est une opération complexe, qui impacte les
utilisateurs. C'est pourquoi cet objet est créé et géré par des
administrateurs (permission *Configuration* à *écriture*). De plus un
modèle n'est pas lié à une entité, ce qui veut dire qu'il n'est pas
possible de déléguer sa gestion à un administrateur d'une sous-entité.

Un modèle reflète une communication auprès d'un utilisateur, et peut
être disponible dans plusieurs langues grâce à un mécanisme de
traduction : l'utilisation de balises (c'est à dire des marqueurs
indépendants de la langue utilisée) permet de créer une traduction
générique, disponible pour toutes les langues de GLPI.

GLPI vient avec un ensemble de modèles pré-définis pour toutes les
notifications (tickets, réservations, informations financières,
cartouches, consommables, licences, synchronisation MySQL).

Onglet Configuration
--------------------

-   **Modèles de notifications**
    -   **Nom** : nom du modèle ;
    -   **Type** : indique à quel type d'objet le modèle se rapporte. Un
        modèle est lié à un et un seul type d'objet ;
    -   **Commentaires** : information supplémentaire en rapport avec le
        modèle en cours d'édition.
    -   **CSS :**feuille de style utilisée pour le modèle en HTML.

-   **Traductions - Langue**
    Note: un lien **Ajouter une nouvelle traduction** permet de rajouter
    une nouvelle langue. La liste des traductions actuellement définies
    est disponible sous le lien. Il est possible d'en supprimer en
    cliquant sur le bouton **Supprimer définitivement**.

**Parent topic:** [Configure
Notifications](../glpi/config_notification.html "Notifications are configured from the menu Setup > Notifications ;")
