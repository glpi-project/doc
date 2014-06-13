La gestion des gabarits dans GLPI
=================================

Intérêt
-------

Pour certains éléments de GLPI, il est possible de créer les nouveaux éléments (ordinateurs par exemple) via des gabarits. Un gabarit définit un élément standard en pré-remplissant certains champs qui seront réutilisés pour la création d'autres éléments. Cela permet de simplifier l'ajout d'un grand nombre d'éléments quasi identiques.

La gestion des gabarits se réalise via l'icône ![image](docs/image/menu_addtemplate.png) située dans la barre de menu.

    Exemple :
    -------   

    Afin de préparer la réception de 20 imprimantes identiques dont seuls les numéros de série et d'inventaire changent, 

    - créer un gabarit correspondant à ce modèle d'imprimante 
    - dans ce gabarit, remplir tous les champs invariables (constructeur, modèle, etc.). 
    - créer ensuite les 20 fiches d'imprimantes d'après ce gabarit. 
    Lors de la saisie de chaque imprimante le numéro de série et le numéro d'inventaire seront les seuls éléments à compléter.

Le système d'incrémentation
---------------------------

Un système de remplissage et d'incrémentation automatique de certains champs (marqués par \*) est disponible. Ces champs (nom, numéro d'inventaire...) sont alors remplis automatiquement à la création si le champ correspondant dans le gabarit contient une chaîne de formatage de la forme <XXX\#\#\#\#X\>:

-   ***<*** et ***\>*** en début et fin du format indiquent qu'il s'agit d'un format ;
-   ***X*** représente un caractère quelconque ;
-   ***\\g*** : recherche du numéro parmi tous les champs identiques basés sur le même format ;
-   ***\#*** : emplacement du numéro à incrémenter (nombre de chiffres égal au nombre de \#) ;
-   ***\\Y*** : année sur 4 chiffres ;
-   ***\\y*** : année sur 2 chiffres ;
-   ***\\m*** : mois ;
-   ***\\d*** : jour.

. 

    Exemple :
    -------    

    En poursuivant l'exemple cité plus haut, il est possible d'utiliser la fonctionnalité d'incrémentation pour créer automatiquement les numéros d'inventaire. 
    Si ceux-ci sont composés par exemple de la forme ANNEE+MOIS+JOUR+code structure (555) + code opération (1234) + numéro à incrémenter, 
    
    - il suffira de renseigner dans le gabarit pour le champ numéro d'inventaire la chaîne suivante <\\Y\\m\\d-555-1234-\#\#\>.
    Chaque imprimante à sa création verra son numéro d'inventaire généré automatiquement et incrémenté de 1 à 20.

**Sujet parent :** [Module Parc](index.php?fr/03_Module_Parc/01_Module_Parc.md "Module Parc de GLPI")
