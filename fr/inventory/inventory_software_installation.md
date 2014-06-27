Gérer les installations
=======================

Principes et gestion des installations logiciels dans GLPI ***Parc > Logiciel.***

L'installation d'un logiciel sur un poste est visualisée au travers d'une version (voir [Gérer les versions](inventory_software_version.html "Principes et gestion des versions logiciels dans GLPI")) et consultable sur la fiche d'un logiciel (liste des ordinateurs ayant au moins une version installée), sur celle d'une version (ordinateurs ayant cette version installée) ou enfin sur la fiche de l'ordinateur (liste des versions de logiciels installées, triées par catégories).

***Remarques :***
- La colonne licence est remplie uniquement lorsque la licence est affectée à l'ordinateur concerné.
- L'affichage initial des différentes catégories dépend des préférences utilisateur. Voir [Personnaliser l'interface](config_common_personalize.html "Les préférences d'affichage qui peuvent être définies avec des valeurs par défaut et que les utilisateurs peuvent modifier pour leur session sont regroupées dans l'onglet personnalisation.").

2 options sont disponibles sur la liste des installations de logiciels d'un ordinateur. Au dessus de la liste, **Installer** manuellement une version d'un logiciel sur le poste (nécessite de sélectionner le
logiciel et la version) : si une licence est associée à celui-ci la "version d'utilisation" de la licence est automatiquement renseignée.

Pour **Désinstaller** une version d'un logiciel, il faut utiliser le système d'actions massives : sélectionner les versions à supprimer puis choisir **Supprimer définitivement**. Si une licence est affectée à
l'ordinateur elle le reste, mais sa "version d'utilisation" est effacée.

A la suite des versions installées, la liste des licences affectées mais non installées est affichée. Vous pouvez ajouter une nouvelle licence associée à cet ordinateur. Le système d'actions massives permet, via l'action **Installer**, d'installer les versions d'utilisation des licences sélectionnées.

---------
**Sujet parent :** [Gérer les
logiciels](../glpi/inventory_software.html "Les logiciels se gèrent depuis le menu Parc > Logiciel")
