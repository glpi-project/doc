Ce menu vous permet de :

.. |checkVersion| image:: images/checkVersion.png

Check for new GLPI updates
--------------------------

If the "Check for updates" authorization is granted in your profile, a |checkVersion| button appears. It allows you to check if you have the latest stable version of GLPI

Back up or restore the database
-------------------------------

It is possible to backup the database in SQL or XML directly in GLPI and restore this backup later.

.. hint:: It is recommended to use SQL format.

The list of backups appears when at least one backup has been performed. It is then possible to delete a previously made backup, to restore the database from the backup or to download the backup to save ut externaly.

.. warning:: the restore overwrites all changes made between the backup date and the restore date.

.. figure:: images/maintenance.png
   :alt: GLPI maintenance
   :align: center

   GLPI maintenance

.. note:: the different buttons appear according to the authorization granted in profile.

.. hint:: It is highly recommended to use an external tool, such as ``mysqldump``, to make scheduled external backups and to store these backups on external media.

To perform a complete backup of GLPI, it is essential to back up all GLPI files. GLPI files are located in the installation directory on the web server and contain the database backup files created from the `Administration> Maintenance` menu, as well as all the documents added in GLPI (associated with tickets, equipment, contracts, etc.).

.. hint:: If GLPI is installed in a ``glpi`` directory, then this directory is the directory to be completely backed up.
