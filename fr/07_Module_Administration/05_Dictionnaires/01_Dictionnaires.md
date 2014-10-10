Configurer les dictionnaires de données
=======================================

Les dictionnaires permettent de modifier les données qui sont entrées ou existent déjà dans GLPI. Ils se basent sur le moteur de règles et sont disponibles pour certaines données d'inventaire (logiciels, fabricants, intitulés). Ces dictionnaires permettent de disposer de règles qui vont modifier des valeurs entrées manuellement, ajoutées automatiquement via un outil d'inventaire ou des plugins (par exemple l'injecteur de fichiers CSV).

Le dictionnaire fonctionne de la manière suivante :

1.  la donnée à ajouter passe dans le dictionnaire ;
2.  le moteur de règle rejoue toutes les règles concernant ce type de données et s'arrête à la première vérifiée ;
3.  la donnée modifiée est retournée par le dictionnaire et insérée en base.

Une fonction nommée **Rejouer le dictionnaire** (disponible à travers un bouton sous la liste des règles d'un dictionnaire) permet de repasser les règles sur des données déjà existantes en base.

> Important : Si la base est conséquente, il faudra faire bien attention à la valeur du paramètre *memory_limit* dans le fichier de configuration de PHP : en effet les traitements peuvent être très longs.

***Conseil :*** un script est disponible dans le répertoire scripts de GLPI (*compute_dictionnary.php*), qui permet de lancer les dictionnaires en ligne de commande. Cela permet de s'affranchir des problèmes de limite d'exécution et propose un gain de temps appréciable.

- **Dictionnaire général**
  - **[Dictionnaire des logiciels](index.php?fr/07_Module_Administration/05_Dictionnaires/02_Dictionnaires_Logiciels.md)**

- **[Dictionnaire des intitulés](index.php?fr/07_Module_Administration/05_Dictionnaires/05_Dictionnaires_sur_intitulés.md)**
  Il permet de modifier un certain nombre d'intitulés en rapport avec l'inventaire (types et modèles d'objets, système d'exploitation ainsi que version et service pack).



-   **[Dictionnaire des
    imprimantes](../glpi/administration_dictionnary_printer.html)**\

**Sujet parent :** [Module
Administration](../glpi/administration.html "Le module Administration permet d'administrer les utilisateurs, groupes, entités, profils, règles et dictionnaires et offre des outils de maintenance de l'application (sauvegarde et restauration de base, vérification de nouvelle version disponible).")
