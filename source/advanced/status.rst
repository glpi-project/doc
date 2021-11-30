GLPI Status Monitoring
----------------------

GLPI contains a helpful endpoint for monitoring its health at `/status.php` and the `glpi:system:status` CLI command.
The `/status.php` endpoint does not require you to be logged in and therefore only shows basic status information.
Sensitive information like the GLPI version and plugin names and versions (could be used to identify vulerabilities) are not shown.
The difference with the CLI command though is that since it isn't accessible from the web, you can optionally retrieve private information too.

Services
~~~~~~~~

The status of GLPI is separated into multiple "services". These services can be listed using the `glpi:system:list_services` CLI command.

A non exhaustive list of services available:
 - db - Database (Main and replicants)
 - cas - Central Authentication Server
 - ldap - LDAP/Active Directory
 - imap - Email Server(s)
 - mail_collectors - Email collectors
 - crontasks - Automatic actions
 - filesystem - Filesystem access
 - plugins - Plugins status

Status Endpoint
~~~~~~~~~~~~~~~

By default, the `/status.php` endpoint provides a plain-text output of the public status information.
The plain-text output is deprecated in favor of the JSON format, but it remains the default for backwards compatibility.

The following formats are currently supported and can be chosen by using the HTTP Accept header or the `format` query parameter.
When using the `format` parameter, the short format identifier should be used.
 - JSON

   - HTTP Accept - application/json
   - Format parameter - json
 - Plain-text (deprectated)

   - HTTP Accept - text/plain
   - Format parameter - plain

You can filter the output to a specific service using the `service` query parameter.

CLI Command
~~~~~~~~~~~

Similar to the `/status.php` endpoint, the CLI command `glpi:system:status` only shows the public status information by default.
However, since this tool is not available from the web interface, you may add the `-p` or `--private` option to see all of the status information.

By default, it uses the plain-text format for its output for backwards compatibility, but this is deprecated.
The same formats are supported as listed above in the "Status Endpoint" section and the short identifier can be passed in the `-f` or `--format` option.

You can filter the output to a specific service using the `-s` or `--service` option.
