Override GLPI locales
---------------------

GLPI uses `gettext` tool to manage its translations. You can override the default.
This is the preferred method rather editing the original po files and avoid losing your changes when updating GLPI.

To do so, you need to create a file named `filename.po` in the `files/_locales` directory.
Depending on your GLPI configuration, the _locales directory can be located elsewhere (if you provided a `local_define.php` file with a `GLPI_LOCALES_DIR` constant).
It's possible to have multiple files, to manage several languages for example.

The file must be a valid `gettext` file. You can use `Poedit <https://poedit.net/>`_ to create it.

.. code-block:: po

    # Override PO file
    #
    msgid ""
    msgstr ""
    "Project-Id-Version: PACKAGE VERSION\n"
    "Report-Msgid-Bugs-To: \n"
    "POT-Creation-Date: 2019-04-13 10:43+0200\n"
    "PO-Revision-Date: 2019-04-13 10:43+0200\n"
    "Last-Translator: Automatically generated\n"
    "Language-Team: none\n"
    "Language: en_GB\n"
    "MIME-Version: 1.0\n"
    "Content-Type: text/plain; charset=UTF-8\n"
    "Content-Transfer-Encoding: 8bit\n"
    "Plural-Forms: nplurals=2; plural=(n != 1);\n"

    msgid "Login"
    msgstr "Login from local gettext"

Next you need to compile your .po file into a .mo file readable by GLPI. To do so, you can use the following command:

.. code-block:: bash

    $ cd files/_locales
    $ msgfmt -o filename.mo filename.po

Finally, GLPI uses a cache system to avoid loading the .mo files at each request. You need to clear the cache to see your changes.
To do so, go to "Setup > General", "Performance" tab and click on "Reset" button on the "Translation cache" section.
