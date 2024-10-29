# :ti-coins: Gestion financière et administrative

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Quels sont les éléments imapctés par la gestion financière ?

Tous les éléments du parc peuvent bénéficier de la gestion financière. Elle peut être activer par défaut depuis :ti-settings:**`Configuration`** > :ti-adjustments:**`Générale`** > **`Parc`** > **`Activer les informations financières et administratives par défaut`**

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Quelles types d'informations sont disponibles ?

Le gestion financière est découpée en 3 groupes :

??? Info "Cycle de vie du matériel"

```
- Date de commande
- Date d'achat
- Date de livraison
- Date de mise en service
- Date de dernier inventaire physique
- Date de réforme
```

??? Info "Informations financières et administratives"

```
- Fournisseur
- Budget
- Numéro de commande
- Numéro d'immobilisation
- Numéro de facture
- Bon de livraison
- Valeur
- Valeur extension garantie
- Valeur nette comptable
- Type d'amortissement
- Durée d'amortissement
- Coefficient d'amortissement
- TCO (valeur + montant des interventions)
- TCO mensuel
- Criticité business
- Commentaires
```

??? Info "Informations sur la garantie"

```
- Date de début de garantie
- Durée de garantie
- Informations sur la garantie
- Alertes sur les informations financières et administratives
```

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Comment sont calculer les informations administratives et financières ?

Les informations obligatoires à renseigner sont :

* **`Valeur`** : Valeur monétaire du bien
* **`Type d'amortissement`** : Dégressif ou Linéaire
* **`Durée d'amortissement`** (en années)
* **`Coefficient d'amortissement`**

**Pour une immobilisation linéaire :**

La Valeur Nette Comptable se calcule sur les champs suivants :

* La valeur du bien
* La durée d’amortissement
* Date de début de garantie OU la date de mise en service

!!! Warning "Attention" La date de mise en service prend le dessus sur la date de garantie de façon à ce que les deux valeurs sont remplies c’est la date de mise en service qui sera prise en compte.

**Pour les immobilisations dégressives :**

La Valeur Nette Comptable se calcule sur les champs suivants :

* La valeur du bien
* La durée d’amortissement
* Un coefficient d’amortissement supérieur à 1
* Date de début de garantie

#### :ti-help-circle-filled:{style="color: grey; font-size: 23px;" .middle} Qu'est ce que le TCO ?

Le TCO (Total Cost of Ownership) correspond au coût global de possession.

Le TCO est la somme de la valeur du bien et des différent tickets lié à cet élément dans lesquels un coût a été paramètré.

Le TCO mensuel est le TCO divisé par le nombre de mois écoulés depuis la date d'achat (nombre de mois d'utilisation).
