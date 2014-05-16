Utiliser GLPI
=============

Cette partie décrit l'utilisation de l'application et présente ses fonctionnalités générales.

-   **Choisir un navigateur web**
    GLPI nécessite l'utilisation d'un navigateur web.
    Un fonctionnement optimal de l'application est obtenu en utilisant un navigateur moderne et conforme aux standards du web. Les navigateurs suivants peuvent convenir : Firefox version 3 et supérieure, Seamonkey version 2 et supérieure, Opera, Safari ou Chrome. GLPI fonctionne également sur Internet Explorer version 7 et supérieure. La compatibilité avec Internet Explorer 6 ou inférieure n'est pas assurée.


-   **Comment se connecter à GLPI ?**
    Démarrer le navigateur sur la page d'accueil de GLPI [http://<ADRESSE\_GLPI\>](http://<ADRESSE_GLPI>). L'accès aux fonctionnalités complètes de l'application nécessite une authentification. Selon le profil de l'utilisateur authentifié, l'interface proposée est soit l'interface standard, soit l'interface simplifiée. Voir [L'interface standard et l'interface simplifiée](navigate_interface.html "Selon ses habilitations, l'utilisateur utilise l'interface standard ou l'interface simplifiée.").
Un utilisateur non authentifié peut accéder à certaines fonctionnalités si GLPI a été configuré pour l'autoriser : visualiser la Foire Aux Questions (FAQ), ouvrir un ticket... Voir [Onglet Assistance](config_common_assist.html "Cet onglet permet de paramétrer le comportement de la partie assistance de GLPI.").


-   **Terminer sa session GLPI**
    Pour se déconnecter, cliquer sur le lien Déconnexion situé en haut à droite de l'écran.
Une fois la session terminée, l'utilisateur est redirigé vers la page d'authentification.


-   **Découvrir l'interface de GLPI**
    En fonction du profil de l'utilisateur, les menus peuvent différer mais la logique de l'interface reste la même.
    L'interface de GLPI est composée de cinq zones regroupant les fonctionnalités de l'application en fonction de leur nature.

    Figure 1. L'interface de GLPI ![image](../img/interface.png)

    1.  Le menu utilisateur permet de gérer ses préférences, d'accéder à l'aide et de se déconnecter ;
    2.  Le menu principal permet de naviguer dans les différents modules ;
    3.  Le fil d'ariane permet de situer le contexte d'utilisation de la zone de travail principale ;
    4.  Le menu contextuel et le sélecteur d'entité permettent d'agir sur le contexte ;
    5.  La zone de travail principale est l'espace privilégié d'interaction avec l'application.


-   **Changer la langue de l'application**
    Un lien direct pour changer la langue de GLPI est disponible en haut à droite de l'écran.    
    Le lien affiche le nom de la langue actuellement en utilisation dans GLPI.


-   **Gérer son mot de passe**
    Le formulaire de changement de mot de passe se trouve dans l'onglet principal du menu Préférences.
    Il est nécessaire de saisir et de confirmer son mot de passe avant validation. L'administrateur peut désactiver cette fonctionnalité. La zone de modification du mot de passe n'apparaît donc pas dans ce cas. Voir [Administrer les profils d'utilisateurs](administration_profile.html "Dans GLPI, administrer les profils peut se faire à partir du menu Administration > Profils.").

    Dans le cas où l'utilisateur a perdu son mot de passe, la possibilité de le réinitialiser lui est proposé depuis la page de connexion. Le lien n'est présent que si les notifications sont activées (voir [Configurer
les suivis par courriels et les alertes](config_notification_configuration.html "La configuration générale des notifications se fait depuis le menu Configuration > Notifications > Configurer les suivis par courriels et les alertes;")).
    Seuls les utilisateurs disposant d'une adresse de messagerie définie dans GLPI et ne s'authentifiant pas via une source externe (LDAP, serveur de messagerie...) peuvent utiliser cette fonctionnalité. Une fois la demande de renouvellement effectuée en saisissant son adresse de messagerie, l'utilisateur reçoit un courriel lui fournissant un lien permettant de réinitialiser son mot de passe.

    Les mots de passe doivent suivre la politique de sécurité définie (voir [Onglet Système] (config_common_sysinfo.html "Cet onglet permet de visualiser un résumé des informations sur les capacités du serveur web et de définir les informations de journalisation et d'erreurs à enregistrer ainsi que la politique des mots de passe à appliquer.")).
    Un contrôle en temps réel du mot de passe saisi est alors effectué.


-   **[Gérer ses préférences](index.php?fr/05_utiliser_GLPI/02_gerer_ses_preferences)**
     Les préférences utilisateur se modifient depuis le menu Préférences


-   **[Naviguer dans les modules de GLPI](05_utiliser_GLPI/03_naviguer_dans_les_modules_de_GLPI.md)**
     La navigation dans les modules se fait via la barre supérieure de l'interface.


-   **[L'interface standard et l'interface
    simplifiée](../glpi/navigate_interface.html)**\
     Selon ses habilitations, l'utilisateur utilise l'**interface
    standard** ou l'**interface simplifiée**.
-   **[Visualiser les
    enregistrements](../glpi/navigate_manageitem.html)**\
     Visualiser et gérer les enregistrements
-   **[Rechercher](../glpi/navigate_search.html)**\
     Rechercher des informations dans GLPI

**Sujet parent :** [Premiers pas avec
GLPI](../glpi/first_steps.html "Premiers pas avec GLPI.")
