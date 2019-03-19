Calendrier
++++++++++

Les calendriers utilisés au sein de GLPI sont paramétrables par entité. Ils sont caractérisés par des périodes d'ouverture ainsi que des périodes de fermeture.

Ces calendriers sont utilisés dans les :term:`SLA` (voir Configurer les SLAs) et la [configuration des entités](07_Module_Administration/04_Entités.rst).

Calendrier
----------

Plages horaires
~~~~~~~~~~~~~~~

Correspond aux plages horaires d'ouverture de l'entité. Vous pouvez en ajouter autant que nécessaire par jour tant que ces plages ne se chevauchent pas.

Période de fermeture
~~~~~~~~~~~~~~~~~~~~

Liste les périodes de fermeture affectées à ce calendrier et permet d'en ajouter une nouvelle; voir :ref:`lca configuration des périodes de fermeture <conf-close-periods>`.

.. include:: ../../onglets/all.rst

.. _conf-close-periods:

Périodes de fermeture
---------------------

La liste des périodes de fermeture est une liste de valeurs à plat valable. Elle peut être déléguée par entité.

Une période de fermeture comprend un nom, une période et si cette fermeture est récurrente ou non.

Concernant le champ Récurrent, si celui-ci est à Oui cela signifie que la période indiquée est valable tout le temps. Dans ce cas GLPI ne se soucierait pas de l'année indiquée.

Très utile pour indiquer les jours fériés revenant chaque année (Noël, Victoire de 1945, 1er mai...) ou les période de fermeture de la société (fermée tous les ans du 1er au 31 août) et surtout cela évite de ressaisir chaque année les mêmes dates.
