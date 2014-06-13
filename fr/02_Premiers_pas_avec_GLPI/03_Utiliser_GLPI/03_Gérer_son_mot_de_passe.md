Gérer son mot de passe
======================

Le formulaire de changement de mot de passe se trouve dans l'onglet principal du menu ***Préférences***

Il est nécessaire de saisir et de confirmer son mot de passe avant validation. L'administrateur peut désactiver cette fonctionnalité. La zone de modification du mot de passe n'apparaît donc pas dans ce cas. Voir [Administrer les profils d'utilisateurs](administration_profile.html "Dans GLPI, administrer les profils peut se faire à partir du menu Administration > Profils.").

Dans le cas où l'utilisateur a perdu son mot de passe, la possibilité de le réinitialiser lui est proposé depuis la page de connexion. Le lien n'est présent que si les notifications sont activées (voir [Configurer
les suivis par courriels et les alertes](config_notification_configuration.html "La configuration générale des notifications se fait depuis le menu Configuration > Notifications > Configurer les suivis par courriels et les alertes;")).
Seuls les utilisateurs disposant d'une adresse de messagerie définie dans GLPI et ne s'authentifiant pas via une source externe (LDAP, serveur de messagerie...) peuvent utiliser cette fonctionnalité. Une fois la demande de renouvellement effectuée en saisissant son adresse de messagerie, l'utilisateur reçoit un courriel lui fournissant un lien permettant de réinitialiser son mot de passe.

Les mots de passe doivent suivre la politique de sécurité définie (voir [Onglet Système] (config_common_sysinfo.html "Cet onglet permet de visualiser un résumé des informations sur les capacités du serveur web et de définir les informations de journalisation et d'erreurs à enregistrer ainsi que la politique des mots de passe à appliquer.")).
Un contrôle en temps réel du mot de passe saisi est alors effectué.

**Sujet parent :** [Utiliser GLPI](index.php?fr/02_Premiers_pas_avec_GLPI/03_Utiliser_GLPI/01_Utiliser_GLPI.md)
