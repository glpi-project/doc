Gérer des profils de transfert inter-entités
============================================

Les transferts dans GLPI, caractéristiques et utilisation

Avec la notion d'entités vient la possibilité de définir des profils de
transfert pour les mutations d'éléments entre entités.

Cette fonctionnalité permet notamment de passer d'un GLPI mono entité à
un GLPI multi-entités en utilisant les transferts.

Comment faire un transfert :

1.  Utiliser un profil qui a le droit de faire des transferts (
    Administration \> Profils \> Administration ) ;
2.  Configurer les actions faites par le transfert ( Administration \>
    Règles --\> **Transfert**) ;
3.  S'assurer que le profil qui va effectuer le transfert a une
    visibilité sur l'entité cédante et sur l'entité prenante (le plus
    simple est d'utiliser un profil récursif depuis l'entité racine) ;
4.  Se positionner sur l'Entité racine (Voir Tous) ;
5.  Depuis la liste des machines, sélectionner l'entité à transférer ;
6.  Choisir **Transférer** et **Valider** ;
7.  Dans **Mode de transfert**, la liste des configurations de transfert
    créée en point 2 est utilisable ;
8.  Sélectionner l'entité dans laquelle sera transféré le matériel ;
9.  Cliquer sur **Transférer** ;
10. Vérifier dans la nouvelle entité que le matériel s'y trouve bien.

Avertissement : Le lieu et le groupe seront à adapter pour la nouvelle
entité.

**Sujet parent :** [Module
Administration](../glpi/administration.html "Le module Administration permet d'administrer les utilisateurs, groupes, entités, profils, règles et dictionnaires et offre des outils de maintenance de l'application (sauvegarde et restauration de base, vérification de nouvelle version disponible).")
