API
===

API configuration parameters and access limitations.

Here you can see/set the URL for the API.
This should match your GLPI URL with `/apirest.php` at the end.

There is also a link for the API documentation.

Authentication
--------------

There two methods of logging in to the API that can be individually enabled.
- Credentials - Allows the use of a user's login and password
- External token - Allows the use of a personal token which can be found on the user's personal page (Only visible to them)

You can also manage the registered API clients from this tab.
Each client is comprised of a name, a logging method (historical, logs, or none) and an application token at least.
You may also configure an IP range to limit access to specific clients.