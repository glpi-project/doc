My Data
-------

How do I put an existing database on GLPI Network Cloud?
********************************************************

In order to use an existing database to the GLPI Network Cloud, you will have to export your database and your files folder and request an import.

.. note::

   An automatic import tool is under development.
   Meanwhile, we can import your archive manually (GLPI database and "files" folder). After selecting your option, do not hesitate to contact us from your customer area https://myaccount.glpi-network.cloud/

.. warning::

   Any specific information and plugins are not covered by the selected option and will not be imported.

Using command line
^^^^^^^^^^^^^^^^^^

Once connected in CLI on your server hosting your database, run the following commands:

.. code-block:: shell

   $ mysqldump -u myuser -p myglpibase > mydump.sql
   $ tar -czf mydump.sql.tar.gz mydump.sql
   $ tar -czf myfiles.tar.gz /path/to/glpi/files

Using graphical tool
^^^^^^^^^^^^^^^^^^^^

If you are not comfortable with command lines, you can use a graphical tool to build your dump.

.. note::

   We strongly recommend usage of `HeidiSQL <https://www.heidisql.com/>`_, that is known to work as expected.

   Following steps assumes you use that tool.

* Connect HediSQL to your database
* Once connected to your database, right click on it.
* Click on Export database to SQL


In the export tool, make sure that only your database is selected and:

* Check `Create in Table(s)`
* Choose `INSERT in Data`
* Choose `.sql file compressed as ZIP` in the Destination
* Name your file and click on Export

Using other tools
^^^^^^^^^^^^^^^^^

There are plenty of tools that permit SQL database exports; but several of them can cause issues! Please prefer using command line or HeidiSQL.

.. warning::

   Some tools are known to **not work as expected**:

   * `PHPMyAdmin` will most of the time produce incomplete dumps, with syntax errors, changed undesired variable, etc.
   * `Maintenance menu of GLPI` is an outdated tool that has been removed from new versions, please avoid using it.
   * `Powershell` will most of the time produce dumps with non-standard encoding.

How can I retrieve my data if I want to cancel my GLPI Network Cloud offer?
***************************************************************************

.. note::

   This only applies if you are currently the customer of paid GLPI Network Cloud offer (outside of your test period) and wish to download your data after terminate the service.

Following your download request via `the appropriate form <https://portal.glpi-network.com/plugins/formcreator/front/formdisplay.php?id=39>`_.

Teclib' will return all your data with no additional cost, in a common format (in PDF, SQL, or ZIP) within 30 calendar days (maximum) after we receive the request.

You will be provided:

* the data stored in the various databases of the hosted environments;
* (if exists) the list and content of tickets opened in the Teclib´ support space;
* (if exists) PDF documents written by Teclib´ as part of service that you could have ordered.