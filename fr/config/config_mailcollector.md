Configurer les collecteurs
==========================

La configuration des collecteurs s'effectue depuis le menu Configuration
\> Collecteurs

Un collecteur permet d'importer un courriel depuis une boîte, et de le
transformer en ticket dans GLPI. Un mécanisme de routage permet
d'affecter celui-ci à une entité de destination.

Un collecteur est associé à une adresse de messagerie. Il est possible
d'ajouter autant de collecteurs que l'on désire. Bien entendu, plus leur
nombre est élevé, plus le processus d'import des courriels est long.

La déclaration d'un nouveau collecteur consiste à donner un nom de
serveur (Email), ainsi que des options de connexion (IMAP ou POP, SSL,
TLS, validation de certificat). Il est possible de limiter la taille
maximale des pièces jointes (pas d'import, ou de 1 à 100 Mio). La valeur
par défaut de cette option est héritée de la configuration générale
(menu Configuration \> Générale \> Assistance ). Les tickets créés
peuvent avoir comme date de création celle du courriel initial ou celle
de l'import dans GLPI (en fonction de l'option définie dans le
collecteur).

De manière optionnelle, il est possible d'indiquer un répertoire
d'archive dans la boite de messagerie où seront stockés les courriels
acceptés et refusés.

Les collecteurs en erreurs sont présentés en haut de la liste des
collecteurs. Dans ce cas, le nombre d'erreurs successives de connexion
est indiqué dans le formulaire du collecteur.

Important : Le nom du collecteur doit être le courriel utilisé. Cela
permet de déterminer l'adresse associée au compte de messagerie.
Celle-ci est utilisée pour déterminer l'adresse à ne pas ajouter
automatiquement comme observateur des tickets.

Une fois le formulaire validé, un bouton permet de tester la connexion
au compte de messagerie et la récupération des messages.

Une action automatique nommée Récupération des messages (Collecteurs)
réalise l'import effectif des courriels sur les collecteurs précédemment
configurés : le temps entre 2 collectes se paramètre dans le formulaire
de cette tâche. Voir [Configurer les actions
automatiques](config_crontask.html "Les actions automatiques se configurent depuis le menu Configuration > Actions automatiques").

Une autre action Envoyer des alarmes sur les erreurs de réception,
permet d'envoyer des notifications (Voir [Configurer les
notifications](config_notification.html "Les notifications se configurent depuis le menu Configuration > Notifications ;"))
en cas d'erreurs répétées de réception des courriels.

ATTENTION :

Les réponses à des courriels générés par GLPI concernant des tickets
sont nettoyés lors de la récupération par les collecteurs ; l'ensemble
du contenu entre les balises haute et basse sont supprimés. Les réponses
doivent donc être fait au début ou à la fin du mail de référence.

Remarque : lors de la connexion à un serveur Microsoft Exchange, des
erreurs peuvent apparaîtrent dans le fichier php-errors.log qui
concernent GSSAPI. Si la version de PHP utilisée est supérieure ou égale
à 5.3.2 vous pouvez désactiver l'option **Utiliser une authentification
Kerberos** afin de supprimer ces messages.

Remarque : Une liste noire des courriels pour lesquels les mails doivent
être rejetés peut être définie dans les listes noires. Une liste noire
du contenu interdit peut également être définie afin de supprimer les
signatures ou autre contenu récurrent mais non pertinent. Voir
[Configurer les
intitulés](config_dropdown.html "Les intitulés se configurent depuis le menu Configuration > Intitulés").

Remarque : Les documents récurrents et non pertinents (images de
signature...) peuvent également être ignoré à l'import du courriel en
désactivant l'import dans le document généré par un précédent import
(voir [Gérer les
documents](management_document.html "Les documents sont gérés depuis le menu Gestion > Documents")).

Le mécanisme de liste noire de GLPI permet d'exclure du traitement les
courriels provenant d'une ou plusieurs adresses particulières (par
exemple pour éviter les spams, ou bien un alias de messagerie du
collecteur). Voir [Configurer les
intitulés](config_dropdown.html "Les intitulés se configurent depuis le menu Configuration > Intitulés").

**Sujet parent :** [Module
Configuration](../glpi/config.html "Module Configuration de GLPI")
