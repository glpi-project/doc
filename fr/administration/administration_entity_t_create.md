Ajouter une entité
==================

GLPI disposant déjà d'une entité, l'Entité Racine, il faut considérer
cette dernière comme la plus haute autorité de votre hiérarchie, et
ensuite en décliner des entités filles.

Ajouter une entité

1.  Se connecter à GLPI ;
2.  Aller dans le menu Administration \> Entités ;
3.  Cliquer sur le "+" situé dans le menu horizontal ;
4.  Compléter les différents champs de la fiche vierge ;
    1.  Un nom ;
    2.  Une entité mère (Par défaut l'Entité racine) ;
    3.  Un commentaire qui sera affiché sur les icônes d'aide chaque
        fois que l'entité est renseignée.

5.  Valider ; Le nom de la nouvelle entité créée est affiché.
6.  Cliquer sur le nom de l'entité créée ; La fiche de l'entité est
    affichée.
7.  Renseigner des informations complémentaires :
    1.  l'onglet Adresse permet de renseigner les coordonnées postales
        et téléphoniques ;
    2.  l'onglet Informations avancées permet de lier l'entité à des
        informations provenant d'un annuaire LDAP, d'un domaine
        messagerie ou d'un TAG de l'agent d'inventaire ;
    3.  l'onglet Notifications permet de paramétrer les notifications de
        cette entité ainsi que les paramètres des options d'alerte ;
    4.  l'onglet Assistance permet de paramétrer toute la partie
        Helpdesk de l'entité (gabarit, calendrier, type pour les
        tickets, affectation automatique) ainsi que les configurations
        automatiques de cloture de ticket et de déclenchement de
        l'enquête de satisfaction ;
    5.  l'onglet Utilisateurs permet la gestion des utilisateurs qui
        sont listés par profil ;
    6.  l'onglet Règles permet de gérer les règles applicables à
        l'entité au niveau de l'habilitation des utilisateurs ou des
        tickets créés via courriel ;
    7.  les onglets Documents et Notes permettent de gérer les objets de
        chacun de ces types liés à l'entité.

La nouvelle entité est créée.

**Parent topic:** [Administrer les
entités](../glpi/administration_entity.html "Dans GLPI, administrer les entités peut se faire à partir du menu Administration > Entités.")
