GLPI command-line interface
===========================

GLPI includes a CLI tool to help you to manage your GLPI instance.
This interface is provided by the `bin/console` script which can be run from the root of your GLPI directory.

Each command may have zero or more arguments or options.
Arguments are positional pieces of information while options are not and are prefixed by one or two hyphens

glpi:assets:cleansoftware
-------------------------

Aliases: `assets:cleansoftware`

Description
***********

Remove software versions with no installation and software with no version

Arguments/Options
****************

There are no arguments for this command

Options:

- ``-m``, ``--max`` (required) - Max items to handle in one execution (default = 500)


glpi:build:compile_scss
-----------------------

Aliases: `build:compile_scss`

Description
***********

Compile SCSS file.

Arguments/Options
****************

There are no arguments for this command

Options:

- ``-f``, ``--file`` - File to compile (compile all SCSS files by default) (no default)
- ``--dry-run`` - Simulate compilation without actually save compiled CSS files (no default)


glpi:cache:clear
----------------

Aliases: `cache:clear, glpi:system:clear_cache, system:clear_cache`

Description
***********

Clear GLPI cache.

Arguments/Options
****************

There are no arguments for this command

Options:

- ``-c``, ``--context`` (required) - Cache context to clear (i.e. 'core' or 'plugin:plugin_name'). All contexts are cleared by default. (no default)


glpi:cache:clear
----------------

Aliases: `cache:clear, glpi:system:clear_cache, system:clear_cache`

Description
***********

Clear GLPI cache.

Arguments/Options
****************

There are no arguments for this command

Options:

- ``-c``, ``--context`` (required) - Cache context to clear (i.e. 'core' or 'plugin:plugin_name'). All contexts are cleared by default. (no default)


glpi:cache:configure
--------------------

Aliases: `cache:configure`

Description
***********

Define cache configuration

Arguments/Options
****************

There are no arguments for this command

Options:

- ``--context`` (required) - Cache context (i.e. 'core' or 'plugin:plugin_name') (default = core)
- ``--dsn`` (required) - Cache system DSN (no default)
- ``--use-default`` - Unset cache configuration to use default filesystem cache for given context (no default)
- ``--skip-connection-checks`` - Skip connection checks (no default)

Help
****

Valid cache systems are: <comment>Memcached</comment>, <comment>Redis (TCP)</comment>, <comment>Redis (TLS)</comment>.

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

Arguments/Options
****************

There are no arguments for this command

Options:

- ``-k``, ``--key`` (required) - Cache key to debug. (no default)
- ``-c``, ``--context`` (required) - Cache context to clear (i.e. 'core' or 'plugin:plugin_name'). (default = core)


glpi:cache:set_namespace_prefix
-------------------------------

Aliases: `cache:set_namespace_prefix`

Description
***********

Define cache namespace prefix

Arguments/Options
****************

Arguments (in order):

- ``prefix`` (required) - Namespace prefix (no default)

There are no options for this command


glpi:config:set
---------------

Aliases: `config:set`

Description
***********

Set configuration value

Arguments/Options
****************

Arguments (in order):

- ``key`` (required) - Configuration key (no default)
- ``value`` (required) - Configuration value (ommit argument to be prompted for value) (no default)

Options:

- ``-c``, ``--context`` (required) - Configuration context (default = core)


glpi:database:check_schema_integrity
------------------------------------

Aliases: `db:check_schema_integrity, glpi:database:check, db:check`

Description
***********

Check for schema differences between current database and installation file.

Arguments/Options
****************

There are no arguments for this command

Options:

- ``--strict`` - Strict comparison of definitions (no default)
- ``--ignore-innodb-migration`` - Do not check tokens related to migration from "MyISAM" to "InnoDB". (no default)
- ``--ignore-timestamps-migration`` - Do not check tokens related to migration from "datetime" to "timestamp". (no default)
- ``--ignore-utf8mb4-migration`` - Do not check tokens related to migration from "utf8" to "utf8mb4". (no default)
- ``--ignore-dynamic-row-format-migration`` - Do not check tokens related to "DYNAMIC" row format migration. (no default)


glpi:database:check_schema_integrity
------------------------------------

Aliases: `db:check_schema_integrity, glpi:database:check, db:check`

Description
***********

Check for schema differences between current database and installation file.

Arguments/Options
****************

There are no arguments for this command

Options:

- ``--strict`` - Strict comparison of definitions (no default)
- ``--ignore-innodb-migration`` - Do not check tokens related to migration from "MyISAM" to "InnoDB". (no default)
- ``--ignore-timestamps-migration`` - Do not check tokens related to migration from "datetime" to "timestamp". (no default)
- ``--ignore-utf8mb4-migration`` - Do not check tokens related to migration from "utf8" to "utf8mb4". (no default)
- ``--ignore-dynamic-row-format-migration`` - Do not check tokens related to "DYNAMIC" row format migration. (no default)


