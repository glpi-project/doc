Onglet Système
==============

Cet onglet permet de visualiser un résumé des informations sur les capacités du serveur web et de définir les informations de journalisation et d'erreurs à enregistrer ainsi que la politique des mots de passe à appliquer.

![image](docs/image/sytemConfig.png)

- **Niveau de journalisation** : chaque événement interne à l'application est enregistré dans les journaux qui sont visibles dans la section [Administration > Journaux](07_Module_Administration/10_Journaux.md). Dans cet onglet, il est possible de réduire le degré de verbosité de ces journaux.

- **Traceurs dans fichiers (SQL, courriel, action automatique...)** : il est possible d'enregistrer dans des fichiers certains événements supplémentaires (SQL, notifications, action automatique). Ces fichiers sont alors disponibles dans files/_log.

- **Nombre maximum d'actions automatiques simultanées (exécution CLI)** : lors de la définition des actions automatiques, il est possible de déterminer que celles-ci seront exécutées par un système externe à GLPI (CLI). Par défaut celui-ci exécute ces actions une par une. Il est possible d'augmenter le nombre d'exécutions lancées simultanément.

- **Réplicat MySQL** : dans le cas de l'utilisation d'un réplicat MySQL, une fois l'option activée, un nouvel onglet sera ajouté à l'interface.

![image](docs/image/systemMdp.png)

Une politique de mot de passe peut être mise en place à titre informatif ou de manière bloquante. Les critères utilisables sont la longueur du mot de passe, la présence ou non de chiffres, minuscules, majuscules et symboles.

![image](docs/image/systemMaintenance.png)

Un mode maintenance est activable pour permettre une opération technique telle qu'une mise à jour par exemple. Un message de maintenance est paramétrable. En mode maintenance, vous pouvez quand même accéder à GLPI via `index.php?skipMaintenance=1`.

![image](docs/image/systemProxy.png)

Dans le cas d'utilisation d'un proxy, il est nécessaire d'indiquer les informations de configurations de ce dernier pour permettre à GLPI de vérifier la présence de versions plus récentes de l'application.

![image](docs/image/systemInfo.png)

La suite de l'écran liste l'ensemble des informations de GLPI nécessaires pour signaler un dysfonctionnement auprès de l'équipe de développement de GLPI. Il suffit de copier/coller le texte sur le forum : le formatage est déjà géré.

-----
**Sujet parent :** [Configurer les paramètres centraux](08_Module_Configuration/06_Générale/01_Configures_les_paramètres_centraux.md)
