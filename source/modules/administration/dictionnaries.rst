Import, export et duplication |image|
-------------------------------------

L'exportation, l'importation et la duplication est possible pour l'ensemble des dictionnaires. Ces opérations sont réalisables globalement depuis la page principale des dictionnaires ou bien par lot depuis les moteurs de recherche des différents dictionnaires via les actions massives. Ces fonctionnalités sont intéressantes par exemple dans le cadre de la bascule de règles d'un environnement de pré-production vers un environnement de production.

.. note:: l'exportation ou l'importation se font via un fichier XML.

Configurer les dictionnaires de données
---------------------------------------

Les dictionnaires permettent de modifier les données qui sont entrées ou existent déjà dans GLPI afin de regrouper des données redondantes. Ils se basent sur le :doc:`moteur de règles </modules/administration/rules/rulesmanagement>` et sont disponibles pour certaines données d'inventaire (logiciels, fabricants, intitulés). Ces dictionnaires permettent de disposer de règles qui vont modifier des valeurs entrées manuellement, ajoutées automatiquement via un outil d'inventaire ou des plugins (par exemple l'injecteur de fichiers CSV).

Le dictionnaire fonctionne de la manière suivante :

1. la donnée à ajouter passe dans le dictionnaire ;
2. le moteur de règle rejoue toutes les règles concernant ce type de données et s'arrête à la première vérifiée ;
3. la donnée modifiée est retournée par le dictionnaire et insérée en base.

La fonction |image| (sous la liste des règles d'un dictionnaire) permet de repasser les règles sur des données déjà existantes en base.

    Important : Si la base est conséquente, il faudra faire bien attention à la valeur du paramètre *memory\_limit* dans le fichier de configuration de PHP : en effet les traitements peuvent être très longs.

.. hint:: - Comme pour tous les autres dictionnaires, il est très fortement conseillé de jouer les règles sur une base de test et de sauvegarder la base de données avant la mise en production du dictionnaire ou de nouvelles règles. - Un script est disponible dans le répertoire scripts de GLPI (*compute\_dictionnary.php*), qui permet de lancer les dictionnaires en ligne de commande. Cela permet de s'affranchir des problèmes de limite d'exécution et propose un gain de temps appréciable.

* **Dictionnaire général**

* **Logiciels** Il modifie les données du logiciel (nom, version, fabricant) afin de compléter ou fusionner des logiciels entre eux. Il est utilisé pour rendre plus cohérent des logiciels équivalents dont le nom n'est pas identique (par exemple Mozilla Firefox 3.0 et Mozilla Firefox 3.6) ou pour ajouter un fabricant s'il n'est pas renseigné. Ce dictionnaire permet aussi de rediriger la création d'un logiciel (ou d'un ensemble de logiciels) dans une entité donnée. Pour cela, il suffit de choisir l'action *Entité* et de sélectionner celle dans lequel il sera créé. Cette fonctionnalité peut être utilisée conjointement avec l'option générale *Entité de création des logiciels* disponible dans la configuration d'une entité. *.. note:: pour une gestion optimale des logiciels et licences en environnement multi-entités, il est possible d'utiliser le dictionnaire des logiciels conjointement avec des logiciels visibles dans les sous-entités (et donc utiliser la fonctionnalité de regroupement).*

   ::

      .. warning:: il faut être très prudent en utilisant l'action *ajouter le résultat de l'expression régulière* sur une version. En effet, celle-ci n'est prise en compte que lors de  l'import de données venant d'un outil d'inventaire et sera ignorée en cas de ré-application du dictionnaire sur la base existante.

   Figure 1. Exemple de regroupement des logiciels Mozilla Les critères sont cumulatifs (ET) |image| |image| Cela aura pour effet de regrouper les logiciels Mozilla par type (Mozilla Thunderbird, MozillaFirefox...) et de grouper tous les noms de versions par type.  |image|

   | Autre exemple pour regrouper les mises à jour Windows. Cette fois le critères sont des OU et non des ET *Critères*
   | Logiciel expression rationnelle vérifie /Correctif.\*XP.\*KB([0-9]\*)/ Logicel expression rationnelle vérifie /Mise.\*XP.\*KB([0-9]\*)/ Logiciel expression rationnelle vérifie /Update.\*XP.\*KB([0-9]\*)/ *Actions*
   | Logiciel assigner Mise à jour Windows Version assigner valeur depuis regex #0

* **Fabricants** Ce dictionnaire permet de regrouper le nom du fabricant remontant d'"un agent d'inventaire sous différentes forme sous un nom unique. *Exemple :* regrouper les fabricants .  Sun\_Microsystems . Sun Microsystems, Inc. for the OpenOffice.org-Community . Sun Microsystems, Inc. . Sun Microsystems, Inc sous le nom Sun Microsystems

* **Imprimantes** Ce dictionnaire permet de modifier les informations provenant des imprimantes en se basant sur le fabricant, et/ou le nom. Il est possible de refuser un import (par exemple des imprimantes commençant par //), de regrouper des imprimantes sous un même nom, d'affecter un fabricant ou encore de forcer le type de gestion (globale ou unitaire).

* **Dictionnaire des intitulés** Il permet de modifier un certain nombre d'intitulés en rapport avec l'inventaire (types et modèles d'objets, système d'exploitation ainsi que version et service pack).

* **Dictionnaires sur les modèles** Les critères pouvant être pris en compte sont le fabricant et le modèle de l'objet

   ::

       ***Exemple d'utilisation :*** souvent les logiciel d'inventaire remonte le numéro technique du modèle, ce qui n'est pas parlant pour l'être humain. L'exemple ci-dessous permet d'avoir le nom commercial du modèle tout en conservant le numéro technique qui peut être demandé en cas de demande d'intervention auprès du fournisseur.

       Figure 1. Exemple de dictionnaire sur un modèle d'ordinateur
       ![image](docs/image/critereS42.png)
       ![image](docs/image/actionS42.png)

       un exemple du résultat obtenu : Netvista S42 (8319LGV)

* **Dictionnaires sur les types** Le seul critère possible est le type de l'objet.

   ::

       ***Exemple d'utilisation :*** harmonisation des non des périphériques.

       Figure 1. Exemple de dictionnaire sur un type de périphérique
       ![image](docs/image/critereKbd.png)
       ![image](docs/image/actionKbd.png)

       résultat obtenu : Clavier

* **Dictionnaires sur les systèmes d'exploitation** Suivant le dictionnaire choisi, le critère portera sur le système d'exploitation lui-même ou le service pack du système d'exploitation ou la version du système d'exploitation.

.. |image| image:: /image/importrule.png
.. |image2| image:: /image/playrule.png
.. |image3| image:: /image/critereMozilla.png
.. |image4| image:: /image/actionMozilla.png
.. |image5| image:: /image/resultatMozilla.png

