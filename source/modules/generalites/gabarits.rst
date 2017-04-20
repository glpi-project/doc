La gestion des gabarits dans GLPI
---------------------------------

Présentation
^^^^^^^^^^^^

Pour certains éléments de GLPI, il est possible de créer de nouveaux éléments (ordinateurs par exemple) depuis des gabarits préalablement définis. Un gabarit définit un masque de création, certaines valeurs peuvent être définies directement, ou calculées en fonction d'un masque (comme un numéro d'inventaire par exemple).

La gestion des gabarits se réalise via l'icône |btn_template| située dans la barre de menu.

Eléments de l'inventaire
^^^^^^^^^^^^^^^^^^^^^^^^

Pour les éléments de l'inventaire, le gabarit définit un élément standard en pré-remplissant certains champs qui seront réutilisés pour la création d'autres éléments. Cela permet de simplifier l'ajout d'un grand nombre d'éléments quasi identiques.

Par example, afin de préparer la réception de 20 imprimantes identiques dont seuls les numéros de série et d'inventaire changent :

* créer un gabarit correspondant à ce modèle d'imprimante,
* dans ce gabarit, remplir tous les champs invariables (constructeur, modèle, etc.),
* créer ensuite les 20 fiches d'imprimantes d'après ce gabarit.

Lors de la saisie de chaque imprimante le numéro de série et le numéro d'inventaire seront les seuls éléments à compléter.

Le système d'incrémentation
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Un système de remplissage et d'incrémentation automatique de certains champs (reconnaissables grâce au |autofill_mark|) est disponible. Ces champs (nom, numéro d'inventaire...) sont alors remplis automatiquement à la création si le champ correspondant dans le gabarit contient une chaîne de formatage de la forme ``<XXX####>``.

La chaîne de formatage doit impérativement débuter par le caractère ``<`` et se terminer par le caractère ``>``.

Au sein de la chaîne, vous pourrez utiliser les caractères suivants :

* ``X`` représente un caractère quelconque ;
* ``\g`` recherche du numéro parmi tous les champs identiques basés sur le même format ;
* ``#`` emplacement du numéro à incrémenter (nombre de chiffres égal au nombre de ``#``) ;
* ``\Y`` année sur 4 chiffres ;
* ``\y`` année sur 2 chiffres ;
* ``\m`` mois ;
* ``\d`` jour.


Par exemple, en poursuivant l'exemple cité plus haut, il est possible d'utiliser la fonctionnalité d'incrémentation pour créer automatiquement les numéros d'inventaire.

Ceux-ci sont composés par exemple de la forme : `ANNEE+MOIS+JOUR+code structure (555) + code opération (1234) + numéro à incrémenter`, il suffira de renseigner dans le gabarit pour le champ numéro d'inventaire la chaîne ``<\Y\m\d-555-1234-##\>``.

Chaque imprimante à sa création verra son numéro d'inventaire généré automatiquement et incrémenté de 1 à 20.

Gabarits de ticket
^^^^^^^^^^^^^^^^^^

Tout comme les objets d'inventaire, une notion de gabarit existe pour les tickets. Un gabarit permet de personnaliser l'interface de déclaration d'un ticket en fonction du type de ticket et de la catégorie.

Les comportements pouvant être modifiés sont :

-   la liste de champs devant être obligatoires pour l'ouverture d'un ticket ;
-   la liste des champs dont la valeur sera prédéfinie lors de l'affichage du formulaire ;
-   la liste des champs qui doivent être masqués.

***Remarque :** Pour le contrôle des champs obligatoires, seuls les champs disponibles dans l'interface de l'utilisateur sont contrôlés. Donc, si un champ est défini comme obligatoire mais qu'il n'est pas proposé dans
l'interface il ne générera pas d'erreur. A la saisie des champs obligatoires, sont affichées les interfaces dans lesquelles ils sont utilisés.*

Un gabarit est lié à l'entité dans laquelle il a été défini et peut être visible dans les sous-entités.

Des gabarits par défaut peuvent être définis pour les entités ou les profiles. 
> Pour les profiles ne sont associables que des gabarits de l'entité racine visibles de toutes les sous-entités. 

Des gabarits par défaut peuvent également être défini pour chaque catégorie de ticket (un pour chaque type, voir [Les catégories de tickets](04_Module_Assistance/04_Configuration_avancée.md "Les catégories de tickets")).

A la création du ticket, le gabarit utilisé est par ordre de priorité :

1.  Celui défini dans la catégorie définie pour le type défini
2.  Celui défini par défaut pour le profil courant de l'utilisateur
3.  Celui défini par défaut pour l'entité de création du ticket

> Important : Dans les 2 derniers cas, si le gabarit prédéfinit un nouveau couple type/catégorie, le premier cas est alors testé de nouveau avec ces nouvelles valeurs.

***Remarques :***
*- A la mise à jour du ticket, le même ordre de priorité est utilisé pour déterminer les champs obligatoires.*

*- Si un des paramètre (entité, profil, type ou catégorie) est modifié lors de la saisie du ticket, le gabarit utilisé est alors déterminé une nouvelle fois en fonction des nouvelles valeurs.*

*- Le gabarit sert à la création de **[tickets récurrents](04_Module_Assistance/11_Tickets_récurrents.md "création automatique de tickets").**

.. |btn_template| image:: images/templates_button.png
                :alt: de gestion des gabarits
.. |autofill_mark| image:: images/autofill_mark.png
                 :alt: marqueur d'incrémentation
