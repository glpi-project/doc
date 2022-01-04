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
*****************

There are no arguments for this command

Options:

====  ========  ====================================  ========  =======  =====  =========
Name  Shortcut  Description                           Required  Default  Array  Negatable
----  --------  ------------------------------------  --------  -------  -----  ---------
max   m         Max items to handle in one execution  Yes       500      No     No
====  ========  ====================================  ========  =======  =====  =========


glpi:build:compile_scss
-----------------------

Aliases: `build:compile_scss`

Description
***********

Compile SCSS file.

Arguments/Options
*****************

There are no arguments for this command

Options:

=======  ========  =============================================================  ========  =======  =====  =========
Name     Shortcut  Description                                                    Required  Default  Array  Negatable
-------  --------  -------------------------------------------------------------  --------  -------  -----  ---------
file     f         File to compile (compile all SCSS files by default)            No        []       Yes    Yes
dry-run            Simulate compilation without actually save compiled CSS files  No                 No     No
=======  ========  =============================================================  ========  =======  =====  =========


glpi:cache:clear
----------------

Aliases: `cache:clear, glpi:system:clear_cache, system:clear_cache`

Description
***********

Clear GLPI cache.

Arguments/Options
*****************

There are no arguments for this command

Options:

=======  ========  ==================================================================================================  ========  =======  =====  =========
Name     Shortcut  Description                                                                                         Required  Default  Array  Negatable
-------  --------  --------------------------------------------------------------------------------------------------  --------  -------  -----  ---------
context  c         Cache context to clear (i.e. 'core' or 'plugin:plugin_name'). All contexts are cleared by default.  Yes       []       Yes    No
=======  ========  ==================================================================================================  ========  =======  =====  =========


glpi:cache:configure
--------------------

Aliases: `cache:configure`

Description
***********

Define cache configuration

Arguments/Options
*****************

There are no arguments for this command

Options:

======================  ========  ===========================================================================  ========  =======  =====  =========
Name                    Shortcut  Description                                                                  Required  Default  Array  Negatable
----------------------  --------  ---------------------------------------------------------------------------  --------  -------  -----  ---------
context                           Cache context (i.e. 'core' or 'plugin:plugin_name')                          Yes       core     No     No
dsn                               Cache system DSN                                                             Yes       []       Yes    No
use-default                       Unset cache configuration to use default filesystem cache for given context  No                 No     No
skip-connection-checks            Skip connection checks                                                       No                 No     No
======================  ========  ===========================================================================  ========  =======  =====  =========

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
*****************

There are no arguments for this command

Options:

=======  ========  =============================================================  ========  =======  =====  =========
Name     Shortcut  Description                                                    Required  Default  Array  Negatable
-------  --------  -------------------------------------------------------------  --------  -------  -----  ---------
key      k         Cache key to debug.                                            Yes       []       Yes    No
context  c         Cache context to clear (i.e. 'core' or 'plugin:plugin_name').  Yes       core     No     No
=======  ========  =============================================================  ========  =======  =====  =========


glpi:cache:set_namespace_prefix
-------------------------------

Aliases: `cache:set_namespace_prefix`

Description
***********

Define cache namespace prefix

Arguments/Options
*****************

Arguments (in order):

======  ================  ========  =======
Name    Description       Required  Default
------  ----------------  --------  -------
prefix  Namespace prefix  Yes
======  ================  ========  =======

There are no options for this command


glpi:config:set
---------------

Aliases: `config:set`

Description
***********

Set configuration value

Arguments/Options
*****************

Arguments (in order):

=====  =============================================================  ========  =======
Name   Description                                                    Required  Default
-----  -------------------------------------------------------------  --------  -------
key    Configuration key                                              Yes
value  Configuration value (ommit argument to be prompted for value)  Yes
=====  =============================================================  ========  =======

Options:

=======  ========  =====================  ========  =======  =====  =========
Name     Shortcut  Description            Required  Default  Array  Negatable
-------  --------  ---------------------  --------  -------  -----  ---------
context  c         Configuration context  Yes       core     No     No
=======  ========  =====================  ========  =======  =====  =========


glpi:database:check_schema_integrity
------------------------------------

Aliases: `db:check_schema_integrity, glpi:database:check, db:check`

Description
***********

Check for schema differences between current database and installation file.

Arguments/Options
*****************

There are no arguments for this command

Options:

===================================  ========  ========================================================================  ========  =======  =====  =========
Name                                 Shortcut  Description                                                               Required  Default  Array  Negatable
-----------------------------------  --------  ------------------------------------------------------------------------  --------  -------  -----  ---------
strict                                         Strict comparison of definitions                                          No                 No     No
ignore-innodb-migration                        Do not check tokens related to migration from "MyISAM" to "InnoDB".       No                 No     No
ignore-timestamps-migration                    Do not check tokens related to migration from "datetime" to "timestamp".  No                 No     No
ignore-utf8mb4-migration                       Do not check tokens related to migration from "utf8" to "utf8mb4".        No                 No     No
ignore-dynamic-row-format-migration            Do not check tokens related to "DYNAMIC" row format migration.            No                 No     No
===================================  ========  ========================================================================  ========  =======  =====  =========


