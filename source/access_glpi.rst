:orphan:

Administrer les contrôles d'accès
=================================

Cette partie décrit comment administrer le système de contrôle d'accès
qui permet à chaque utilisateur d'accéder à un contexte d'utilisation
spécifique.

Dans GLPI chaque utilisateur n'a pas accès à la même interface ni aux
mêmes fonctionnalités. Pour chaque utilisateur, un contexte
d'utilisation spécifique est déterminé, qui permet de lui donner accès
aux fonctionnalités et aux éléments d'informations auxquels il est
habilité à accéder. L'accès aux informations d'identités sur
l'utilisateur permet de déterminer ses habilitations.

Dans un premier temps, il faut lier GLPI à un système de gestion
d'identité. GLPI peut gérer localement l'authentification et les
informations personnelles des utilisateurs. Cependant, le système
d'information comporte bien souvent un système de gestion d'identité
(annuaire), et il est préférable de déléguer l'authentification à ce
dernier et d'utiliser les informations contenues dans ce système
externe. Cette question est traitée dans le chapitre `Configurer la
gestion d'identité <config_auth.html>`__.

La mise en œuvre journalière du lien avec le ou les référentiels de
gestion d'identité conduit à la création et la suppression, la
synchronisation, l'activation et la désactivation des comptes
utilisateurs et de leurs données personnelles associées. Cette question
est traitée dans le chapitre `Administrer les
utilisateurs <administration_user.html>`__.

Les données personnelles des utilisateurs permettent de les associer à
des groupes, des entités et des profils, qui sont les moyens de
déterminer les contextes d'utilisation.

Les groupes permettent de rassembler les utilisateurs en fonction de
similarités de compétences ou d'unités organisationnelles. Cette
question est traitée dans le chapitre `Administrer les
groupes <administration_group.html>`__.

Les entités permettent de segmenter le parc et de rassembler les
utilisateurs en services isolés les uns des autres. Cette question est
traitée dans le chapitre `Administrer les
entités <administration_entity.html>`__.

Les profils décrivent les autorisations d'accès qui doivent être
accordées à leurs membres. Cette question est traitée dans le chapitre
`Administrer les profils
d'utilisateurs <administration_profile.html>`__.

En dernier lieu, il faut administrer les habilitations : déterminer les
contextes d'utilisation et les attribuer aux utilisateurs. Ces outils
sont utilisés par les règles d'affectations d'habilitations pour
déterminer de manière dynamique les habilitations des utilisateurs.
Cette question est traitée dans le chapitre `Attribuer des habilitations
à un utilisateur <administration_rule_right.html>`__.

-  **`Configurer la gestion d'identité <../glpi/config_auth.html>`__**
   La manière dont GLPI gère l'authentification et les informations
   personnelles des utilisateurs se configure depuis le menu
   Configuration > Authentification .
-  **`Administrer les
   utilisateurs <../glpi/administration_user.html>`__**
   Dans GLPI, administrer les utilisateurs peut se faire à partir du
   menu Administration > Utilisateurs .
-  **`Administrer les groupes <../glpi/administration_group.html>`__**
   Dans GLPI, administrer les groupes peut se faire à partir du menu
   Administration > Groupes .
-  **`Administrer les entités <../glpi/administration_entity.html>`__**
   Dans GLPI, administrer les entités peut se faire à partir du menu
   Administration > Entités .
-  **`Administrer les profils
   d'utilisateurs <../glpi/administration_profile.html>`__**
   Dans GLPI, administrer les profils peut se faire à partir du menu
   Administration > Profils .
-  **`Attribuer des habilitations à un
   utilisateur <../glpi/administration_rule_right.html>`__**
   GLPI dispose d'un moteur d'habilitations dynamiques qui se base sur
   des sources externes d'authentification. Il est accessible depuis le
   menu Administration > Règles > Règles d'affectation d'entité et de
   droits .
