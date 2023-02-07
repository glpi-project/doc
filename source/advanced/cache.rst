Using the cache
--------------------

Information on cache usage is available in Configuration / General / System).

.. versionadded:: 9.2

.. versionchanged:: 9.2.1

If one of the APCu or WinCache cache systems is present on the server, it will be automatically used by GLPI. The system is based on Symfony Cache.

The cache makes it possible to improve performance on certain relatively heavy operations, such as loading translations, or calculating entity trees.

There are two distinct caches in GLPI:

* The database cache
* The translations cache

This distinction makes it possible to avoid storing the translation cache on a network, which could produce too many requests on the network and ultimately have a negative impact.

Conversely, the database cache should be on the network in case of multiple front-ends.

In order to allow you to refine the settings, or to use another cache system, a manual solution is proposed. To take advantage of it, add to the ``glpi_configs`` table a ``cache_db`` and/or ``cache_trans`` key for the ``core`` context and adapt the value according to what you want.

.. note::

   If the goal is to disable either of these caches, create the key in the table, but leave the value blank.

.. code-block:: json

   {"adapter":"apcu"}

.. code-block:: json

   {"adapter":"redis","options":{"server":{"host":"127.0.0.1"}}}

Refer to the ``Config::getCache()`` method and `Symfony Cache documentation <https://symfony.com/doc/current/components/cache.html>`_ for more information.

.. warning::

   If you install several instances of GLPI on the same server, the cache namespace must be unique per instance, which was not the case in GLPI before version 9.2.4.

   If you have specified your own namespace in the configuration, make sure that it is unique on each instance!

   If your version of GLPI is earlier than 9.2.4, you will need to add the namespace in the cache configuration of each of your instances.

OPCache
-------

OPCache stores pre-compiled PHP files in memory, which improves performance. The only thing to do is to install it on your PHP instance and configure it (the default configuration should be fine in the vast majority of cases).

However, on instances that could be heavily used, it may be useful not to include font files for PDFs in this cache. Indeed, they take up a lot of space, and the gain is relatively minimal.

In order to exclude the font files from the cache, all you have to do is enter their full path in a blacklist file for opcache. The path to this file is determined by the configuration diective ``opcache.blacklist_filename`` ( ``/etc/php.d/opcache-glpi.blacklist`` for example under Fedora). If your GLPI instance is in the folder ``/var/www/``, the path to exclude will be ``/var/www/html/glpi/glpi-9.2.1/vendor/tecnickcom/tcpdf/fonts/``.

Of course, the location of the configuration file and the path to the fonts should be adapted according to your system and your type of installation.