glpi:database:configure
-----------------------

Aliases: `db:configure`

Description
***********

Define database configuration

Arguments/Options
*****************

There are no arguments for this command

Options:

========================  ========  =============================================================================  ========  =========  =====  =========
Name                      Shortcut  Description                                                                    Required  Default    Array  Negatable
------------------------  --------  -----------------------------------------------------------------------------  --------  ---------  -----  ---------
db-host                   H         Database host                                                                  No        localhost  No     Yes
db-name                   d         Database name                                                                  Yes                  No     No
db-password               p         Database password (will be prompted for value if option passed without value)  No                   No     Yes
db-port                   P         Database port                                                                  No                   No     Yes
db-user                   u         Database user                                                                  Yes                  No     No
reconfigure               r         Reconfigure database, override configuration file if it already exists         No                   No     No
log-deprecation-warnings            Indicated if deprecation warnings sent by database server should be logged     No                   No     No
========================  ========  =============================================================================  ========  =========  =====  =========


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
*****************

There are no arguments for this command

Options:

========================  ========  ===========================================================================================  ========  =========  =====  =========
Name                      Shortcut  Description                                                                                  Required  Default    Array  Negatable
------------------------  --------  -------------------------------------------------------------------------------------------  --------  ---------  -----  ---------
db-host                   H         Database host                                                                                No        localhost  No     Yes
db-name                   d         Database name                                                                                Yes                  No     No
db-password               p         Database password (will be prompted for value if option passed without value)                No                   No     Yes
db-port                   P         Database port                                                                                No                   No     Yes
db-user                   u         Database user                                                                                Yes                  No     No
reconfigure               r         Reconfigure database, override configuration file if it already exists                       No                   No     No
log-deprecation-warnings            Indicated if deprecation warnings sent by database server should be logged                   No                   No     No
default-language          L         Default language of GLPI                                                                     No        en_GB      No     Yes
force                     f         Force execution of installation, overriding existing database                                No                   No     No
enable-telemetry                    Allow usage statistics sending to Telemetry service (https://telemetry.glpi-project.org)     No                   No     No
no-telemetry                        Disallow usage statistics sending to Telemetry service (https://telemetry.glpi-project.org)  No                   No     No
========================  ========  ===========================================================================================  ========  =========  =====  =========


glpi:database:update
--------------------

Aliases: `db:update`

Description
***********

Update database schema to new version

Arguments/Options
*****************

There are no arguments for this command

Options:

================  ========  ===========================================================================================  ========  =======  =====  =========
Name              Shortcut  Description                                                                                  Required  Default  Array  Negatable
----------------  --------  -------------------------------------------------------------------------------------------  --------  -------  -----  ---------
allow-unstable    u         Allow update to an unstable version                                                          No                 No     No
force             f         Force execution of update from v-1 version of GLPI even if schema did not changed            No                 No     No
enable-telemetry            Allow usage statistics sending to Telemetry service (https://telemetry.glpi-project.org)     No                 No     No
no-telemetry                Disallow usage statistics sending to Telemetry service (https://telemetry.glpi-project.org)  No                 No     No
================  ========  ===========================================================================================  ========  =======  =====  =========


glpi:ldap:synchronize_users
---------------------------

Aliases: `ldap:sync`

Description
***********

Synchronize users against LDAP server information

Arguments/Options
*****************

There are no arguments for this command

Options:

======================  ========  =====================================================================================================================================================================================================================================================  ========  =======  =====  =========
Name                    Shortcut  Description                                                                                                                                                                                                                                            Required  Default  Array  Negatable
----------------------  --------  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  --------  -------  -----  ---------
only-create-new         c         Only create new users                                                                                                                                                                                                                                  No                 No     No
only-update-existing    u         Only update existing users                                                                                                                                                                                                                             No                 No     No
ldap-server-id          s         Synchronize only users attached to this LDAP server                                                                                                                                                                                                    No        []       Yes    Yes
ldap-filter             f         Filter to apply on LDAP search                                                                                                                                                                                                                         No                 No     Yes
begin-date                        Begin date to apply in "modifyTimestamp" filter (see http://php.net/manual/en/datetime.formats.php for supported formats)                                                                                                                              No                 No     Yes
end-date                          End date to apply in "modifyTimestamp" filter (see http://php.net/manual/en/datetime.formats.php for supported formats)                                                                                                                                No                 No     Yes
deleted-user-strategy   d         Force strategy used for deleted users (current configured action: "1")
Possible values are:
- 0: Preserve
- 1: Put in trashbin
- 2: Withdraw dynamic authorizations and groups
- 3: Disable
- 4: Disable + Withdraw dynamic authorizations and groups  No                 No     Yes
restored-user-strategy  r         Force strategy used for restored users (current configured action: "0")
Possible values are:
- 0: Do nothing
- 1: Restore (move out of trashbin)
- 3: Enable                                                                                           No                 No     Yes
======================  ========  =====================================================================================================================================================================================================================================================  ========  =======  =====  =========


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
*****************

There are no arguments for this command

Options:

====  ========  ==================================  ========  =======  =====  =========
Name  Shortcut  Description                         Required  Default  Array  Negatable
----  --------  ----------------------------------  --------  -------  -----  ---------
text  t         Text to display during maintenance  No                 No     Yes
====  ========  ==================================  ========  =======  =====  =========


glpi:migration:appliances_plugin_to_core
----------------------------------------

Aliases: `None`

Description
***********

Migrate Appliances plugin data into GLPI core tables

Arguments/Options
*****************

There are no arguments for this command

Options:

===========  ========  ============================  ========  =======  =====  =========
Name         Shortcut  Description                   Required  Default  Array  Negatable
-----------  --------  ----------------------------  --------  -------  -----  ---------
skip-errors  s         Do not exit on import errors  No                 No     No
===========  ========  ============================  ========  =======  =====  =========


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
*****************

There are no arguments for this command

Options:

==============  ========  =======================================================================================================================  ========  =======  =====  =========
Name            Shortcut  Description                                                                                                              Required  Default  Array  Negatable
--------------  --------  -----------------------------------------------------------------------------------------------------------------------  --------  -------  -----  ---------
update-plugin   u         Run Domains plugin update (you need version 2.1.0 files to do this)                                                      No                 No     No
without-plugin  w         Enable migration without plugin files (we cannot validate that plugin data are compatible with supported 2.1.0 version)  No                 No     No
==============  ========  =======================================================================================================================  ========  =======  =====  =========


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
*****************

There are no arguments for this command

Options:

=====================  ========  =======================================================================================================================  ========  =======  =====  =========
Name                   Shortcut  Description                                                                                                              Required  Default  Array  Negatable
---------------------  --------  -----------------------------------------------------------------------------------------------------------------------  --------  -------  -----  ---------
ignore-other-elements  i         Ignore "PluginRacksOther" models and elements                                                                            No                 No     No
skip-errors            s         Do not exit on import errors                                                                                             No                 No     No
truncate               t         Remove existing core data                                                                                                No                 No     No
update-plugin          u         Run Racks plugin update (you need version 1.8.0 files to do this)                                                        No                 No     No
without-plugin         w         Enable migration without plugin files (we cannot validate that plugin data are compatible with supported 1.8.0 version)  No                 No     No
=====================  ========  =======================================================================================================================  ========  =======  =====  =========


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
*****************

Arguments (in order):

=========  ================  ========  =======
Name       Description       Required  Default
---------  ----------------  --------  -------
directory  Plugin directory  No        []
=========  ================  ========  =======

Options:

====  ========  ==========================  ========  =======  =====  =========
Name  Shortcut  Description                 Required  Default  Array  Negatable
----  --------  --------------------------  --------  -------  -----  ---------
all   a         Run command on all plugins  No                 No     No
====  ========  ==========================  ========  =======  =====  =========


glpi:plugin:deactivate
----------------------

Aliases: `plugin:deactivate`

Description
***********

Deactivate plugin(s)

Arguments/Options
*****************

Arguments (in order):

=========  ================  ========  =======
Name       Description       Required  Default
---------  ----------------  --------  -------
directory  Plugin directory  No        []
=========  ================  ========  =======

Options:

====  ========  ==========================  ========  =======  =====  =========
Name  Shortcut  Description                 Required  Default  Array  Negatable
----  --------  --------------------------  --------  -------  -----  ---------
all   a         Run command on all plugins  No                 No     No
====  ========  ==========================  ========  =======  =====  =========


glpi:plugin:install
-------------------

Aliases: `plugin:install`

Description
***********

Run plugin(s) installation script

Arguments/Options
*****************

Arguments (in order):

=========  ================  ========  =======
Name       Description       Required  Default
---------  ----------------  --------  -------
directory  Plugin directory  No        []
=========  ================  ========  =======

Options:

========  ========  ================================================================================================================================================================  ========  =======  =====  =========
Name      Shortcut  Description                                                                                                                                                       Required  Default  Array  Negatable
--------  --------  ----------------------------------------------------------------------------------------------------------------------------------------------------------------  --------  -------  -----  ---------
all       a         Run command on all plugins                                                                                                                                        No                 No     No
param     p         Additionnal parameters to pass to the plugin install hook function
"-p foo" will set "foo" param value to true
"-p foo=bar" will set "foo" param value to "bar"
  No        []       Yes    Yes
username  u         Name of user used during installation script (among other things to set plugin admin rights)                                                                      Yes                No     No
force     f         Force execution of installation, even if plugin is already installed                                                                                              No                 No     No
========  ========  ================================================================================================================================================================  ========  =======  =====  =========

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
*****************

There are no arguments for this command

Options:

====  ========  ===========================================================================  ========  =======  =====  =========
Name  Shortcut  Description                                                                  Required  Default  Array  Negatable
----  --------  ---------------------------------------------------------------------------  --------  -------  -----  ---------
all   a         Process rule for all software, even those having already a defined category  No                 No     No
====  ========  ===========================================================================  ========  =======  =====  =========


glpi:rules:replay_dictionnary_rules
-----------------------------------

Aliases: `rules:replay_dictionnary_rules`

Description
***********

Replay dictionnary rules on existing items

Arguments/Options
*****************

There are no arguments for this command

Options:

===============  ========  ================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================  ========  =======  =====  =========
Name             Shortcut  Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       Required  Default  Array  Negatable
---------------  --------  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  --------  -------  -----  ---------
dictionnary      d         Dictionnary to use. Possible values are: CableType, ComputerModel, ComputerType, DatabaseInstanceType, Glpi\SocketModel, ImageFormat, ImageResolution, Manufacturer, MonitorModel, MonitorType, NetworkEquipmentModel, NetworkEquipmentType, OperatingSystem, OperatingSystemArchitecture, OperatingSystemEdition, OperatingSystemKernel, OperatingSystemKernelVersion, OperatingSystemServicePack, OperatingSystemVersion, PeripheralModel, PeripheralType, PhoneModel, PhoneType, Printer, PrinterModel, PrinterType, Software  Yes                No     No
manufacturer-id  m         If option is set, only items having given manufacturer ID will be processed.
Currently only available for Software dictionnary.                                                                                                                                                                                                                                                                                                                                                                                                   Yes                No     No
===============  ========  ================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================  ========  =======  =====  =========


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
*****************

There are no arguments for this command

Options:

=======  ========  ===================================================================================================================================  ========  =======  =====  =========
Name     Shortcut  Description                                                                                                                          Required  Default  Array  Negatable
-------  --------  -----------------------------------------------------------------------------------------------------------------------------------  --------  -------  -----  ---------
format   f         Output format [plain or json]                                                                                                        No        plain    No     Yes
private  p         Status information publicity. Private status information may contain potentially sensitive information such as version information.  No                 No     No
service  s         The service to check or all                                                                                                          No        all      No     Yes
=======  ========  ===================================================================================================================================  ========  =======  =====  =========


glpi:task:unlock
----------------

Aliases: `task:unlock`

Description
***********

Unlock automatic tasks

Arguments/Options
*****************

There are no arguments for this command

Options:

=====  ========  ======================================================================================================  ========  =======  =====  =========
Name   Shortcut  Description                                                                                             Required  Default  Array  Negatable
-----  --------  ------------------------------------------------------------------------------------------------------  --------  -------  -----  ---------
all    a         Unlock all tasks                                                                                        No                 No     No
cycle  c         Execution time (in cycles) from which the task is considered as stuck (delay = task frequency * cycle)  No                 No     Yes
delay  d         Execution time (in seconds) from which the task is considered as stuck (default: 1800)                  No                 No     Yes
task   t         Itemtype::name of task to unlock (e.g: "MailCollector::mailgate")                                       No        []       Yes    Yes
=====  ========  ======================================================================================================  ========  =======  =====  =========


glpi:tools:check_database_keys
------------------------------

Aliases: `tools:check_database_keys`

Description
***********

Check database for missing and errounous keys.

Arguments/Options
*****************

There are no arguments for this command

Options:

====================  ========  ====================  ========  =======  =====  =========
Name                  Shortcut  Description           Required  Default  Array  Negatable
--------------------  --------  --------------------  --------  -------  -----  ---------
detect-misnamed-keys            Detect misnamed keys  No                 No     No
detect-useless-keys             Detect misnamed keys  No                 No     No
====================  ========  ====================  ========  =======  =====  =========


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
*****************

There are no arguments for this command

Options:

=======  ========  =====================================================  ========  =======  =====  =========
Name     Shortcut  Description                                            Required  Default  Array  Negatable
-------  --------  -----------------------------------------------------  --------  -------  -----  ---------
dry-run            Simulate the command without actually delete anything  No                 No     No
=======  ========  =====================================================  ========  =======  =====  =========