glpi:database:configure
-----------------------

Aliases: `db:configure`

Description
***********

Define database configuration

Arguments/Options
****************

There are no arguments for this command

Options:

- ``-H``, ``--db-host`` - Database host (default = localhost)
- ``-d``, ``--db-name`` (required) - Database name (no default)
- ``-p``, ``--db-password`` - Database password (will be prompted for value if option passed without value) (no default)
- ``-P``, ``--db-port`` - Database port (no default)
- ``-u``, ``--db-user`` (required) - Database user (no default)
- ``-r``, ``--reconfigure`` - Reconfigure database, override configuration file if it already exists (no default)
- ``--log-deprecation-warnings`` - Indicated if deprecation warnings sent by database server should be logged (no default)


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

Arguments/Options
****************

There are no arguments for this command

Options:

- ``-H``, ``--db-host`` - Database host (default = localhost)
- ``-d``, ``--db-name`` (required) - Database name (no default)
- ``-p``, ``--db-password`` - Database password (will be prompted for value if option passed without value) (no default)
- ``-P``, ``--db-port`` - Database port (no default)
- ``-u``, ``--db-user`` (required) - Database user (no default)
- ``-r``, ``--reconfigure`` - Reconfigure database, override configuration file if it already exists (no default)
- ``--log-deprecation-warnings`` - Indicated if deprecation warnings sent by database server should be logged (no default)
- ``-L``, ``--default-language`` - Default language of GLPI (default = en_GB)
- ``-f``, ``--force`` - Force execution of installation, overriding existing database (no default)
- ``--enable-telemetry`` - Allow usage statistics sending to Telemetry service (https://telemetry.glpi-project.org) (no default)
- ``--no-telemetry`` - Disallow usage statistics sending to Telemetry service (https://telemetry.glpi-project.org) (no default)


glpi:database:update
--------------------

Aliases: `db:update`

Description
***********

Update database schema to new version

Arguments/Options
****************

There are no arguments for this command

Options:

- ``-u``, ``--allow-unstable`` - Allow update to an unstable version (no default)
- ``-f``, ``--force`` - Force execution of update from v-1 version of GLPI even if schema did not changed (no default)
- ``--enable-telemetry`` - Allow usage statistics sending to Telemetry service (https://telemetry.glpi-project.org) (no default)
- ``--no-telemetry`` - Disallow usage statistics sending to Telemetry service (https://telemetry.glpi-project.org) (no default)


glpi:ldap:synchronize_users
---------------------------

Aliases: `ldap:sync`

Description
***********

Synchronize users against LDAP server information

Arguments/Options
****************

There are no arguments for this command

Options:

- ``-c``, ``--only-create-new`` - Only create new users (no default)
- ``-u``, ``--only-update-existing`` - Only update existing users (no default)
- ``-s``, ``--ldap-server-id`` - Synchronize only users attached to this LDAP server (no default)
- ``-f``, ``--ldap-filter`` - Filter to apply on LDAP search (no default)
- ``--begin-date`` - Begin date to apply in "modifyTimestamp" filter (see http://php.net/manual/en/datetime.formats.php for supported formats) (no default)
- ``--end-date`` - End date to apply in "modifyTimestamp" filter (see http://php.net/manual/en/datetime.formats.php for supported formats) (no default)
- ``-d``, ``--deleted-user-strategy`` - Force strategy used for deleted users (current configured action: "1")
Possible values are:
- 0: Preserve
- 1: Put in trashbin
- 2: Withdraw dynamic authorizations and groups
- 3: Disable
- 4: Disable + Withdraw dynamic authorizations and groups (no default)
- ``-r``, ``--restored-user-strategy`` - Force strategy used for restored users (current configured action: "1")
Possible values are:
- 0: Do nothing
- 1: Restore (move out of trashbin)
- 3: Enable (no default)


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

Arguments/Options
****************

There are no arguments for this command

Options:

- ``-t``, ``--text`` - Text to display during maintenance (no default)


glpi:migration:appliances_plugin_to_core
----------------------------------------

Aliases: `None`

Description
***********

Migrate Appliances plugin data into GLPI core tables

Arguments/Options
****************

There are no arguments for this command

Options:

- ``-s``, ``--skip-errors`` - Do not exit on import errors (no default)


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

Arguments/Options
****************

There are no arguments for this command

Options:

- ``-u``, ``--update-plugin`` - Run Domains plugin update (you need version 2.1.0 files to do this) (no default)
- ``-w``, ``--without-plugin`` - Enable migration without plugin files (we cannot validate that plugin data are compatible with supported 2.1.0 version) (no default)


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

Arguments/Options
****************

There are no arguments for this command

Options:

- ``-i``, ``--ignore-other-elements`` - Ignore "PluginRacksOther" models and elements (no default)
- ``-s``, ``--skip-errors`` - Do not exit on import errors (no default)
- ``-t``, ``--truncate`` - Remove existing core data (no default)
- ``-u``, ``--update-plugin`` - Run Racks plugin update (you need version 1.8.0 files to do this) (no default)
- ``-w``, ``--without-plugin`` - Enable migration without plugin files (we cannot validate that plugin data are compatible with supported 1.8.0 version) (no default)


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

Arguments/Options
****************

Arguments (in order):

- ``directory`` - Plugin directory (no default)

Options:

- ``-a``, ``--all`` - Run command on all plugins (no default)


glpi:plugin:deactivate
----------------------

Aliases: `plugin:deactivate`

Description
***********

Deactivate plugin(s)

Arguments/Options
****************

Arguments (in order):

- ``directory`` - Plugin directory (no default)

Options:

- ``-a``, ``--all`` - Run command on all plugins (no default)


glpi:plugin:install
-------------------

Aliases: `plugin:install`

Description
***********

Run plugin(s) installation script

Arguments/Options
****************

Arguments (in order):

- ``directory`` - Plugin directory (no default)

Options:

- ``-a``, ``--all`` - Run command on all plugins (no default)
- ``-p``, ``--param`` - Additionnal parameters to pass to the plugin install hook function
"-p foo" will set "foo" param value to true
"-p foo=bar" will set "foo" param value to "bar"
 (no default)
- ``-u``, ``--username`` (required) - Name of user used during installation script (among other things to set plugin admin rights) (no default)
- ``-f``, ``--force`` - Force execution of installation, even if plugin is already installed (no default)

Usage
*****

 - glpi:plugin:install -p foo=bar -p force myplugin

glpi:rules:process_software_category_rules
------------------------------------------

Aliases: `rules:process_software_category_rules`

Description
***********

Process software category rules

Arguments/Options
****************

There are no arguments for this command

Options:

- ``-a``, ``--all`` - Process rule for all software, even those having already a defined category (no default)


glpi:rules:replay_dictionnary_rules
-----------------------------------

Aliases: `rules:replay_dictionnary_rules`

Description
***********

Replay dictionnary rules on existing items

Arguments/Options
****************

There are no arguments for this command

Options:

- ``-d``, ``--dictionnary`` (required) - Dictionnary to use. Possible values are: CableType, ComputerModel, ComputerType, DatabaseInstanceType, Glpi\SocketModel, ImageFormat, ImageResolution, Manufacturer, MonitorModel, MonitorType, NetworkEquipmentModel, NetworkEquipmentType, OperatingSystem, OperatingSystemArchitecture, OperatingSystemEdition, OperatingSystemKernel, OperatingSystemKernelVersion, OperatingSystemServicePack, OperatingSystemVersion, PeripheralModel, PeripheralType, PhoneModel, PhoneType, Printer, PrinterModel, PrinterType, Software (no default)
- ``-m``, ``--manufacturer-id`` (required) - If option is set, only items having given manufacturer ID will be processed.
Currently only available for Software dictionnary. (no default)


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

Arguments/Options
****************

There are no arguments for this command

Options:

- ``-f``, ``--format`` - Output format [plain or json] (default = plain)
- ``-p``, ``--private`` - Status information publicity. Private status information may contain potentially sensitive information such as version information. (no default)
- ``-s``, ``--service`` - The service to check or all (default = all)


glpi:task:unlock
----------------

Aliases: `task:unlock`

Description
***********

Unlock automatic tasks

Arguments/Options
****************

There are no arguments for this command

Options:

- ``-a``, ``--all`` - Unlock all tasks (no default)
- ``-c``, ``--cycle`` - Execution time (in cycles) from which the task is considered as stuck (delay = task frequency * cycle) (no default)
- ``-d``, ``--delay`` - Execution time (in seconds) from which the task is considered as stuck (default: 1800) (no default)
- ``-t``, ``--task`` - Itemtype::name of task to unlock (e.g: "MailCollector::mailgate") (no default)


glpi:tools:check_database_keys
------------------------------

Aliases: `tools:check_database_keys`

Description
***********

Check database for missing and errounous keys.

Arguments/Options
****************

There are no arguments for this command

Options:

- ``--detect-misnamed-keys`` - Detect misnamed keys (no default)
- ``--detect-useless-keys`` - Detect misnamed keys (no default)


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

Arguments/Options
****************

There are no arguments for this command

Options:

- ``--dry-run`` - Simulate the command without actually delete anything (no default)