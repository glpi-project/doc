Utilisation du cache
--------------------

.. versionadded:: 9.2

.. versionchanged:: 9.2.1

Si l'un des systèmes de cache `APCu` ou `WinCache` est présent sur le serveur, il sera automatiquement utilisé par GLPI. Le système se base sur `ZendCache <https://zendframework.github.io/zend-cache/>`_

Le cache permet d'améliorer les performances sur certaines opérations relativement lourdes, telles que le chargement des traductions, ou le calcul des arbres des entités.

On distingue deux caches distincts dans GLPI :

* le cache base de données,
* le cache traduction.

Cette distinction permet d'éviter de stocker le cache des traductions sur un réseau, cela pourrait produire un trop grand nombre de requêtes sur le réseau et avoir au final un impact négatif.

A l'inverse, le cache de la base de données devrait être sur le réseau en cas de frontaux multiples.

Afin de vous permettre d'affiner les réglages, ou d'utiliser un autre système de cache, une solution manuelle est proposée. Pour en profiter, ajouter dans la table ``glpi_configs`` une clé ``cache_db`` et/ou ``cache_trans`` pour le contexte ``core`` et adapter la valeur en fonction de ce que vous souhaitez.

.. note::

   Si le but est de désactiver l'un ou l'autre de ces caches, créer la clé dans la table, mais laisser la valeur vide.

.. code-block:: json

   {"adapter":"apcu"}

.. code-block:: json

   {"adapter":"redis","options":{"server":{"host":"127.0.0.1"}}}

Se référer à la méthode `Config::getCache() <https://forge.glpi-project.org/apidoc/source-class-Config.html>`_ et à la `documentation de ZendCache <https://zendframework.github.io/zend-cache/storage/adapter/>`_ pour davantage d'informations.

OPCache
-------

OPCache stocke des fichiers PHP pré-compilés en mémoire, et permet ainsi d'améliorer les performances. La seule chose à faire, c'est de l'installer sur votre instance de PHP et de le configurer (la configuration par défaut devrait convenir à la grande majorité des cas).

Toutefois, sur des instances qui pourraient être fortement sollicitées, il peut être utile de ne pas inclures les fichiers de polices pour les PDF dans ce cache. En effet, elles y prennent énormément de place, et le gain est relativement minime.

Afin d'exclure les fichiers de police du cache, il suffit de renseigner leur chemin complet dans un fichier de liste noire pour opcache. Le chemin de ce fichier est déterminé par la diective de configuration ``opcache.blacklist_filename`` (``/etc/php.d/opcache-glpi.blacklist`` par exemple sous Fedora). Si votre instance de GLPI se situe dans le dossier ``/var/www/``, le chemin à exclure sera ``/var/www/html/glpi/glpi-9.2.1/vendor/tecnickcom/tcpdf/fonts/``.

Bien entendu, l'emplacement du fichier de configuration et le chemin vers les polices est à adapter en fonction de votre système et de votre type d'installation.

Les RPMS fournis pour Fedora (ou par le dépôt Remi) offrent déjà cette fonctionnalité par défaut, vous n'aurez donc rien à faire :)
