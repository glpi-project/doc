Gestion
~~~~~~~

Gestion des informations financières et administratives, ces informations sont visibles dans l'onglet `Gestion` sur la fiche de l'ordinateur.

.. image:: /modules/onglets/images/gestion.png
   :alt: Écran de gestion
   :align: center

Par defaut cette gestion est désactivé. Il est possible d'activer les informations financières sur tout type d'objet de l'inventaire en utilisant le lien dans l'onglet `Gestion` du détail du matériel

.. image:: /modules/onglets/images/gestion_enable.png
   :alt: activer la gestion
   :align: center


.. note::
   Il est possible d'activer en masse les informations administratives et financières depuis les actions massives sur les éléments (ordinateur, maoniteur etc ...)

.. note::
   Il est possible d'activer les informations administratives et financières dès la création d'un élément
   Voir l'option ``Activer les informations administratives et financières par défaut`` Dans Configuration > Générale > onglet Parc.

Les informations financières sont composées des éléments suivants :

Cycle de vie
^^^^^^^^^^^^

* Date de commande
* Date d'achat
* Date de livraison
* Date de mise en oeuvre
* Date du dernier inventaire physique
* Date de réforme

Informations financières et administratives
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* Fournisseur : tiers qui a vendu le matériel. Voir :doc:`Gérer les fournisseurs <../gestion/fournisseurs>`. Les fournisseurs sont gérés depuis le menu Gestion > Fournisseurs ;
* Numéro de commande : numéro de la commande du matériel ;
* Numéro d'immobilisation ;
* Numéro de facture : numéro de la facture du matériel ;
* Bon de livraison : bon de livraison du matériel ;
* Valeur : coût du matériel ;
* Valeur extension garantie : coût de l'extension de garantie, mais de préférence utiliser les contrats ;
* Valeur nette comptable : c'est le calcul automatique de la valeur brute d'un matériel minorée du montant des amortissements ;
* Type d'amortissement : choix du type d'amortissement entre linéaire et dégressif ;
* Durée d'amortissement : durée d'amortissement exprimée en années ;
* Coefficient d'amortissement : coefficient s'appliquant sur un type d'amortissement linéaire afin d'obtenir les valeurs du type dégressif. Il est donc utilisé uniquement si le type d'amortissement est dégressif ;
* TCO (valeur+montant des interventions) : le coût total de possession qui intègre tous les éléments constitutifs d'un produit facturé ;
* Budget : budget sur lequel ce matériel a été acheté  Voir :doc:`Gérer le budget <../gestion/budgets>`
* Date de commande : date à laquelle le matériel a été commandé ;
* Date d'achat : date à laquelle le matériel a été acheté ;
* Date de mise en livraison : date à laquelle le matériel a été livré ;
* Date de mise en service : date à laquelle le matériel a été mis en service ;
* Date de dernier inventaire physique : date du dernier inventaire physique du matériel ;
* Commentaires ;
* TCO mensuel : TCO divisé par le nombre de mois entre la date d'aujourd'hui et la date d'achat du matériel ;

Informations sur la garantie
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* Date de début de garantie : date à laquelle le garantie du matériel démarre ;
* Informations sur la garantie : texte qualifiant la garantie ;
* Durée de garantie : durée de la garantie exprimée en mois ;
   Si une date de début de garantie ainsi qu'une durée de garantie sont positionnées, une information "Expirant le" apparaitra avec une date en rouge si celle-ci est antérieure à la date du jour ;

L'ensemble des dates définies peut être géré automatiquement en fonction des changements de statut des matériels. Certaines dates peuvent également être copiées à partir d'une autre date. L'ensemble de cette configuration s'effectue par [entité](administration_entity_delegation.dita).

Conseils
^^^^^^^^

GLPI permet de configurer une notification sur l'expiration de la garantie du matériel. Ceci est configurable par entité dans la :ref:`gestion des notifications <gestion-notifications>` pour définir les modèles et destinataires utilisés et dans :ref:`l'administration des entités <administration-entites>` pour activer ou non cette fonctionnalité, définir les valeurs par défaut et anticiper l'envoi de la notification si besoin.

GLPI peut réaliser un calcul de valeur nette comptable simple sur la base d'un amortissement linéaire ou dégressif. Il convient, pour cela, de renseigner un certain nombre d'informations (valeur, date
d'achat ou de mise en service, durée d'amortissement, coefficient d'amortissement) et de renseigner également dans :ref:`la configuration générale <configuration-generale>` la date de l'exercice comptable. Pour plus d'informations sur les notions d'amortissements, vous pouvez vous référer à `l'article Wikipedia concernant les amortissements comptables <https://fr.wikipedia.org/wiki/Amortissement_comptable#Modes_d.E2.80.99amortissement_accept.C3.A9s_comptablement>`_.

L'affichage des informations financières pour chaque type de matériel dépend du profil de l'utilisateur connecté. Il peut donc varier selon le profil.
