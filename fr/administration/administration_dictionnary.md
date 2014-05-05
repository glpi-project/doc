Configurer les dictionnaires de données
=======================================

Les dictionnaires se gèrent depuis le menu Administration \>
Dictionnaires

Les dictionnaires permettent de modifier les données qui sont entrées ou
existent déjà dans GLPI. Ils se basent sur le moteur de règles et sont
disponibles pour certaines données d'inventaire (logiciels, fabricants,
intitulés). Ces dictionnaires permettent de disposer de règles qui vont
modifier des valeurs entrées manuellement, ajoutées automatiquement via
un outil d'inventaire, ou des plugins (par exemple l'injecteur de
fichiers CSV).

Le dictionnaire fonctionne de la manière suivante :

1.  la donnée à ajouter passe dans le dictionnaire ;
2.  le moteur de règle rejoue toutes les règles concernant ce type de
    données, et s'arrête à la première vérifiée;
3.  la donnée modifiée est retournée par le dictionnaire et insérée en
    base.

Une fonction nommée **Rejouer le dictionnaire** (disponible à travers un
bouton sur la liste des règles) permet de repasser les règles sur des
données déjà existantes en base.

Important : Si la base est conséquente, il faudra faire bien attention à
la valeur du paramètre *memory\_limit* dans le fichier de configuration
de PHP : en effet les traitements peuvent être très longs.

Conseil : un script est disponible dans le répertoire scripts de GLPI
(*compute\_dictionnary.php*), qui permet de lancer les dictionnaires en
ligne de commande. Cela permet de s'affranchir des problèmes de limite
d'exécution, et propose un gain de temps appréciable.

-   **[Dictionnaire des
    intitulés](../glpi/administration_dictionnary_dropdown.html)**\
-   **[Dictionnaire des
    logiciels](../glpi/administration_dictionnary_software.html)**\
-   **[Dictionnaire des
    imprimantes](../glpi/administration_dictionnary_printer.html)**\

**Sujet parent :** [Module
Administration](../glpi/administration.html "Le module Administration permet d'administrer les utilisateurs, groupes, entités, profils, règles et dictionnaires et offre des outils de maintenance de l'application (sauvegarde et restauration de base, vérification de nouvelle version disponible).")
