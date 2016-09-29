Transférer un objet d'une entité à une autre
============================================

Avec la notion d'entités vient la possibilité de définir des profils de transfert pour les mutations d'éléments entre entités.

Cette fonctionnalité permet notamment de passer d'un GLPI mono entité à un GLPI multi-entités en utilisant les transferts.

Comment faire un transfert :

1.  Utiliser un profil qui a le droit de faire des transferts (Administration > Profils > Administration --> Droit le Lecture sur Transférer) ;

2.  Configurer les actions faites par le transfert ([Administration > Règles --> **Transférer](index.php?fr/07_Module_Administration/05_Règles/01_Gérer_les_règles.md)) ;

3.  S'assurer que le profil qui va effectuer le transfert a une visibilité sur l'entité cédante et sur l'entité prenante (le plus simple est d'utiliser un profil récursif depuis l'entité racine) ;

4.  Se positionner sur l'Entité racine (Voir Tous) ;

5.  Depuis la liste des objets, sélectionner l'élément à transférer ;

6.  Choisir **Ajouter à la liste de transfert** et **Valider** ;

7.  Dans **Mode de transfert**, choisir un profil de configuration du transfert (créé en point 2) ;

8.  Sélectionner l'entité dans laquelle sera transféré l'élément ;

9.  Cliquer sur **Transférer** ;

10. Vérifier dans la nouvelle entité que le matériel s'y trouve bien.

***Remarque :** si un élément lié n'existe pas dans la nouvelle entité, il sera automatiquement créé si le profil de transfert demande de le conserver.
Exemple : transfert d'un ordinateur avec un fournisseur défini dans les informations financières. Si ce fournisseur n'existe que dans l'entité cédante, il sera créé dans l'entité prenante.
Par contre un fournisseur défini dans l'entité racine en récursif ne sera pas recréé.*

>Avertissement : Le lieu et le groupe seront à adapter pour la nouvelle entité.

---------
------
**Sujet parent :** [Gérer les ordinateurs](index.php?fr/03_Module_Parc/02_Ordinateurs.md "Les ordinateurs se gèrent depuis le menu Parc > Ordinateurs")

**Sujet parent :** [Gérer les moniteurs](index.php?fr/03_Module_Parc/03_Moniteurs.md "Les moniteurs se gèrent depuis le menu Parc > Moniteurs")

**Sujet parent :** [Gérer les logiciels](index.php?fr/03_Module_Parc/04_Logiciels.md "Les logiciels se gèrent depuis le menu Parc > Logiciels")

**Sujet parent :** [Gérer les matériels réseaux](index.php?fr/03_Module_Parc/05_Matériels_réseaux.md "Les matériels réseaux se gèrent depuis le menu Parc > Matériels réseaux")

**Sujet parent :** [Gérer les périphériques](index.php?fr/03_Module_Parc/06_Périphériques.md "Les périphériques se gèrent depuis le menu Parc > Périphériques")

**Sujet parent :** [Gérer les imprimantes](index.php?fr/03_Module_Parc/007_Imprimantes.md "Les imprimantes se gèrent depuis le menu Parc > Imprimantes")

**Sujet parent :** [Gérer les cartouches](index.php?fr/03_Module_Parc/08_Cartouches.md "Les cartouches se gèrent depuis le menu Parc > Cartouches")

**Sujet parent :** [Gérer les consommables](index.php?fr/03_Module_Parc/09_Consommables.md "Les consommables se gèrent depuis le menu Parc > Consommables")

**Sujet parent :** [Gérer les téléphones](index.php?fr/03_Module_Parc/10_Téléphones.md "Les téléphones se gèrent depuis le menu Parc > Téléphones")

**Sujet parent :** [Gérer les tickets](index.php?fr/04_Module_Assistance/06_Tickets/03_Gérer_les_tickets.md "Les tickets se gèrent depuis le menu Assistance > Tickets")

**Sujet parent :** [Gérer les problèmes](index.php?fr/04_Module_Assistance/08_Problèmes.md "Les problèmes se gèrent depuis le menu Assistance > Problèmes")

**Sujet parent :** [Gérer les fournisseurs](index.php?fr/05_Module_Gestion/03_Fournisseurs.md "Les fournisseurs se gèrent depuis le menu Gestion > Fournisseurs")

**Sujet parent :** [Gérer les contacts](index.php?fr/05_Module_Gestion/04_Contacts.md "Les contacts se gèrent depuis le menu Gestion > Contacts")

**Sujet parent :** [Gérer les contrats](index.php?fr/05_Module_Gestion/05_Contrats.md "Les contrats se gèrent depuis le menu Gestion > Contrats")

**Sujet parent :** [Gérer les documents](index.php?fr/05_Module_Gestion/06_Documents.md "Les documents se gèrent depuis le menu Gestion > Documents")

**Sujet parent :** [Gérer les groupes](index.php?fr/07_Module_Administration/03_Groupe.md "Les groupes se gèrent depuis le menu Administration > Groupes")