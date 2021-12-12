GLPI command-line interface
===========================

GLPI includes a CLI tool to help you to manage your GLPI instance.
This interface is provided by the `bin/console` script which can be run from the root of your GLPI directory.

glpi:assets:cleansoftware
-------------------------

Aliases: `assets:cleansoftware`

Description
***********

Remove software versions with no installation and software with no version


glpi:build:compile_scss
-----------------------

Aliases: `build:compile_scss`

Description
***********

Compile SCSS file.


glpi:cache:clear
----------------

Aliases: `cache:clear, glpi:system:clear_cache, system:clear_cache`

Description
***********

Clear GLPI cache.


glpi:cache:clear
----------------

Aliases: `cache:clear, glpi:system:clear_cache, system:clear_cache`

Description
***********

Clear GLPI cache.


glpi:cache:configure
--------------------

Aliases: `cache:configure`

Description
***********

Define cache configuration

Help
****

Valid cache systems are: Memcached, Redis (TCP), Redis (TLS).

Memcached DSN format: memcached://[user:pass@][ip|host|socket[:port]][?weight=int]
Redis (TCP) DSN format: redis://[pass@][ip|host|socket[:port]][/db-index]
Redis (TLS) DSN format: rediss://[pass@][ip|host|socket[:port]][/db-index]

Cache namespace can be use to ensure either separation or sharing of multiple GLPI instances data on same cache system.

Usage
*****

 - glpi:cache:configure --use-default
 - glpi:cache:configure --dsn=memcached://cache1.glpi-project.org --dsn=memcached://cache2.glpi-project.org
 - glpi:cache:configure --dsn=redis://redis.glpi-project.org:6379/glpi

glpi:cache:debug
----------------

Aliases: `cache:debug`

Description
***********

Debug GLPI cache.


glpi:cache:set_namespace_prefix
-------------------------------

Aliases: `cache:set_namespace_prefix`

Description
***********

Define cache namespace prefix


glpi:config:set
---------------

Aliases: `config:set`

Description
***********

Set configuration value


glpi:database:check_schema_integrity
------------------------------------

Aliases: `db:check_schema_integrity, glpi:database:check, db:check`

Description
***********

Check for schema differences between current database and installation file.


glpi:database:check_schema_integrity
------------------------------------

Aliases: `db:check_schema_integrity, glpi:database:check, db:check`

Description
***********

Check for schema differences between current database and installation file.


glpi:database:configure
-----------------------

Aliases: `db:configure`

Description
***********

Define database configuration


glpi:database:enable_timezones
------------------------------

Aliases: `db:enable_timezones`

Description
***********

Enable timezones usage.


glpi:database:install
---------------------

Aliases: `db:install`

Description
***********

Install database schema


glpi:database:update
--------------------

Aliases: `db:update`

Description
***********

Update database schema to new version


glpi:ldap:synchronize_users
---------------------------

Aliases: `ldap:sync`

Description
***********

Synchronize users against LDAP server information


glpi:maintenance:disable
------------------------

Aliases: `maintenance:disable`

Description
***********

Disable maintenance mode


glpi:maintenance:enable
-----------------------

Aliases: `maintenance:enable`

Description
***********

Enable maintenance mode


glpi:migration:appliances_plugin_to_core
----------------------------------------

Aliases: `None`

Description
***********

Migrate Appliances plugin data into GLPI core tables


glpi:migration:build_missing_timestamps
---------------------------------------

Aliases: `None`

Description
***********

Set missing `date_creation` and `date_mod` values using log entries.


glpi:migration:domains_plugin_to_core
-------------------------------------

Aliases: `None`

Description
***********

Migrate Domains plugin data into GLPI core tables


glpi:migration:dynamic_row_format
---------------------------------

Aliases: `None`

Description
***********

Convert database tables to "Dynamic" row format (required for "utf8mb4" character support).


glpi:migration:myisam_to_innodb
-------------------------------

Aliases: `None`

Description
***********

Migrate MyISAM tables to InnoDB


glpi:migration:racks_plugin_to_core
-----------------------------------

Aliases: `None`

Description
***********

Migrate Racks plugin data into GLPI core tables


glpi:migration:timestamps
-------------------------

Aliases: `None`

Description
***********

Convert "datetime" fields to "timestamp" to use timezones.


glpi:migration:utf8mb4
----------------------

Aliases: `None`

Description
***********

Convert database character set from "utf8" to "utf8mb4".


glpi:plugin:activate
--------------------

Aliases: `plugin:activate`

Description
***********

Activate plugin(s)


glpi:plugin:deactivate
----------------------

Aliases: `plugin:deactivate`

Description
***********

Deactivate plugin(s)


glpi:plugin:install
-------------------

Aliases: `plugin:install`

Description
***********

Run plugin(s) installation script

Usage
*****

 - glpi:plugin:install -p foo=bar -p force myplugin

glpi:rules:process_software_category_rules
------------------------------------------

Aliases: `rules:process_software_category_rules`

Description
***********

Process software category rules


glpi:rules:replay_dictionnary_rules
-----------------------------------

Aliases: `rules:replay_dictionnary_rules`

Description
***********

Replay dictionnary rules on existing items


glpi:security:change_key
------------------------

Aliases: `None`

Description
***********

Change password storage key and update values in database.


glpi:system:check_requirements
------------------------------

Aliases: `system:check_requirements`

Description
***********

Check system requirements


glpi:system:list_services
-------------------------

Aliases: `system:list_services`

Description
***********

List system services


glpi:system:status
------------------

Aliases: `system:status`

Description
***********

Check system status


glpi:task:unlock
----------------

Aliases: `task:unlock`

Description
***********

Unlock automatic tasks


glpi:tools:check_database_keys
------------------------------

Aliases: `tools:check_database_keys`

Description
***********

Check database for missing and errounous keys.


glpi:tools:check_database_schema_consistency
--------------------------------------------

Aliases: `tools:check_database_schema_consistency`

Description
***********

Check database schema consistency.


glpi:tools:delete_orphan_logs
-----------------------------

Aliases: `tools:delete_orphan_logs`

Description
***********

Delete orphan logs