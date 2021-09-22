How-to apply patches
--------------------

The support team has just given you a patch to fix your ticket.

This documentation is here to explain how-to deal with it !

What is a patch
****************

A file patch is a set of changes (+/-) designed to update, fix, improve or remove lines in GLPI source code.

Here is an example of ``myPatch.patch``:

.. image:: mypatch.png

* The ``+`` informs that we add some code
* The ``-`` informs that we remove some code

With a patch file
*****************

Service support give you a file, the extension can be ``patch`` or ``diff``, like ``myPatch.patch``.

You can now :ref:`apply your patch file <apply_patch>`.

With a commit number
********************

Service support give you this a commit, like ``adc9876``

First, you need to retrieve changes from commit. Go to ``https://github.com/glpi-project/glpi/commit/COMMIT_NUMBER.patch`` like https://github.com/glpi-project/glpi/commit/adc9876.patch

.. image:: gh_patch.png

Save the page from your browser, and name it for example ``myPatch.patch``.

You can now :ref:`apply your commit patch <apply_patch>`.

With a pull request number
**************************

Service support give you a :abbr:`Pull Request <PR>` number, like ``4770``.

First, you need to retrieve changes from PR. Go to ``https://github.com/glpi-project/glpi/pull/PR_NUMBER.patch`` like https://github.com/glpi-project/glpi/pull/4770.patch

.. image:: gh_pr_patch.png

Save the page from your browser, and name it for example ``myPatch.patch``.

You can now :ref:`apply your PR patch <apply_patch>`.

.. _apply_patch:

Apply patch
***********

.. note::

   You must have the ``patch`` binary installed. To make sure, try:

   .. code-block:: shell

      $ patch --version
      GNU patch 2.7.6
      Copyright (C) 2003, 2009-2012 Free Software Foundation, Inc.
      Copyright (C) 1988 Larry Wall

      License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
      This is free software: you are free to change and redistribute it.
      There is NO WARRANTY, to the extent permitted by law.

      Written by Larry Wall and Paul Eggert

   If it is not installed, you'll see something like:

   .. code-block:: shell

      $ patch --version
      command not found: patch

   In that last case, install it using one of the following commands (or see your distribution documentation):

   .. code-block:: shell

      $ sudo apt-get install patch #for Ubuntu/Debian
      $ sudo yum install patch #for CentOS/Oracle Linux/RHEL

Move the previously created file to the root folder of GLPI or related plugin if you're patching a plugin.

Go to the GLPI/plugin root folder (adapt to your path):

.. code-block:: shell

   $ cd /var/www/html/glpi/

or

.. code-block:: shell

   $ cd /var/www/html/glpi/marketplace/myplugin


You should test the patch before applying it; usign the ``--dry-run`` parameter:

.. code-block:: shell

   $ patch -p1 --dry-run < myPatch.patch

Patch test success
^^^^^^^^^^^^^^^^^^

In case of a success you should see something like:

.. code-block:: shell

   patching file inc/config.class.php

or even:

.. code-block:: shell

   patching file inc/config.class.php
   Hunk #1 succeeded at 891 with fuzz 1 (offset 23 lines).
   Hunk #2 succeeded at 1301 with fuzz 2 (offset 41 lines).

You can now apply the patch for real with same command but without ``--dry-run`` parameter:

.. code-block::

   $ patch -p1 < myPatch.patch

Patch is then successfully applied, you can test the fix/feature and give us feedback.

Patch test failed!
^^^^^^^^^^^^^^^^^^

In case of an error you should see something like:

.. code-block:: shell

   patching file inc/config.class.php
   Hunk #1 FAILED at 400.
   1 out of 1 hunk FAILED -- saving rejects to file inc/config.class.php.rej

There are many reasons applying a patch can fail:

* Your version of GLPI is different from the version used for the patch
* Files that must be modified by the patch has already been previously patched (even on your side, or on repository one).

In that case, contact support and explain your problem; including screenshots, GLPI version, commands used, etc.