Maintenance
===========

.. |checkVersion| image:: images/checkVersion.png

This tab allows to:

* check the availability of GLPI updates
* backup/restore GLPI database

Check for new GLPI updates
--------------------------

If the "Check for updates" authorization is granted in your profile, a |checkVersion| button appears. It allows you to check if you have the latest stable version of GLPI

.. figure:: images/maintenance.png
   :alt: GLPI maintenance
   :align: center

   GLPI maintenance

.. note:: the different buttons appear according to the authorization granted in profile.

.. hint:: It is highly recommended to use an external tool, such as ``mysqldump``, to make scheduled external backups and to store these backups on external media.

To perform a complete backup of GLPI, it is essential to back up all GLPI files. GLPI files are located in the installation directory on the web server and contain the database backup files created from the `Administration> Maintenance` menu, as well as all the documents added in GLPI (associated with tickets, asset, contracts, etc.).

.. hint:: If GLPI is installed in a ``glpi`` directory, then this directory is the directory to be completely backed up.
