Configurer le critères d'unicité des champs
===========================================

Les critères d'unicité des champs se configurent depuis le menu
Configuration \> contrôles ;

Cette fonctionnalité permet de rendre l'ajout ou la mise à jour d'un
objet d'inventaire impossible si un autre possède déjà une valeur
identique. Ce mécanisme s'applique sur les ajouts manuels, mais aussi
sur l'import depuis une source externe comme depuis un outil
d'inventaire.

L'unicité est définie par un nom, un type d'objet sur lequel elle se
rapporte, ainsi qu'une liste de champs. Le champ sous-entité permet
d'indiquer si les critères d'unicité s'appliquent à tout GLPI ou
seulement à l'entité dans laquelle l'unicité est créée.

Il faut noter que la sélection de plusieurs champs vérifie l'unicité du
n-uplet et non chaque champ individuellement.

Pour un ordinateur, le critère d'unicité global est le numéro de série.
Si l'on tente d'enregistrer, quelque soit l'entité un autre ayant le
même numéro de série, l'insertion est refusée et un message d'erreur
indique l'élément déjà présent en base. Par contre, si un utilisateur
insère un ordinateur sans numéro de série, alors aucune vérification sur
l'unicité sera effectuée.

Un mécanisme permet d'ignorer certaines valeurs lors du calcul
d'unicité. Voir [Configurer les
intitulés](config_dropdown.html "Les intitulés se configurent depuis le menu Configuration > Intitulés")
.

Enfin, un onglet appelé *Duplique* liste l'ensemble des valeurs
correspondant aux critères qui sont actuellement en doublon dans la base
GLPI avec pour chacune d'elles un lien vers la fiche de l'objet.

**Sujet parent :** [Configurer les
contrôles](../glpi/config_controls.html "Les contrôles se configurent depuis le menu Configuration > Contrôles ;")
