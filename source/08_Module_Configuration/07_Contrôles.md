Configurer les contrôles
========================

GLPI dispose d'un mécanisme permettant de réaliser des contrôles avant l'insertion en base de données d'un objet.

Cette fonctionnalité permet de rendre l'ajout ou la mise à jour d'un objet d'inventaire impossible si un autre possède déjà une valeur identique. Ce mécanisme s'applique sur les ajouts manuels, mais aussi
sur l'import depuis une source externe comme depuis un outil d'inventaire.

Les différents onglets
----------------------
-   **Onglet "Unicité des champs"**
     L'unicité est définie par un nom, un type d'objet sur lequel elle se rapporte, une liste de champs ainsi que les actions en découlant (refus d'injection en base, envoi de notification). 
     Le champ sous-entité permet d'indiquer si les critères d'unicité s'appliquent à tout GLPI ou
seulement à l'entité dans laquelle l'unicité est créée.

     Il faut noter que la sélection de plusieurs champs vérifie l'unicité du n-uplet et non chaque champ individuellement.

     Pour un ordinateur, le critère d'unicité global est le numéro de série. 
     Si l'on tente d'enregistrer, quelque soit l'entité un autre ayant le même numéro de série, l'insertion est refusée et un message d'erreur indique l'élément déjà présent en base. Par contre, si un utilisateur insère un ordinateur sans numéro de série, alors aucune vérification sur l'unicité ne sera effectuée.

     Les critères ajoutés dans les listes noires seront ignorer lors du calcul d'unicité. Voir [Configurer les intitulés](08_Module_Configuration/02_Intitulés/03_Intitulés_Général.md "La partie Général des intitulés")
.
-   **Onglet "Duplique"**
    Cet onglet liste l'ensemble des valeurs correspondant aux critères qui sont actuellement en doublon dans la base GLPI avec éventuellement pour chacune d'elles un lien vers la fiche de l'objet.

-   **[Onglet "Historique"](Les_différents_onglets/Onglet_Historique.md)**
     L'historique est visualisé depuis l'onglet *Historique*

-   **[Onglet "Debug"](Les_différents_onglets/Onglet_Debug.md)**
    Uniquement si vous êtes connecté en mode Debug.

-   **[Onglet "Tous"](Les_différents_onglets/Onglet_Tous.md)**
     Pour un élément, toutes les informations sont affichées sur une seule page.

--------
**Sujet parent :** [Module Configuration](08_Module_Configuration/01_Module_Configuration.md "Module Configuration de GLPI")

