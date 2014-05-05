Web Server Prerequisites
========================

Characteristics of the web server needed to run GLPI.

Web Server
----------

GLPI requires a web server supports PHP, such as :

-   Apache 2 or higher
    ([http://httpd.apache.org](http://httpd.apache.org))
-   Microsoft IIS ([http://www.iis.net](http://www.iis.net)).

PHP
---

GLPI requires PHP version 5.3 or above
([http://www.php.net](http://www.php.net)).

Required PHP extensions
-----------------------

The following PHP extensions are necessary for the proper functioning of
the application :

-   JSON : format support JSON structured data
-   Mbstring : chain management of multi-byte character
-   MySQL : connection with the database
-   Session : Session support users

PHP extensions optional but recommended
---------------------------------------

The following extensions are required for optional features of the
application :

-   CLI : Using PHP from the command line for automatic actions
-   CURL : CAS for authentication
-   DOMXML : CAS for authentication
-   GD : Image generation
-   IMAP : mail servers use to collect the tickets or user
    authentication
-   LDAP : use of an external directory for authentication
-   OpenSSL : encrypted communication

PHP Configuration
-----------------

The php configuration file (*php.ini*) should be amended to contain the
following variables :

~~~~ {.codeblock}
memory_limit = 64M ; // Minimum Value
file_uploads = on ;
max_execution_time = 600 ; // Optional but not mandatory
register_globals = off ;  // Optional but not mandatory
magic_quotes_sybase = off ;
session.auto_start = off ;
session.use_trans_sid = 0 ; // Optional but not mandatory
~~~~

**Parent topic:**
[Prerequisites](../glpi/prerequisite.html "Prerequisites for installing GLPI.")
