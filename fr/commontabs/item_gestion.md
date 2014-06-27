Gérer les informations financières et administratives
=====================================================

Éléments de gestion pour les éléments d'inventaire

Il est possible d'activer les informations financières sur tout type d'objet de l'inventaire. Soit en utilisant le lien dans l'onglet **Gestion** du détail du matériel, soit grâce au système de modification
massive, en modifiant par exemple la date d'achat pour plusieurs éléments.

Les informations financières sont composées des éléments suivants :

***Informations financières et administratives :***

-   **Fournisseur** : tiers qui a vendu le matériel. Voir [Gérer les fournisseurs](management_supplier.html "Les fournisseurs sont gérés depuis le menu Gestion > Fournisseurs") ;
-   **Numéro de commande** : numéro de la commande du matériel ;
-   **Numéro d'immobilisation** ;
-   **Numéro de facture** : numéro de la facture du matériel ;
-   **Bon de livraison** : bon de livraison du matériel ;
-   **Valeur** : coût du matériel ;
-   **Valeur extension garantie** : coût de l'extension de garantie, mais de préférence utiliser les contrats ;
-   **Valeur nette comptable** : c'est le calcul automatique de la valeur brute d'un matériel minorée du montant des amortissements ;
-   **Type d'amortissement** : choix du type d'amortissement entre linéaire et dégressif ;
-   **Durée d'amortissement** : durée d'amortissement exprimée en années ;
-   **Coefficient d'amortissement** : coefficient s'appliquant sur un type d'amortissement linéaire afin d'obtenir les valeurs du type dégressif. Il est donc utilisé uniquement si le type d'amortissement est dégressif ;
-   **TCO (valeur+montant des interventions)** : le coût total de possession qui intègre tous les éléments constitutifs d'un produit facturé ;
-   **Budget** : budget sur lequel ce matériel a été acheté (voir la gestion des budgets) ;
-   **Date de commande** : date à laquelle le matériel a été commandé ;
-   **Date d'achat** : date à laquelle le matériel a été acheté ;
-   **Date de mise en livraison** : date à laquelle le matériel a été livré ;
-   **Date de mise en service** : date à laquelle le matériel a été mis en service ;
-   **Date de dernier inventaire physique** : date du dernier inventaire physique du matériel ;
-   **Commentaires** ;
-   **TCO mensuel** : TCO divisé par le nombre de mois entre la date d'aujourd'hui et la date d'achat du matériel ;

***Informations sur la garantie :***

-   **Date de début de garantie** : date à laquelle le garantie du matériel démarre ;
-   **Informations sur la garantie** : texte qualifiant la garantie ;
-   **Durée de garantie** : durée de la garantie exprimée en mois ;
    Si une date de début de garantie ainsi qu'une durée de garantie sont positionnées, une information "Expirant le" apparaitra avec une date en rouge si celle-ci est antérieure à la date du jour ; 
-   **Alertes sur les informations financières et administratives** : pour le déclenchement des notifications.


L'ensemble des dates définies peut être géré automatiquement en fonction des changements de statut des matériels. Certaines dates peuvent également être copiées à partir d'une autre date. L'ensemble de cette configuration s'effectue par [entité](administration_entity_delegation.dita).

***Conseils :*** 

- GLPI permet de configurer une notification sur l'expiration de la garantie du matériel. Ceci est configurable par entité dans le menu **Configuration \> Notifications** pour définir les modèles et destinataires utilisés et dans le menu **Configuration \> Entité** pour activer ou non cette fonctionnalité, définir les valeurs par défaut et une anticipation de l'envoi de la notification si besoin.

- GLPI peut réaliser un calcul de valeur nette comptable simple sur la base d'un amortissement linéaire ou dégressif. Il convient, pour cela, de renseigner un certain nombre d'informations (valeur, date
d'achat ou de mise en service, durée d'amortissement, coefficient d'amortissement) et de renseigner également dans **Configuration \>Générale** la date de l'exercice comptable. Pour plus d'informations sur les notions d'amortissements, vous pouvez vous référer à cet article :
[http://fr.wikipedia.org/wiki/Amortissement\_comptable\#Modes\_d.E2.80.99amortissement\_accept.C3.A9s\_comptablement](http://fr.wikipedia.org/wiki/Amortissement_comptable#Modes_d.E2.80.99amortissement_accept.C3.A9s_comptablement).

- L'affichage des informations financières pour chaque type de matériel dépend du profil de l'utilisateur connecté. Il peut donc varier selon le profil.

------
**Sujet parent :** [Gérer les ordinateurs](index.php?fr/03_Module_Parc/04_Gérer_les_ordinateurs/01_Gérer_les_ordinateurs.md "Les ordinateurs se gèrent depuis le menu Parc > Ordinateurs")

**Sujet parent :** [Gérer les moniteurs](index.php?fr/03_Module_Parc/05_Gérer_les_moniteurs.md "Les moniteurs se gèrent depuis le menu Parc > Moniteurs")

**Sujet parent :** [Gérer les logiciels](index.php?fr/03_Module_Parc/06_Gérer_les_logiciels.md "Les logiciels se gèrent depuis le menu Parc > Logiciel")

**Sujet parent :** [Gérer les matériels réseaux](index.php?fr/03_Module_Parc/07_Gérer_les_matériels_réseaux.md "Les matériels réseaux se gèrent depuis le menu Parc > Réseaux")

**Sujet parent :** [Gérer les périphériques](index.php?fr/03_Module_Parc/08_Gérer_les_périphériques.md "Les périphériques se gèrent depuis le menu Parc > Périphériques")

**Sujet parent :** [Gérer les imprimantes](index.php?fr/03_Module_Parc/09_Gérer_les_imprimantes.md "Les imprimantes se gèrent depuis le menu Parc > Imprimantes")

**Sujet parent :** [Gérer les
cartouches](../glpi/inventory_cartridge.html "Les cartouches dans GLPI, caractéristiques et utilisation")

**Sujet parent :** [Gérer les
consommables](../glpi/inventory_consumable.html "Les consommables se gèrent depuis le menu Parc > Consommables")

**Sujet parent :** [Gérer les
téléphones](../glpi/inventory_phone.html "Les téléphones se gèrent depuis le menu Parc > Téléphones ;")
