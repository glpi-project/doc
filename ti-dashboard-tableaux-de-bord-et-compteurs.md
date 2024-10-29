# :ti-dashboard: Tableaux de bord et compteurs

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Comment créer un tableau de bord ?

Il est possible de créer un tableau de bord de zéro ou de dupliquer un tableau de bord et de le modifier par la suite. Une procédure est disponible{:target="\_blank"} afin de vous accompagner dans la création des tableaux de bord.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Est-il possible de modifier le formatage des nombres dans les tableaux de bord (1000 au lieu de 1K) ?

Cela n'est pas possible. Ce formatage est nécessaire pour éviter d'avoir de trop gros nombres sur les tableaux de bords (problématique de place). Il est toutefois possible de connaître la valeur "réelle" en survolant le nombre.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Pourquoi les compteurs n'apparaissent pas sur ma page d'accueil ?

Si vos compteurs ne sont pas visibles, il est possible que cela vienne de votre entité par défaut. Si celle-ci n'est pas configurée, l'entité root est prise par défaut. Si vous n'avez pas accès à celle-ci depuis votre profil, les compteurs ne seront alors pas visibles. Depuis :ti-shield-check: **`administration`** > :ti-user: **`utilisateurs`**, paramétrez **`l'entité par défaut`** de l'utilisateur concerné.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Comment partager un tableau de bord ?

Selon les autorisations de votre profil, vous pouvez partager un tableau de bord. Il suffit de cliquer sur l'icône :ti-share:. Vous pouvez ensuite le partager à une entité, un groupe, un utilisateur ou un profil.

Il est possible de le partager via un lien direct (lien public pour faire de la supervision par exemple) ou via un iframe pour l'intégration du tableau de bord dans un document type HTML.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} A quoi servent les filtres ?

Les filtres du tableau de bord permettent d'afficher les informations précises d'un objet GLPI.

!!! example "Exemple" Votre tableau de bord affiche tous les tickets attribués, mais vous ne souhaitez voir que les tickets affectés au groupe infrastructure.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Comment ajouter un filtre à mon tableau de bord ?

Lorsque vous éditez votre tableau de bord, une option apparait :ti-plus:**`ajouter un filtre`**. Cliquez sur cette option et sélectionnez le filtre qui vous convient

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Peut-on ajouter des tableaux de bord dans d'autres pages Web ?

Oui. Grâce au :ti-share:**`partage`** des tableaux de bord, vous pouvez copier l'iframe qui pourra être inséré dans d'autres pages web.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Comment rendre un tableau de bord privé ?

Afin que les autres techniciens ou administrateurs ne puissent pas voir votre tableau de bord, vous pouvez le rendre privé grâce à l'icône :ti-share:. Cela ne vous empêche pas de le partager malgré tout, aux autres profils, entités, etc.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Peut-on afficher les tableaux de bord en plein écran ?

Oui. Grâce à l'icône :ti-maximize: vous pouvez afficher votre tableau de bord en pleine page.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Peut-on modifier les couleurs des graphiques ?

Non. Ces valeurs sont définies par défaut et ne sont pas modifiables.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Peut-on modifier les couleurs des tuiles ?

Oui. Lorsque vous ajoutez une nouvelle tuile, le champ **`couleur de l'arrière plan`** vous permet de le modifier de la couleur de votre choix

![Alt text](<.gitbook/assets/Dashboard 1.png>){style="width: 50%"}

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Peut-on cloner un tableau de bord ?

Oui. Grâce à l'icône :ti-copy:, vous pouvez cloner un tableau de bord pour ensuite le modifier. Celui-ci portera le même nom avec la mention **`copie`**, qu'il vous sera possible de modifier par la suite.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Qu'est-ce qu'un mini-dashboard ?

Les mini-dashboard sont des tableaux de bord réduits présents dans l'entête d'un objet GLPI :

![Alt text](<.gitbook/assets/Dashboard 2.png>)

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Peut-on activer/désactiver les mini-dashboard ?

Oui. Vous pouvez les activer/désactiver depuis :ti-settings:**`configuration`** > :ti-adjustments:**`générale`**, onglet **`valeurs par défaut`**. Dans l'encart **`tableaux de bord`**. Séléctionnez l'option qui vous convient dans **`défaut pour les tickets (mini tableau de bord)`**.

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Peut-on activer/désactiver les mini-dashboard pour une personne en particulier ?

Oui. Depuis la fiche de l'utilisateur en question, rendez-vous dans **`configuration`** > **`tableaux de bord`** > **`défaut pour les tickets (mini tableau de bord)`**, activez ou désactivez les mini-dashboard.
