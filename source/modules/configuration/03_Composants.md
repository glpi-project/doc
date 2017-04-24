Configurer les composants
=========================

Les composants ajoutés aux ordinateurs sont paramétrables.

Un composant matériel est défini par un type, un nom, un fabricant (à sélectionner dans une liste déroulante renseignée depuis la configuration des intitulés ou directement depuis l'icône d'ajout apposée à la liste déroulante), un commentaire, ainsi que plusieurs champs spécifiques au type de composant. Par exemple, pour une carte mère, on pourra y renseigner le chipset.

La liste des différents types de composant est fixe :
![image](docs/image/listeComposants.png)

***Conseil :*** Il est possible de renseigner d'autres types de composants à l'intérieur du type `Autres composants`. Il n'est cependant pas possible d'ajouter d'autres types que ceux listés ici.

Une fois un type de composant sélectionné (`Carte mère, Processeur...`), on accède automatiquement à la liste des composants déjà enregistrés. 

Les différents onglets
----------------------

-   **"Niveaux d'escalade"
    Liste les niveaux descalade de ce SLA avec pour chacun les action et les critères définis.
    ![image](docs/image/niveauSla.png)


-   **[Onglet "Documents"](Les_différents_onglets/Onglet_Documents.md)**

-   **[Onglet "Tous"](Les_différents_onglets/Onglet_Tous.md)**
     Pour un élément, toutes les informations sont affichées sur une seule page.


Les différentes actions
-----------------------
-   **[Ajouter un composant](Les_différentes_actions/Créer_un_nouvel_objet.md)**
-   **[Voir un composant](Les_différentes_actions/Visualiser_un_objet.md)**
-   **[Modifier un composant](Les_différentes_actions/Modifier_un_objet.md)**
-   **[Supprimer un composant](Les_différentes_actions/Supprimer_un_objet.md)**
-   **Rechercher un composant**
    Depuis le moteur de recherche, on peut rechercher un composant sur tout ou partie des champs qui le définissent, à savoir le nom, le fabricant, le commentaire et tous les champs spécifiques au composant.
-   **Modifier les caractéristiques d'un composant uniquement pour l'élément lié**
    Depuis l'onglet *Eléments* du composant, cliquer sur le lien **Mettre à jour**.
    Plusieurs onglet sont alors proposés :
    - **Onglet "Elément - Lien nom du composant"** : liste les caractéristiques de ce composant.
    - ** :doc:`Onglet "Gestion" <../parc/onglets/gestion>` ** :     gérer les informations financières et administratives.
    - **[Onglet "Documents"](Les_différents_onglets/Onglet_Documents.md)**
    - **[Onglet "Historique"](Les_différents_onglets/Onglet_Historique.md)**
    - **[Onglet "Debug"](Les_différents_onglets/Onglet_Debug.md)** : uniquement si vous êtes connecté en mode Debug.
    - **[Onglet "Tous"](Les_différents_onglets/Onglet_Tous.md)** : pour un élément, toutes les informations sont affichées sur une seule page.

-------
**Sujet parent :** [Module Configuration](08_Module_Configuration/01_Module_Configuration.md "Module Configuration de GLPI")
