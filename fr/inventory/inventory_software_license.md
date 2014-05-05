Gérer les licences
==================

Principes et gestion des licences logiciels dans GLPI

La licence d'un logiciel correspond à un droit d'utilisation de ce
logiciel. Elle dispose d'un certain nombre de champs spécifiques. Le nom
indique la désignation commerciale de la licence. La version d'achat est
celle achetée alors que la version d'utilisation correspond à la version
réellement installée du logiciel. Ces deux versions peuvent être
totalement différentes mais doivent refléter l'existant.

2 versions d'un logiciel ont été achetées mais une seule est
effectivement installée.

Le type est la nature du droit d'utilisation. Le type OEM est le seul
type configuré par défaut dans GLPI. Voir [Configurer les
intitulés](config_dropdown.html "Les intitulés se configurent depuis le menu Configuration > Intitulés")
pour définir les types.

Le nombre indique le volume d'installation qui pourra être fait avec
cette licence. Cela peut être un nombre d'utilisateurs (licence
flottante), un nombre d'installations (licence multiple), un nombre
illimité (licence site), etc. Il est possible d'affecter la licence à un
ou plusieurs ordinateurs correspondant. par exemple si la licence est de
type OEM.

L'expiration est la date limite donnant droit d'utilisation de la
licence. La dépassement de cette date peut déclencher une notification.
Voir [Configuration des
notifications](config_notification.html "Les notifications se configurent depuis le menu Configuration > Notifications ;").

Conseil : Ceci est configurable par entité dans le menu **Configuration
\> Notifications** pour définir les modèles et destinataires utilisés et
dans le menu **Configuration \> Entité** pour activer ou non cette
fonctionnalité, définir les valeurs par défaut et une anticipation de
l'envoi de la notification si besoin.

Remarque : Les licenses expirées ne comptent plus dans les totaux des
licenses disponibles.

Il est possible de lier des contrats à des licences (Voir [Gérer les
contrats](management_contract.html "Les contrats sont gérés depuis le menu Gestion > Contrats")).

Remarque : Lors de l'activation des informations financières d'une
licence, les données sont initialisées avec les renseignements saisis
dans les informations financières du logiciel (qui n'est qu'un modèle).

**Sujet parent :** [Gérer les
logiciels](../glpi/inventory_software.html "Les logiciels se gèrent depuis le menu Parc > Logiciel")
