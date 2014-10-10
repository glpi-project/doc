Dictionnaire des logiciels
==========================

Il modifie les données du logiciel (nom, version, fabricant) afin de compléter ou fusionner des logiciels entre eux.

Il est utilisé pour rendre plus cohérent des logiciels équivalents dont le nom n'est pas identique (par exemple Mozilla Firefox 3.0 et Mozilla Firefox 3.6) ou pour ajouter un fabricant s'il n'est pas renseigné.

Ce dictionnaire permet aussi de rediriger la création d'un logiciel (ou d'un ensemble de logiciels) dans une entité donnée. Pour cela, il suffit de choisir l'action *Entité* et de sélectionner celle dans lequel il sera créé. Cette fonctionnalité peut être utilisée conjointement avec l'option générale *Entité de création des logiciels* disponible dans la configuration d'une entité.

***Remarque :** pour une gestion optimale des logiciels et licences en environnement multi-entités, il est possible d'utiliser le dictionnaire des logiciels conjointement avec des logiciels visibles dans les sous-entités (et donc utiliser la fonctionnalité de regroupement).*

***Conseil :*** comme pour tous les autres dictionnaires, il est très fortement conseillé de jouer les règles sur une base de test et de sauvegarder la base de données avant la mise en production du
dictionnaire ou de nouvelles règles.

> Avertissement : il faut être très prudent en utilisant l'action *ajouter le résultat de l'expression régulière* sur une version. En effet, celle-ci n'est prise en compte que lors de  l'import de données venant d'un outil d'inventaire et sera ignorée en cas de ré-application du dictionnaire sur la base existante.

Figure 1. Exemple de regroupement des logiciels Mozilla
Les critères sont cumulatifs (ET)
![image](docs/image/critereMozilla.png)
![image](docs/image/actionMozilla.png)
Cela aura pour effet de regrouper les logiciels Mozilla par type (Mozilla Thunderbird, MozillaFirefox...) et de grouper tous les noms de versions par type.
![image](docs/image/resultatMozilla.png)


Autre exemple pour regrouper les mises à jour Windows.
Cette fois le critères sont des OU et non des ET

**Critères**           
  Logiciel             expression rationnelle vérifie                  /Correctif.\*XP.\*KB([0-9]\*)/
  Logicel              expression rationnelle vérifie                  /Mise.\*XP.\*KB([0-9]\*)/
  Logiciel             expression rationnelle vérifie                  /Update.\*XP.\*KB([0-9]\*)/
**Actions**            
  Logiciel             assigner                       Mise à jour Windows
  Version              assigner valeur depuis regex   \#0

--------
**Sujet parent :** [Configurer les dictionnaires de données](index.php?fr/07_Module_Administration/05_Dictionnaires/01_Dictionnaires.md "Les dictionnaires se gèrent depuis le menu Administration > Dictionnaires")
