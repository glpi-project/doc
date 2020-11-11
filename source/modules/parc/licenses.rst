Licences
========

La licence d'un logiciel correspond à un droit d'utilisation de ce logiciel. Elle dispose d'un certain nombre de champs spécifiques. Le nom indique la désignation commerciale de la licence. La version d'achat est celle achetée alors que la version d'utilisation correspond à la version réellement installée du logiciel. Ces deux versions peuvent être totalement différentes mais doivent refléter l'existant.

2 versions d'un logiciel ont été achetées mais une seule est effectivement installée.

Le type est la nature du droit d'utilisation. Le type OEM est le seul type configuré par défaut dans GLPI. Voir [Configurer les intitulés](08_Module_Configuration/02_Intitulés/01_Intitulés.rst "Les intitulés se configurent depuis le menu Configuration > Intitulés") pour définir les types.

Le nombre indique le volume d'installation qui pourra être fait avec cette licence. Cela peut être un nombre d'utilisateurs (licence flottante), un nombre d'installations (licence multiple), un nombre illimité (licence site), etc. Il est possible d'affecter la licence à un ou plusieurs ordinateurs correspondant. par exemple si la licence est de type OEM.

L'expiration est la date limite donnant droit d'utilisation de la licence. La dépassement de cette date peut déclencher une notification. Voir [Configuration des notifications](08_Module_Configuration/04_Notifications/01_Configurer_les_notifications.rst "Les notifications se configurent depuis le menu Configuration > Notifications ;").

***Conseil :*** Ceci est configurable par entité dans le menu ***Configuration > Notifications*** pour définir les modèles et destinataires utilisés et dans le menu ***Configuration > Entité*** pour activer ou non cette fonctionnalité, définir les valeurs par défaut et une anticipation de l'envoi de la notification si besoin.

***Remarque :** Les licences expirées ne comptent plus dans les totaux des licenses disponibles.*

Il est possible de lier des contrats à des licences (Voir [Gérer les contrats](05_Module_Gestion/05_Contrats.rst "Les contrats sont gérés depuis le menu Gestion > Contrats")).

***Remarque :** Lors de l'activation des informations financières d'une licence, les données sont initialisées avec les renseignements saisis dans les informations financières du logiciel (qui n'est qu'un modèle).*


Les différents onglets
----------------------
-   **Onglet "Résumé"**
    Affiche un tableau listant le nombre d'ordinateurs utilisant cette licence
    ![image](docs/image/resumeLicence.png)


-   **Onglet "Ordinateurs"**
    Fournit un tableau listant les ordinateurs utilisant cette licence avec notamment, le nom de l'ordinateur, son numéro de série, son numéro d'inventaire, son lieu d'affectation, son statut, son groupe et son utilisateur.
    Des actions de masse sont proposées à ce niveau (si droit sur les ordinateurs), pour supprimer l'utilisation de cette licence sur l'ordinateur sélectionné ou pour affecter une autre licence du même logiciel à cet ordinateur (action Déplacer).

.. include:: onglets/gestion.rst

.. include:: ../tabs/contracts.rst

.. include:: ../tabs/documents.rst

.. include:: ../tabs/historical.rst

.. include:: ../tabs/debug.rst

.. include:: ../tabs/all.rst

Les différentes actions
-----------------------
- **Visualiser le détail d'une licence d'un logiciel**
  Depuis le menu **Parc > Logiciels** cliquer sur le nom de la licence dans l'onglet *Licences*.
- **Supprimer l'utilisation d'une licence par un ordinateur**
  Voir onglet *Ordinateurs* ci-dessus
  [Voir onglet *Logiciels* d'un ordinateur](03_Module_Parc/04_Logiciels/01_Logiciels.rst)
- **[Associer un document à une licence](Les_différentes_actions/Lier_un_document_à_un_objet.rst)**
- **[Associer un contrat à une licence](Les_différentes_actions/Lier_un_contrat_à_un_objet.rst)**
