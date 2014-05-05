Gérer les traductions des notifications
=======================================

Une traduction représente la disponibilité d'un modèle dans une langue
donnée. En fonction de celle choisie par le destinataire, la
notification sera envoyée dans la langue correspondante. Si elle n'est
pas disponible, la traduction par défaut sera utilisée.

Une traduction est constituée d'une liste de balises qui font références
à :

1.  des chaînes de langue de GLPI ou d'un plugin ;
2.  des valeurs de champs d'objets stockés en base de données.

Pour ajouter une nouvelle traduction, il est nécessaire de remplir les
champs suivants :

1.  **Langue** : indique la langue à laquelle cette traduction se
    rapporte. Si aucune langue n'est sélectionnée dans la liste
    déroulante, cette traduction sera celle par défaut pour ce modèle ;
2.  **Sujet** : sujet de la notification ;
3.  **Corps du courriel au format texte** : texte brut envoyé en cas de
    notification. Si le champ est vide alors il est généré à partir du
    corps de texte HTML ;
4.  **Corps du courriel au format HTML** : texte formaté en HTML.

Remarque : le sujet est automatiquement préfixé par la chaîne *[GLPI]*
ou *[GLPI XXXXXX]* qui est utilisée afin de gérer les réponses aux
notifications. Celle-ci est modifiable pour chaque entité dans le
configuration des entités (voir [Déléguer l'administration par
entité](administration_entity_delegation.html "Délégation de certains paramètres d'administration par entité")).

La liste des balises disponibles est accessible via le lien **Liste des
balises disponibles**.

Remarque : En mode debug et pour certains types de notifications, vous
pouvez accéder à une prévisualisation des courriels envoyés via l'onglet
*Debug*.

**Sujet parent :** [Configurer les
notifications](../glpi/config_notification.html "Les notifications se configurent depuis le menu Configuration > Notifications ;")
