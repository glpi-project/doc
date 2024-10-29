# :ti-stack: Entités

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Qu'est ce qu'une entité ?

**Définition** : objet organisationnel permettant de cloisonner la vue et le périmètre d'action des utilisateurs.

Les entités servent à :

* Cloisonner la vision des utilisateurs qui se connectent sur GLPI.
* Montrer à chaque utilisateur seulement les choses qu'il doit voir.
* Gérer des délégations d'administration.

!!! Example "Exemples de découpage"

```
Par entité budgétaire : le matériel acheté dans chaque entité est bien séparé.
La plupart du temps pour chaque service informatique, une entité distincte.
**Important** : GLPI peut-être utilisé avec une seule entité (mono-entité).
```

!!! Example "Exemple de hiérarchie" ![Alt text](<.gitbook/assets/entity 1.png>){style="width: 40%"}

!!! Info "Important à savoir" GLPI ne limite pas la création d'entités. Plus on augmente le nombre d'entités :

```
- Plus le système devient complexe (règles, basculement, etc).
- Plus les requêtes sont longues à être exécutées.
```

Souvent les administrateurs veulent des entités pour répondre à un besoin alors que d'autres notions nécessitant moins de complexité sont là pour y répondre :

* **Groupe** : pour affecter du matériel/des tickets à un service, une équipe de personne.
* **Lieu** : pour déterminer la position géographique du matériel/de la personne.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Ou gère-t-on les entités ?

* la gestion se fait depuis le menu :ti-shield:**`Administration`** > :ti-stack:**`entités`** ;
* l'**Entité racine ne peut pas être supprimée**, simplement renommée.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Comment naviguer dans les entités ?

Cliquez sur le lien Entité racine (arborescence) :

![Alt text](<.gitbook/assets/entity 2.png>)

Un menu apparaît, il permet de restreindre la vision de GLPI :

* soit sur une entité en cliquant sur son nom.
* soit une l’arborescence sous cette entité en cliquant sur la double flèche verte à droite du nom de l’entité.

![Alt text](<.gitbook/assets/entity 3.png>){style="width: 45%"}

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Pourquoi ajouter des sous-entités

Dès qu'il y a au moins une entité, GLPI ajoute un champ "Sous-entités" sur certains objets Par l'utilisation de ce champ, on peut choisir si l'objet a une portée :

* **Locale** : il sera visible uniquement dans l'entité dans laquelle il se trouve.
* **Globale** : comme Locale avec visibilité dans ses sous-entités.

!!! Example "Exemples" **Fournisseurs**

```
- Un administrateur d'une entité créer ses fournisseurs (locale).
- Un administrateur GLPI créer les fournisseurs communs à toutes les entités (globale).

**Contrat et contacts**

- Un contrat est commun à toutes entités (globale).
- Un administrateur d'une entité crée ses propres contacts pour ce contrat (locale).
```

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Pourquoi les entités que j'ai créé ne sont pas visibles malgré mon profil super-admin en recursif ?

Lors de la création d'entité, il faut pensez à se déconnecter/reconnecter afin de pouvoir les voir dans la liste.

!!! Info "Pour les instances on-premise" - Si malgré la déconnexion, elles ne sont toujours pas visibles, rendez-vous dans le dossier GLPI de votre serveur et entrez la commande **`php bin/console cache:clear`**.

````
- Il est également possible, en dernier lieu, de vider le cache MYSQL avec les commandes :
```
mysql -u root -p
reset query cache;
```
````

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Comment personnaliser les informations d'une entité ?

Depuis :ti-shield-check:**`administration`** > :ti-stack:**`entités`**, rendez-vous dans l'onglet adresse afin de modifier les informations propres à votre entité.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Peut on personnaliser l'interface d'une entité ?

C'est possible, cette étape nécessite des connaissances en CSS. Depuis :ti-shield-check:**`administration`** > :ti-stack:**`entités`**, vous pouvez activer la personnalisation CSS. Insérez le code CSS nécessaire à la personnalisation de votre interface.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Comment modifier les adresses de courriel d'une entité ?

Si vous souhaitez que votre entité utilise une adresse d'envoi et/ou de réponse particulière, vous pouvez la modifier pour qu'elle n'utilise pas l'adresse par défaut. Depuis :ti-shield-check:**`administration`** > :ti-stack:**`entités`**, rendez-vous dans **`notifications`** et modifiez les informations souhaitées par les valeurs de votre choix.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} J'ai un gabarit de ticket par défaut mais je souhaite en utiliser un autre pour une entité en particulier, comment procéder ?

Depuis :ti-shield-check:**`administration`** > :ti-stack:**`entités`**, rendez-vous dans l'onglet **`assistance`**. Vous pourrez modifier les gabarits de ticket, de changement et de problème par ceux qui vous conviennent. Vous pourrez toujours revenir en arrière en cliquant sur :ti-corner-right-down:**`défaut`**

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Comment puis-je voir toutes les règles affectées à une entité ?

Depuis :ti-shield-check:**`administration`** > :ti-stack:**`entités`**, rendez-vous dans l'onglet **`règles`**. Vous pourrez voir toutes les règles qui s'appliquent sur l'entité.
