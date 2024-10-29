# :ti-settings-automation: Cron / actions automatiques

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Comment synchroniser automatiquement mes utilisateurs LDAP ?

Afin de synchroniser automatiquement vos utilisateurs depuis un LDAP, vous pouvez ajouter une ligne dans votre crontab (celle de l'utilisateur qui lit les fichiers web apache, www-data, etc.)

**`0 * * * * www-data cd /var/www/glpi/ && /usr/bin/php bin/console glpi:ldap:synchronize_users --no-interaction >/dev/null 2>&1`**

Vous pouvez ajouter des options à cette commande pour synchroniser également les comptes désactivés par exemple :

**`0 * * * * www-data cd /var/www/glpi/ && /usr/bin/php bin/console glpi:ldap:synchronize_users --no-interaction -d 3 >/dev/null 2>&1`**

Si vous souhaitez effectuer plusieurs actions, nous vous conseillons d'ajouter autant de commande LDAP dans votre cron que d'actions souahatées (une commande pour la synchronisation des comptes, une autre pour les comptes désactivés, etc.)

!!! Tip "Vous pouvez adapter votre recherche LDAP :"

```
- 0 : Conserver
- 1 : Mettre dans le trashbin
- 2 : Retirer les autorisations dynamiques et les groupes
- 3 : Désactiver
- 4 : Désactiver + Retirer les autorisations dynamiques et les groupes
```

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Le cron indiqué sur mon instance on-premise prend-il en compte le filtre LDAP indiqué dans le filtre de connexion de ma configuration ?

Oui, si vous ne précisez pas **`--ldap-filter`** dans votre ligne de commande, GLPI prend le champ de synchronisation **+** la condition indiquée dans le filtre de connexion pour effectuer la recherche. _Exemple_ :

* Champ de synchronisation configuré = `entryuuid`
* Filtre de connexion configuré = `(objectClass=inetOrgPerson)`
* LDAP filter résultant en ligne de commande = `& (entryuuid=*) (objectClass=inetOrgPerson))`

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Pourquoi les actions automatiques ne fonctionnent elles pas ?

Si vous êtes en Cloud, vous pouvez contacter le support afin que les vérifications soient faites côté serveur : :ti-mail: [Formulaire de contact](https://support.teclib.com/marketplace/formcreator/front/formdisplay.php?id=100) Vérifier également que le **`mode d'exécution`** est bien en **`CLI`** depuis :ti-settings:**`configuration`** > :ti-settings-automation:**`actions automatiques`** pour l'action en question. Si vous êtes on-premise, vérifiez que votre cron soit bien actif et correctement configuré : :ti-settings-automation: [cron et actions automatiques](https://glpi-user-documentation.readthedocs.io/fr/master/modules/configuration/crontasks.html)

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Pourquoi une action automatique en particulier ne fonctionne pas ?

Pour qu'une action automatique fonctionne, il faut qu'elle soit correctement paramétrée. Depuis :ti-settings:**`configuration`** > :ti-settings-automation:**`ations automatiques`**, sélectionnez l'action concernée. Vérifiez qu'elle soit bien **`programmée`** en mode **`CLI`**

* **GLPI** : s'appuie sur PHP (les actions automatiques ne s'enclenchent que lorsque vous êtes connecté)
* **CLI** : s'appuie sur le cron

Cliquez sur **`exécuter`** si vous voulez relancer l'action dès maintenant

![Alt text](<.gitbook/assets/cron 1.png>)

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Quelle est la différence entre les actions **`Logs`**, **`PurgeLogs`** et **`Circularlogs`** ?

* **`Logs`** : Nettoie les anciennes entrées du journal d’actions automatiques. La durée de conservation des entrées de journal peut être modifiée pour chaque action automatique.
* **`PurgeLogs`** : Supprime les entrées de données historiques qui datent de plus d’un certain temps. La durée ne peut être modifiée globalement que pour toutes les entités, mais certains types d’entrées peuvent être configurés avec des durées différentes.
* **`Circularlogs`** : Supprime les entrées dans les journaux du dossier files/\_log qui datent de plus d’un certain nombre de jours, ce qui est configurable dans le formulaire d’action lui-même.
