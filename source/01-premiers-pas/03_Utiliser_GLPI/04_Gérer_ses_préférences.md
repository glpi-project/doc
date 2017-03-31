Gérer ses préférences
=====================

Les préférences utilisateur se modifient depuis le l'onglet *Préférences* de la fiche utilisateur ou via le menu *Mes préférences* situé tout en haut et à droite de l'interface, à partir de n'importe quelle page.

Chaque utilisateur authentifié a la possibilité de modifier ses préférences.

Onglet Principal
----------------
L'utilisateur peut ici modifier les informations personnelles usuelles : nom de famille, prénom, adresse de messagerie, numéros de téléphone, lieu et langue.

***Remarque :** Certains champs ne sont pas modifiables s'ils proviennent d'un annuaire LDAP.*

Il peut ajouter des adresses de messagerie et sélectionner l'adresse par défaut, qui sera utilisée pour  l'envoi des notifications.

Il peut aussi spécifier certains comportements par défaut de l'application, comme le profil et l'entité sélectionnés par défaut lors de la connexion à l'interface. Voir [Administrer les profils d'utilisateurs](index.php?fr/07_Module_Administration/07_Profils/01_Profils.md) "Dans GLPI, administrer les profils peut se faire à partir du menu Administration > Profils.") et [Administrer les entités](index.php?fr/07_Module_Administration/04_Entités.md "Dans GLPI, administrer les entités peut se faire à partir du menu Administration > Entités.").
Il peut également désactiver les notifications pour les actions qu'il réalise.

L'utilisateur expérimenté peut aussi choisir de sortir du mode d'utilisation normal de l'application :

-   Dans le mode debug, GLPI affiche les erreurs, toutes les valeurs des variables, les requêtes SQL... Il est utile d'activer ce mode en cas de dysfonctionnement de GLPI. Un maximum d'informations peuvent ainsi être communiquées aux développeurs du projet GLPI. Ce mode permet également d'avoir des informations supplémentaires sur différents objets dans un onglet spécifique (notifications...).

Onglet Personnalisation
----------------------
Cet onglet permet de modifier les préférences générales d'affichage appliqué à un utilisateur donné. Ces paramètres sont prioritaires sur ceux définis dans la configuration générale.

Pour plus d'explications, voir [l'onglet personnalisation de la configuration générale](index.php?fr/08_Module_Configuration/06_Générale/03_Valeurs_par_défaut.md)


![image](docs/image/personnalisation.png)

***Remarque** : pour le Nombre de résultats par page, la valeur indiquée ici ne peut dépasser la valeur maximale définie dans les options générales d'affichage.*



![image](docs/image/pref-assistance.png)


![image](docs/image/pref-cle.png)

La section **Clé d'accès distant** permet de régénérer la clé de sécurité utilisée pour accéder aux flux privés offerts par GLPI.
Actuellement les flux ICAL et WEBCAL du planning sont protégés par cette clé de sécurité qui est intégrée à l'url.

![image](docs/image/pref-duedate.png)

Onglet Vue personnelle
----------------------

Si vous avez défini des affichages personnalisés dans les objets, cet onglet sera visible.
Il permet de supprimer les vues personnelles définies pour revenir aux vues galobales.

-------
**Sujet parent :** [Utiliser GLPI](index.php?fr/01-premiers-pas/03_Utiliser_GLPI/01_Utiliser_GLPI.md)
