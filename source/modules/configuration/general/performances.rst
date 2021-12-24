Performances
============

Displays information related to the different caching systems used by GLPI including:

- PHP opcode cache - Improves performance of the PHP engine when interpreting the different PHP files.
- User data cache - General-purpose cache used by GLPI.
- Translation cache - Cache used for translations to avoid having to read the locale files for all translations.

You also have the ability to clear the different caches from here.

The cache systems for user data and translations can be changed or configured from the `cache:configure` CLI command.